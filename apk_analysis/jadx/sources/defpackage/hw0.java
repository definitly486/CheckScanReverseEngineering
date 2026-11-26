package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderButtonsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class hw0 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLoaderButtonsBinding> {
    public static final hw0 c = new hw0(3, ItemRvLoaderButtonsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvLoaderButtonsBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLoaderButtonsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLoaderButtonsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
