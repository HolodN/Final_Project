package com.example.finalproject.controllers;

import com.example.finalproject.models.Image;
import com.example.finalproject.models.Person;
import com.example.finalproject.models.Product;
import com.example.finalproject.repositories.CategoryRepository;
import com.example.finalproject.repositories.OrderRepository;
import com.example.finalproject.security.PersonDetails;
import com.example.finalproject.services.OrderService;
import com.example.finalproject.services.PersonService;
import com.example.finalproject.services.ProductService;
import com.example.finalproject.util.ProductValidator;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
//@PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
public class AdminController {

    @Value("${upload.path}")
    private String uploadPath;

    private final ProductValidator productValidator;
    private final ProductService productService;

    private final CategoryRepository categoryRepository;

    private final OrderRepository orderRepository;

    private final OrderService orderService;

    private final PersonService personService;

    public AdminController(ProductValidator productValidator, ProductService productService, CategoryRepository categoryRepository, OrderRepository orderRepository, OrderService orderService, PersonService personService) {
        this.productValidator = productValidator;
        this.productService = productService;
        this.categoryRepository = categoryRepository;
        this.orderRepository = orderRepository;
        this.orderService = orderService;
        this.personService = personService;
    }

//    @PreAuthorize("hasRole('ROLE_ADMIN') and hasRole('')")
//@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('')")

    // Метод по отображению главной страницы администратора с выводом товаров
    @GetMapping()
    public String admin(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        PersonDetails personDetails = (PersonDetails) authentication.getPrincipal();

        String role = personDetails.getPerson().getRole();

        if(role.equals("ROLE_USER")){
            return "redirect:/index";
        }
        model.addAttribute("products", productService.getAllProduct());
        return "admin/admin";
    }

    // Метод по отображению формы добавление
    @GetMapping("/product/add")
    public String addProduct(Model model){
        model.addAttribute("product", new Product());
        model.addAttribute("category", categoryRepository.findAll());
//        System.out.println(categoryRepository.findAll().size());
        return "product/addProduct";
    }

    // Метод по добавлению объекта с формы в таблицу product
    @PostMapping("/product/add")
    public String addProduct(@ModelAttribute("product") @Valid Product product, BindingResult bindingResult, @RequestParam("file_one") MultipartFile file_one, @RequestParam("file_two") MultipartFile file_two, @RequestParam("file_three") MultipartFile file_three, @RequestParam("file_four") MultipartFile file_four, @RequestParam("file_five") MultipartFile file_five) throws IOException {

        productValidator.validate(product, bindingResult);
        if(bindingResult.hasErrors()){
            return "product/addProduct";
        }
        // Проверка на пустоту файла
        if(file_one != null){
            // Дирректория по сохранению файла
            File uploadDir = new File(uploadPath);
            // Если данной дирректории по пути не сущетсвует
            if(!uploadDir.exists()){
                // Создаем данную дирректорию
                uploadDir.mkdir();
            }
            // Создаем уникальное имя файла
            // UUID представляет неищменный универсальный уникальный идентификатор
            String uuidFile = UUID.randomUUID().toString();
            // file_one.getOriginalFilename() - наименование файла с формы
            String resultFileName = uuidFile + "." + file_one.getOriginalFilename();
            // Загружаем файл по указаннопу пути
            file_one.transferTo(new File(uploadPath + "/" + resultFileName));
            Image image = new Image();
            image.setProduct(product);
            image.setFileName(resultFileName);
            product.addImageProduct(image);
        }

        // Проверка на пустоту файла
        if(file_two != null){
            // Дирректория по сохранению файла
            File uploadDir = new File(uploadPath);
            // Если данной дирректории по пути не сущетсвует
            if(!uploadDir.exists()){
                // Создаем данную дирректорию
                uploadDir.mkdir();
            }
            // Создаем уникальное имя файла
            // UUID представляет неищменный универсальный уникальный идентификатор
            String uuidFile = UUID.randomUUID().toString();
            // file_one.getOriginalFilename() - наименование файла с формы
            String resultFileName = uuidFile + "." + file_two.getOriginalFilename();
            // Загружаем файл по указаннопу пути
            file_two.transferTo(new File(uploadPath + "/" + resultFileName));
            Image image = new Image();
            image.setProduct(product);
            image.setFileName(resultFileName);
            product.addImageProduct(image);
        }

        // Проверка на пустоту файла
        if(file_three != null){
            // Дирректория по сохранению файла
            File uploadDir = new File(uploadPath);
            // Если данной дирректории по пути не сущетсвует
            if(!uploadDir.exists()){
                // Создаем данную дирректорию
                uploadDir.mkdir();
            }
            // Создаем уникальное имя файла
            // UUID представляет неищменный универсальный уникальный идентификатор
            String uuidFile = UUID.randomUUID().toString();
            // file_one.getOriginalFilename() - наименование файла с формы
            String resultFileName = uuidFile + "." + file_three.getOriginalFilename();
            // Загружаем файл по указаннопу пути
            file_three.transferTo(new File(uploadPath + "/" + resultFileName));
            Image image = new Image();
            image.setProduct(product);
            image.setFileName(resultFileName);
            product.addImageProduct(image);
        }

        // Проверка на пустоту файла
        if(file_four != null){
            // Дирректория по сохранению файла
            File uploadDir = new File(uploadPath);
            // Если данной дирректории по пути не сущетсвует
            if(!uploadDir.exists()){
                // Создаем данную дирректорию
                uploadDir.mkdir();
            }
            // Создаем уникальное имя файла
            // UUID представляет неищменный универсальный уникальный идентификатор
            String uuidFile = UUID.randomUUID().toString();
            // file_one.getOriginalFilename() - наименование файла с формы
            String resultFileName = uuidFile + "." + file_four.getOriginalFilename();
            // Загружаем файл по указаннопу пути
            file_four.transferTo(new File(uploadPath + "/" + resultFileName));
            Image image = new Image();
            image.setProduct(product);
            image.setFileName(resultFileName);
            product.addImageProduct(image);
        }

        // Проверка на пустоту файла
        if(file_five != null){
            // Дирректория по сохранению файла
            File uploadDir = new File(uploadPath);
            // Если данной дирректории по пути не сущетсвует
            if(!uploadDir.exists()){
                // Создаем данную дирректорию
                uploadDir.mkdir();
            }
            // Создаем уникальное имя файла
            // UUID представляет неищменный универсальный уникальный идентификатор
            String uuidFile = UUID.randomUUID().toString();
            // file_one.getOriginalFilename() - наименование файла с формы
            String resultFileName = uuidFile + "." + file_five.getOriginalFilename();
            // Загружаем файл по указаннопу пути
            file_five.transferTo(new File(uploadPath + "/" + resultFileName));
            Image image = new Image();
            image.setProduct(product);
            image.setFileName(resultFileName);
            product.addImageProduct(image);
        }

        productService.saveProduct(product);
        return "redirect:/admin";
    }

    // Метод по удалению товара по id
    @GetMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable("id") int id){
        productService.deleteProduct(id);
        return "redirect:/admin";
    }

    // Метод по получению товара по id и отображение шаблона редактирования
    @GetMapping("/product/edit/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("editProduct", productService.getProductId(id));
        model.addAttribute("category", categoryRepository.findAll());
        return "product/editProduct";
    }

    @PostMapping("/product/edit/{id}")
    public String editProduct(@ModelAttribute("editProduct") Product product, @PathVariable("id") int id){
        productService.updateProduct(id, product);
        return "redirect:/admin";
    }

//   Метод возвращает список заказов
    @GetMapping("/orders")
    public String test(Model model){

//        List<Order> orderList = orderRepository.findAll();
//        model.addAttribute("orders", orderList);
          model.addAttribute("orders", orderService.getAllOrders());


        return "admin/orders";
    }
//  Метод по поиску заказов
    @PostMapping("/order_search")
    public String testResult (@RequestParam("test") String test, Model model){
        System.out.println(test);

        //Поиск по любым символам в номере заказа
        //List<Order> orderList = orderRepository.findByNumberContaining(test);
        //Поиск по последним символам в заказе
//        List<Order> orderList = orderRepository.findByLastFourSign(test);
//        model.addAttribute("search_order", orderList);
          model.addAttribute("search_order", orderService.getOrderByLastFourSign(test));

        return "admin/orders";
    }
    @GetMapping("/order/status/{id}")
    public String changeOrderStatus (@PathVariable("id") int id){

        System.out.println("Получен ID: " + id);

    return "redirect:/admin";
    };
//    Метод по изменению статуса заказа
    @GetMapping("/order/newstatus/{id}")
    public String changeNewOrderStatus (@PathVariable("id") int id, @RequestParam(value = "status") int status){
        System.out.println(id);
        System.out.println(status);
        if (status == 0){
            orderRepository.changeOrderStatusAccepted(id);
            }
            else if (status == 1) {
                orderRepository.changeOrderStatusIssued(id);
            }
                else if (status == 2) {
                    orderRepository.changeOrderStatusWaiting(id);
                }
                    else if (status == 3) {
                        orderRepository.changeOrderStatusReceived(id);
                    }
                        else {
                            orderRepository.changeOrderStatusCancelled(id);
                        }

        return "redirect:/admin/orders";
    }

    @GetMapping("/users")
    public String Users (Model model){

        model.addAttribute("users", personService.getAllUsers());

        return "admin/users";
    }

    @GetMapping("/users/role_user_up/{id}")
    public String changeNewUserStatus (@PathVariable("id") int id){
        System.out.println("Получен ID пользователеля: " + id);
        Person personRole = personService.getPersonId(id);
        personService.updateRoleUser(personRole);

        return "redirect:/admin/users";
    }

    @GetMapping("/users/role_admin_down/{id}")
    public String changeNewAdminStatus (@PathVariable("id") int id){
        System.out.println("Получен ID пользователеля: " + id);
        Person personRole = personService.getPersonId(id);
        personService.updateRoleAdmin(personRole);

        return "redirect:/admin/users";
    }

    @GetMapping("/users/role_super_down/{id}")
    public String changeNewSuperStatusDown (@PathVariable("id") int id){
        System.out.println("Получен ID пользователеля: " + id);
        Person personRole = personService.getPersonId(id);
        personService.updateRoleSuperDown(personRole);

        return "redirect:/admin/users";
    }

    @GetMapping("/users/role_super_up/{id}")
    public String changeNewSuperStatusUp (@PathVariable("id") int id){
        System.out.println("Получен ID пользователеля: " + id);
        Person personRole = personService.getPersonId(id);
        personService.updateRoleSuperUp(personRole);

        return "redirect:/admin/users";
    }

    @GetMapping("/users/role_power_down/{id}")
    public String changeNewPowerStatusDown (@PathVariable("id") int id){
        System.out.println("Получен ID пользователеля: " + id);
        Person personRole = personService.getPersonId(id);
        personService.updateRolePowerDown(personRole);

        return "redirect:/admin/users";
    }



}
