package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderSpecialBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m58 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLoaderSpecialBinding> {
    public static final m58 c = new m58(3, ItemRvLoaderSpecialBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvLoaderSpecialBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLoaderSpecialBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLoaderSpecialBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
