package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemChequeOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class le1 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemChequeOperationBinding> {
    public static final le1 c = new le1(3, ItemChequeOperationBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemChequeOperationBinding;", 0);

    @Override // defpackage.dm3
    public final ItemChequeOperationBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemChequeOperationBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
