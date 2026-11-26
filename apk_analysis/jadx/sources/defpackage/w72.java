package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvDailyTaskDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class w72 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvDailyTaskDescriptionBinding> {
    public static final w72 c = new w72(3, ItemRvDailyTaskDescriptionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvDailyTaskDescriptionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvDailyTaskDescriptionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvDailyTaskDescriptionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
