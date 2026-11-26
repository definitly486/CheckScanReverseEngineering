package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvMultiTaskCounterBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qf5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvMultiTaskCounterBinding> {
    public static final qf5 c = new qf5(3, ItemRvMultiTaskCounterBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskCounterBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvMultiTaskCounterBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvMultiTaskCounterBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
