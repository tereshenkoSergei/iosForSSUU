package main.controller;

import main.domain.Message;
import main.domain.Dialog;
import main.domain.users.User;
import main.repos.DialogRepo;
import main.repos.MessageRepo;
import main.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
@RequestMapping("/chat")
public class MessageController {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private DialogRepo dialogRepo;

    @Autowired
    private MessageRepo messageRepo;

    Set<User> userSet = new LinkedHashSet<>();


    @GetMapping()
    public String chat(@AuthenticationPrincipal User user, Model model) {
        model.addAttribute("user", user);


        model.addAttribute("dialogs", user.getDialogList());

        return "chats/chat1";
    }

    @GetMapping("/createNewChat")
    public String createNewChat(@AuthenticationPrincipal User user, Model model) {
        userSet.add(user);

        model.addAttribute("users", userRepo.findAll());
        model.addAttribute("userset", userSet);


        return "chats/createChat";
    }


    @GetMapping("/adduser")
    public String adduser(@AuthenticationPrincipal User currentUser,
                          @RequestParam String userName, Model model) {


        userSet.add(currentUser);
        userSet.add(userRepo.findByUsername(userName));

        userRepo.saveAll(userSet);

        model.addAttribute("users", userRepo.findAll());
        model.addAttribute("userset", userSet);

        return "chats/createChat";
    }


    @GetMapping("/createdialog")
    public String createDialog() {

        Dialog dialog = new Dialog();
        //dialog.getUserList().addAll(userSet);
        userSet.forEach(u -> u.addDialog(dialog));
        userRepo.saveAll(userSet);
        dialogRepo.save(dialog);

        return "redirect:/chat";
    }

    @GetMapping("{dialog}")
    public String dialogItem(@PathVariable Dialog dialog, Model model, @AuthenticationPrincipal User user) {
        System.out.println(dialog.toString());
        model.addAttribute("dialog", dialog);
        model.addAttribute("dialogId", dialog.getId());
        model.addAttribute("thisUserName", user.getUsername());
        return "chats/dialog1";

    }

    @PostMapping("/sendMessage")
    public String sendMessage(@RequestParam Long dialogId,
                              @RequestParam String messageText,
                              @AuthenticationPrincipal User user,
                              Model model) {

        Optional<Dialog> dialog = dialogRepo.findById(dialogId);
        Message message = new Message(messageText, "", user, dialog.get());

        model.addAttribute("dialog", dialog.get());
        model.addAttribute("dialogId", dialog.get().getId());

        dialog.get().addMessage(message);

        dialogRepo.save(dialog.get());
        messageRepo.save(message);


        return "redirect:/chat/" + dialog.get().getId().toString();
    }
}
