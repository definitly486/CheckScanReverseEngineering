package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvTitleWithButtonBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ow8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTitleWithButtonBinding> {
    public static final ow8 c = new ow8(3, ItemRvTitleWithButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvTitleWithButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvTitleWithButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
