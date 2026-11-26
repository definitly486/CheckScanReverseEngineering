package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemChequeProductBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sh6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemChequeProductBinding> {
    public static final sh6 c = new sh6(3, ItemChequeProductBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemChequeProductBinding;", 0);

    @Override // defpackage.dm3
    public final ItemChequeProductBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemChequeProductBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
