package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.scannerml.databinding.ItemRvChequeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class oh1 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvChequeBinding> {
    public static final oh1 c = new oh1(3, ItemRvChequeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/scannerml/databinding/ItemRvChequeBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvChequeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvChequeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
