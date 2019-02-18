package ku.shop;

public class OrderItem {
    private int quantity;
    private Product prod;

    public OrderItem(Product prod, int quantity) {
        if (quantity <= 0 || prod.getStock() < quantity)
            this.quantity = 0;
        else this.quantity = quantity;

        this.prod = prod;
    }

    public double getSubtotal() {
        return prod.getPrice() * quantity;
    }

    public int getInventory() {
        return prod.getStock() - quantity;
    }

    public Product getProd() {
        return prod;
    }

}
