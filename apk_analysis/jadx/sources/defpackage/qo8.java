package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qo8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskTitleBinding> {
    public static final qo8 c = new qo8(3, ItemRvTaskTitleBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskTitleBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvTaskTitleBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvTaskTitleBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
