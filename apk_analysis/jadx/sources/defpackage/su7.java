package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvLoaderShopItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class su7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLoaderShopItemBinding> {
    public static final su7 c = new su7(3, ItemRvLoaderShopItemBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLoaderShopItemBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLoaderShopItemBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLoaderShopItemBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
