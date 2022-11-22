package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance =new ProductRepository();
	
	public Product getProductById(String productId) {
		Product productById=null;
	
			for(int i=0;i<listOfProducts.size();i++) {
				Product product=listOfProducts.get(i);
				if(product!=null && product.getProductId()!=null && product.getProductId().equals(productId)) {
					productById=product;
					break;
				}
			}
			
			return productById;
	}
	
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	
	
	public ProductRepository() {
		Product phone=new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("iphone.png");
		
		Product nbook=new Product("P1235", "LG PC gram", 1500000);
		nbook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		nbook.setCategory("loptop");
		nbook.setManufacturer("Lg");
		nbook.setUnitsInStock(1000);
		nbook.setCondition("Refurbished");
		nbook.setFilename("gram.png");
		
		Product tablet=new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, OctaCore processor");
		tablet.setCategory("Tablet PC");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("used");
		tablet.setFilename("tab.jpeg");
		
		listOfProducts.add(phone);
		listOfProducts.add(nbook);
		listOfProducts.add(tablet);
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}

}
