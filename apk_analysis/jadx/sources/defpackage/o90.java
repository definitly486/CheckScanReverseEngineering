package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvBankCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class o90 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvBankCardBinding> {
    public static final o90 c = new o90(3, ItemRvBankCardBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBankCardBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvBankCardBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvBankCardBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
