package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvLandingTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class lk4 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLandingTitleBinding> {
    public static final lk4 c = new lk4(3, ItemRvLandingTitleBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLandingTitleBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLandingTitleBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLandingTitleBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
