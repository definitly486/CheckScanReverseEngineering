package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.subscription.databinding.ItemActivatedSubscriptionBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemActivatedSubscriptionBannerBinding> {
    public static final a7 c = new a7(3, ItemActivatedSubscriptionBannerBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBannerBinding;", 0);

    @Override // defpackage.dm3
    public final ItemActivatedSubscriptionBannerBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemActivatedSubscriptionBannerBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
