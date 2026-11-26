package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvBalanceHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class h30 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvBalanceHeaderBinding> {
    public static final h30 c = new h30(3, ItemRvBalanceHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBalanceHeaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvBalanceHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvBalanceHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
