package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvLandingOrdBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class fj4 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLandingOrdBinding> {
    public static final fj4 c = new fj4(3, ItemRvLandingOrdBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLandingOrdBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvLandingOrdBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvLandingOrdBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
