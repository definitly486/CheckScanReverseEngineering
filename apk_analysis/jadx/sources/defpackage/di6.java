package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemProductPreviewBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class di6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductPreviewBinding> {
    public static final di6 c = new di6(3, ItemProductPreviewBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductPreviewBinding;", 0);

    @Override // defpackage.dm3
    public final ItemProductPreviewBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemProductPreviewBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
