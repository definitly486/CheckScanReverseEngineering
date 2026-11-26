package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvBalanceCardLoadingBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q10 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvBalanceCardLoadingBinding> {
    public static final q10 c = new q10(3, ItemRvBalanceCardLoadingBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBalanceCardLoadingBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvBalanceCardLoadingBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvBalanceCardLoadingBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
