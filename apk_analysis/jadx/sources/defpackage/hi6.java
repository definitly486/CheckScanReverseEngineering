package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemProductShopBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class hi6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductShopBinding> {
    public static final hi6 c = new hi6(3, ItemProductShopBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductShopBinding;", 0);

    @Override // defpackage.dm3
    public final ItemProductShopBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemProductShopBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
