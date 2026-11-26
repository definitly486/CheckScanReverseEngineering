package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemLandingButtonWithBackgroundBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class xh4 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemLandingButtonWithBackgroundBinding> {
    public static final xh4 c = new xh4(3, ItemLandingButtonWithBackgroundBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;", 0);

    @Override // defpackage.dm3
    public final ItemLandingButtonWithBackgroundBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemLandingButtonWithBackgroundBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
