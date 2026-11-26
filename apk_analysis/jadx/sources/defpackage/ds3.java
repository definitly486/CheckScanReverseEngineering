package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvGroupShopsVerticalBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ds3 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvGroupShopsVerticalBinding> {
    public static final ds3 c = new ds3(3, ItemRvGroupShopsVerticalBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvGroupShopsVerticalBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvGroupShopsVerticalBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
