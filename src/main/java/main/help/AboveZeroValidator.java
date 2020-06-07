package main.help;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class AboveZeroValidator implements
        ConstraintValidator<AboveZeroConstraint, Integer> {


    @Override
    public boolean isValid
            (Integer value, ConstraintValidatorContext constraintValidatorContext) {

        return value > 0;


    }
}
