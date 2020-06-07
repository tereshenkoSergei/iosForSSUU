package main.help;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy=AboveZeroValidator.class)
public  @interface AboveZeroConstraint {


    String message() default "Отрицательное\\u0020значение";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}

