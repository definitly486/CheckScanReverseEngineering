package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvCouponsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class d42 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvCouponsBinding> {
    public static final d42 c = new d42(3, ItemRvCouponsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvCouponsBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvCouponsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvCouponsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
