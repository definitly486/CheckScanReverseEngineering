package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderCategoriesBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class h71 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLoaderCategoriesBinding> {
    public static final h71 c = new h71(3, ItemRvLoaderCategoriesBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvLoaderCategoriesBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLoaderCategoriesBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLoaderCategoriesBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
