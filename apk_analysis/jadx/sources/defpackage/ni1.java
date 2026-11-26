package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemChipButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ni1 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemChipButtonBinding> {
    public static final ni1 c = new ni1(3, ItemChipButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemChipButtonBinding;", 0);

    @Override // defpackage.dm3
    public final ItemChipButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemChipButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
