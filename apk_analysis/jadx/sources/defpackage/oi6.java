package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemProductTextBlockBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class oi6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductTextBlockBinding> {
    public static final oi6 c = new oi6(3, ItemProductTextBlockBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductTextBlockBinding;", 0);

    @Override // defpackage.dm3
    public final ItemProductTextBlockBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemProductTextBlockBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
