package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskBadgeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class pl8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskBadgeBinding> {
    public static final pl8 c = new pl8(3, ItemRvTaskBadgeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBadgeBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvTaskBadgeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvTaskBadgeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
