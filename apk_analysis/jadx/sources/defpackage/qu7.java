package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.products.databinding.ItemShopHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qu7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemShopHeaderBinding> {
    public static final qu7 c = new qu7(3, ItemShopHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemShopHeaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemShopHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemShopHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
