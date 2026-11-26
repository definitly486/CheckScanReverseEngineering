package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvNoLoaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sn5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvNoLoaderBinding> {
    public static final sn5 c = new sn5(3, ItemRvNoLoaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvNoLoaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvNoLoaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvNoLoaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
