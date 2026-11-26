package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemProductShopsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ki6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductShopsBinding> {
    public static final ki6 c = new ki6(3, ItemProductShopsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductShopsBinding;", 0);

    @Override // defpackage.dm3
    public final ItemProductShopsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemProductShopsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
