package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.tasks.databinding.ItemWideBonusPointsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ph9 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWideBonusPointsBinding> {
    public static final ph9 c = new ph9(3, ItemWideBonusPointsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemWideBonusPointsBinding;", 0);

    @Override // defpackage.dm3
    public final ItemWideBonusPointsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemWideBonusPointsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
