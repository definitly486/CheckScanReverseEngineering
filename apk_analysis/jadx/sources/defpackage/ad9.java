package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.core.ui.databinding.ItemRvVerticalSpaceBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ad9 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvVerticalSpaceBinding> {
    public static final ad9 c = new ad9(3, ItemRvVerticalSpaceBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/core/ui/databinding/ItemRvVerticalSpaceBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvVerticalSpaceBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvVerticalSpaceBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
