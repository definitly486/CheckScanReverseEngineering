package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskBannerLoadingBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class wl8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskBannerLoadingBinding> {
    public static final wl8 c = new wl8(3, ItemRvTaskBannerLoadingBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerLoadingBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvTaskBannerLoadingBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvTaskBannerLoadingBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
