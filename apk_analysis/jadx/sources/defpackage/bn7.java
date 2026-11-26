package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemSelectionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bn7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSelectionBinding> {
    public static final bn7 c = new bn7(3, ItemSelectionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSelectionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSelectionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
