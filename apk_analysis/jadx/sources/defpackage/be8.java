package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportChildTextBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class be8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportChildTextBinding> {
    public static final be8 c = new be8(3, ItemSupportChildTextBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportChildTextBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportChildTextBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportChildTextBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
