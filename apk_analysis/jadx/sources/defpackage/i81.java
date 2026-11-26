package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemCategoryInChequeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class i81 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemCategoryInChequeBinding> {
    public static final i81 c = new i81(3, ItemCategoryInChequeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;", 0);

    @Override // defpackage.dm3
    public final ItemCategoryInChequeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemCategoryInChequeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
