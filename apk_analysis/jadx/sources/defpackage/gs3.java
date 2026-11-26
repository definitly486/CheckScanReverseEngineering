package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.bonuses.databinding.ItemRvLoaderGroupBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gs3 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLoaderGroupBinding> {
    public static final gs3 c = new gs3(3, ItemRvLoaderGroupBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvLoaderGroupBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLoaderGroupBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLoaderGroupBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
