package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvMultiTaskHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vf5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvMultiTaskHeaderBinding> {
    public static final vf5 c = new vf5(3, ItemRvMultiTaskHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskHeaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvMultiTaskHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvMultiTaskHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
