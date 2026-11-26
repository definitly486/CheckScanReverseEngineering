package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportChildButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class pd8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportChildButtonBinding> {
    public static final pd8 c = new pd8(3, ItemSupportChildButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportChildButtonBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportChildButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportChildButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
