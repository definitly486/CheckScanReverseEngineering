package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.subscriptionLanding.databinding.ItemLandingTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jk4 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemLandingTitleBinding> {
    public static final jk4 c = new jk4(3, ItemLandingTitleBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTitleBinding;", 0);

    @Override // defpackage.dm3
    public final ItemLandingTitleBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemLandingTitleBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
