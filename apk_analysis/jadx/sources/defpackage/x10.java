package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvBalanceCardTextBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class x10 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvBalanceCardTextBinding> {
    public static final x10 c = new x10(3, ItemRvBalanceCardTextBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBalanceCardTextBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvBalanceCardTextBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvBalanceCardTextBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
