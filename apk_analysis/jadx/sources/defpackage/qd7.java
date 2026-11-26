package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemInformerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qd7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemInformerBinding> {
    public static final qd7 c = new qd7(3, ItemInformerBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemInformerBinding;", 0);

    @Override // defpackage.dm3
    public final ItemInformerBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemInformerBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
