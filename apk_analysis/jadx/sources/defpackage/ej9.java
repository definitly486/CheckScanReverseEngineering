package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemWithdrawalCardInfoBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ej9 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalCardInfoBinding> {
    public static final ej9 c = new ej9(3, ItemWithdrawalCardInfoBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalCardInfoBinding;", 0);

    @Override // defpackage.dm3
    public final ItemWithdrawalCardInfoBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemWithdrawalCardInfoBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
