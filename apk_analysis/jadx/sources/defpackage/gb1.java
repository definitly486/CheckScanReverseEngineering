package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class gb1 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvCheckboxTaskHeaderBinding> {
    public static final gb1 c = new gb1(3, ItemRvCheckboxTaskHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskHeaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvCheckboxTaskHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvCheckboxTaskHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
