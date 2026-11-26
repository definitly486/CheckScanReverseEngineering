package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemSelectionPromoBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sp6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSelectionPromoBinding> {
    public static final sp6 c = new sp6(3, ItemSelectionPromoBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemSelectionPromoBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSelectionPromoBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSelectionPromoBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
