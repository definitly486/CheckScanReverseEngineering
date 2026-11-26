package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.profile.databinding.ItemRvProfileHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class el6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvProfileHeaderBinding> {
    public static final el6 c = new el6(3, ItemRvProfileHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvProfileHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvProfileHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
