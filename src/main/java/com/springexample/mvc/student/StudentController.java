package com.springexample.mvc.student;

import com.springexample.domain.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping(value="/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") Long id, Model uiModel){
        System.out.println("In get");

        Student student = new Student();
        student.setId(id);
        student.setFirstName("Mike");
        student.setLastName("Kruger");

        uiModel.addAttribute("student", student);

        return "student/student";
    }

    @RequestMapping(value="/{id}", params="form", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model uiModel){
        System.out.println("In updateForm");

        Student student = new Student();
        student.setId(id);
        student.setFirstName("Mike");
        student.setLastName("Kruger");

        uiModel.addAttribute("student", student);

        return "student/edit";
    }

    @RequestMapping(value="/{id}", params="form", method = RequestMethod.POST)
    public String update(@PathVariable("id") Long id, Student student, BindingResult bindingResult, Model uiModel,
                         HttpServletRequest httpServletRequest, RedirectAttributes redirectAttributes, Locale locale){
        System.out.println("In update");
        System.out.println("Binding errors " + bindingResult.getErrorCount());

        uiModel.addAttribute("student", student);

        student.setId(student.getId() + 1l);

        return "redirect:/student/" + student.getId() + "?form";
    }
}
