package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvTitleBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ew8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTitleBinding> {
    public static final ew8 c = new ew8(3, ItemRvTitleBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvTitleBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvTitleBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
