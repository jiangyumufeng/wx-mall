package com.jiangyf.api.controller.login;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin/login")
@Validated
public class AdminLoginController {
    private final Log logger = LogFactory.getLog(AdminLoginController.class);


}
