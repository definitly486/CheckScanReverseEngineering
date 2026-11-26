package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportChildImageBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class td8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportChildImageBinding> {
    public static final td8 c = new td8(3, ItemSupportChildImageBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportChildImageBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportChildImageBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportChildImageBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
