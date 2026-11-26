package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvButtonBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nv0 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvButtonBinding> {
    public static final nv0 c = new nv0(3, ItemRvButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvButtonBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
