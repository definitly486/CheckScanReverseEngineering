package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemMoreProductsButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qd5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemMoreProductsButtonBinding> {
    public static final qd5 c = new qd5(3, ItemMoreProductsButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemMoreProductsButtonBinding;", 0);

    @Override // defpackage.dm3
    public final ItemMoreProductsButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemMoreProductsButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
