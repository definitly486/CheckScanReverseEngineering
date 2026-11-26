package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemSpecialVerticalBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class j58 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSpecialVerticalBinding> {
    public static final j58 c = new j58(3, ItemSpecialVerticalBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemSpecialVerticalBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSpecialVerticalBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSpecialVerticalBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
