package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.profile.databinding.ItemRvProfileOptionsListBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class cm6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvProfileOptionsListBinding> {
    public static final cm6 c = new cm6(3, ItemRvProfileOptionsListBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionsListBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvProfileOptionsListBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvProfileOptionsListBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
