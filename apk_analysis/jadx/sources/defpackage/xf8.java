package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportSectionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class xf8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportSectionBinding> {
    public static final xf8 c = new xf8(3, ItemSupportSectionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportSectionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportSectionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportSectionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
