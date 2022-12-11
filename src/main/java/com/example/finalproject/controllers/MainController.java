package com.example.finalproject.controllers;

import com.example.finalproject.models.Order;
import com.example.finalproject.repositories.OrderRepository;
import com.example.finalproject.repositories.ProductRepository;
import com.example.finalproject.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product")
public class MainController {

    private final ProductRepository productRepository;
    private final ProductService productService;

    private final OrderRepository orderRepository;

    @Autowired
    public MainController(ProductRepository productRepository, ProductService productService, OrderRepository orderRepository) {
        this.productRepository = productRepository;
        this.productService = productService;
        this.orderRepository = orderRepository;
    }

    // Данный метод предназначен для отображении товаров без прохождения аутентификации и авторизации
    @GetMapping("")
    public String getAllProduct(Model model) {
        model.addAttribute("products", productService.getAllProduct());
        return "product/product";
    }

    @GetMapping("/info/{id}")
    public String infoProduct(@PathVariable("id") int id, Model model) {
        model.addAttribute("product", productService.getProductId(id));
        return "product/infoProduct";
    }


//    @PostMapping("/search")
//    public String productSearch(@RequestParam("search") String search, @RequestParam("ot") String ot, @RequestParam("do") String Do, @RequestParam(value = "price", required = false, defaultValue = "") String price, @RequestParam(value = "category", required = false, defaultValue = "") String category, Model model){
//        System.out.println(search);
//        System.out.println(ot);
//        System.out.println(Do);
//        System.out.println(price);
//        System.out.println(category);
//        // Если диапазон цен от и до не пустой
//        if(!ot.isEmpty() & !Do.isEmpty()) {
//            // Если сортировка по цене выбрана
//            if (!price.isEmpty()) {
//                // Если в качестве сортировки выбрана сортировкам по возрастанию
//                if (price.equals("sorted_by_ascending_price")) {
//                    // Если категория товара не пустая
//                    if (!category.isEmpty()) {
//                        // Если категория равная мебели
//                        if (category.equals("furniture")) {
//                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 1));
//                            // Если категория равная бытовой техники
//                        } else if (category.equals("appliances")) {
//                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 2));
//                            // Если категория равная одежде
//                        } else if (category.equals("clothes")) {
//                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 3));
//                        }
//                        // Если категория не выбрана
//                    } else {
//                        model.addAttribute("search_product", productRepository.findByTitleOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do)));
//                    }
//
//                    // Если в качестве сортировки выбрана сортировкам по убыванию
//                } else if (price.equals("sorted_by_descending_price")) {
//
//                    // Если категория не пустая
//                    if (!category.isEmpty()) {
//                        // Если категория равная мебели
//                        if (category.equals("furniture")) {
//                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 1));
//                            // Если категория равная бытовой техники
//                        } else if (category.equals("appliances")) {
//                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 2));
//                            // Если категория равная одежде
//                        } else if (category.equals("clothes")) {
//                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 3));
//                        }
//                        // Если категория не выбрана
//                    }
//                    else {
//                        model.addAttribute("search_product", productRepository.findByTitleOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do)));
//                    }
//                }
//            }
//            else {
//                model.addAttribute("search_product", productRepository.findByTitleAndPriceGreaterThanEqualAndPriceLessThan(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do)));
//            }
//        } else {
//            model.addAttribute("search_product",productRepository.findByTitleContainingIgnoreCase(search));
//        }
//        model.addAttribute("value_search", search);
//        model.addAttribute("value_price_ot", ot);
//        model.addAttribute("value_price_do", Do);
//        model.addAttribute("products", productService.getAllProduct());
//        return "/product/product";
//    }


    @PostMapping("/search")
    public String productSearch(@RequestParam("search") String search, @RequestParam("ot") String ot, @RequestParam("do") String Do, @RequestParam(value = "price", required = false, defaultValue = "") String price, @RequestParam(value = "category", required = false, defaultValue = "") String category, Model model) {
        System.out.println(search);
        System.out.println(ot);
        System.out.println(Do);
        System.out.println(price);
        System.out.println(category);
//        System.out.println(Float.parseFloat(ot));
//        System.out.println(Float.parseFloat(Do));
        // Если диапазон цен от и до не пустой
        if (!ot.isEmpty() & !Do.isEmpty()) {
            // Если сортировка по цене выбрана
            if (!price.isEmpty()) {
                // Если в качестве сортировки выбрана сортировкам по возрастанию
                if (price.equals("sorted_by_ascending_price")) {
                    // Если категория товара не пустая
                    if (!category.isEmpty()) {
                        // Если категория равная видеокарты
                        if (category.equals("videocards")) {
                            System.out.println("Сработал Else1");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 1));
                            // Если категория равная процессорам
                        } else if (category.equals("processors")) {
                            System.out.println("Сработал Else2");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 2));
                            // Если категория равная материнским платам
                        } else if (category.equals("motherboards")) {
                            System.out.println("Сработал Else3");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 3));
                        } else if (category.equals("memory")) {
                            System.out.println("Сработал Else4");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 4));
                        }
                        // Если категория не выбрана
                    } else {
                        System.out.println("Сработал Else5");
                        model.addAttribute("search_product", productRepository.findByTitleOrderByPrice(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do)));
                    }

                    // Если в качестве сортировки выбрана сортировкам по убыванию
                } else if (price.equals("sorted_by_descending_price")) {
                    System.out.println("Сработал Else6");
                    // Если категория не пустая
                    if (!category.isEmpty()) {
                        // Если категория равная видеокартам
                        System.out.println("Сработал Else7");
                        if (category.equals("videocards")) {
                            System.out.println("Сработал Else8");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 1));
                            // Если категория равная процессорам
                        } else if (category.equals("processors")) {
                            System.out.println("Сработал Else9");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 2));
                            // Если категория равная материнские платы
                        } else if (category.equals("motherboards")) {
                            System.out.println("Сработал Else10");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 3));
                        }
                        // Если категория равная оперативная память
                        else if (category.equals("memory")) {
                            System.out.println("Сработал Else11");
                            model.addAttribute("search_product", productRepository.findByTitleAndCategoryOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do), 4));
                        }
                        // Если категория не выбрана
                    } else {
                        System.out.println("Сработал Else12");
                        model.addAttribute("search_product", productRepository.findByTitleOrderByPriceDesc(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do)));
                    }
                }
            } else {
                System.out.println("Сработал Else13");
                model.addAttribute("search_product", productRepository.findByTitleAndPriceGreaterThanEqualAndPriceLessThan(search.toLowerCase(), Float.parseFloat(ot), Float.parseFloat(Do)));
            }
        }

        //Далее все условия с пустым диапазоном цен
        else if (!category.isEmpty()) {
            System.out.println("Сработал Else15");
            if (category.equals("videocards")) {
                model.addAttribute("search_product", productRepository.findByCategory_Id(1));
            } else if (category.equals("processors")) {
                model.addAttribute("search_product", productRepository.findByCategory_Id(2));
            } else if (category.equals("motherboards")) {
                model.addAttribute("search_product", productRepository.findByCategory_Id(3));
            } else if (category.equals("memory")) {
                model.addAttribute("search_product", productRepository.findByCategory_Id(4));
            }
        } else {
            System.out.println("Сработал Else14");
            model.addAttribute("search_product", productRepository.findByTitleContainingIgnoreCase(search));
        }

        model.addAttribute("value_search", search);
        model.addAttribute("value_price_ot", ot);
        model.addAttribute("value_price_do", Do);
//        model.addAttribute("products", productService.getAllProduct());
        return "/product/product";

    }
}