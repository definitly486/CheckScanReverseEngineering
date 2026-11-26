package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.profile.databinding.ItemRvProfileButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class wl6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvProfileButtonBinding> {
    public static final wl6 c = new wl6(3, ItemRvProfileButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvProfileButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvProfileButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
