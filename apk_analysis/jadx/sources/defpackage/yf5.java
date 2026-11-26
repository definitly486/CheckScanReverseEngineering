package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvMultiTaskStepBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class yf5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvMultiTaskStepBinding> {
    public static final yf5 c = new yf5(3, ItemRvMultiTaskStepBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskStepBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvMultiTaskStepBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvMultiTaskStepBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
