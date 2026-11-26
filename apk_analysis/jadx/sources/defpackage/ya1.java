package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskCheckboxBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ya1 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvCheckboxTaskCheckboxBinding> {
    public static final ya1 c = new ya1(3, ItemRvCheckboxTaskCheckboxBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvCheckboxTaskCheckboxBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvCheckboxTaskCheckboxBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
