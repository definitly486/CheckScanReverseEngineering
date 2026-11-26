package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sl8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskBannerBinding> {
    public static final sl8 c = new sl8(3, ItemRvTaskBannerBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvTaskBannerBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvTaskBannerBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
