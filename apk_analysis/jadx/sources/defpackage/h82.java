package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvDailyTaskLoadingBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class h82 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvDailyTaskLoadingBinding> {
    public static final h82 c = new h82(3, ItemRvDailyTaskLoadingBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvDailyTaskLoadingBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvDailyTaskLoadingBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvDailyTaskLoadingBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
