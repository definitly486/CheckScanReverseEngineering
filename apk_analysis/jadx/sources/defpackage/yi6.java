package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemShopProductsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class yi6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemShopProductsBinding> {
    public static final yi6 c = new yi6(3, ItemShopProductsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemShopProductsBinding;", 0);

    @Override // defpackage.dm3
    public final ItemShopProductsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemShopProductsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
