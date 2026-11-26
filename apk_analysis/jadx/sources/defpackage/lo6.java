package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class lo6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvPromoSelectCardBinding> {
    public static final lo6 c = new lo6(3, ItemRvPromoSelectCardBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvPromoSelectCardBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvPromoSelectCardBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvPromoSelectCardBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
