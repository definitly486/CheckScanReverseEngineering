package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvLandingCheckboxBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ei4 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLandingCheckboxBinding> {
    public static final ei4 c = new ei4(3, ItemRvLandingCheckboxBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLandingCheckboxBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLandingCheckboxBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLandingCheckboxBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
