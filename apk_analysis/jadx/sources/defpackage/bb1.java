package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bb1 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvCheckboxTaskDescriptionBinding> {
    public static final bb1 c = new bb1(3, ItemRvCheckboxTaskDescriptionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskDescriptionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvCheckboxTaskDescriptionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvCheckboxTaskDescriptionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
