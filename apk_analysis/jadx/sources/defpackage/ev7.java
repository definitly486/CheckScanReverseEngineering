package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.LayoutNoDiscountsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ev7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, LayoutNoDiscountsBinding> {
    public static final ev7 c = new ev7(3, LayoutNoDiscountsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutNoDiscountsBinding;", 0);

    @Override // defpackage.dm3
    public final LayoutNoDiscountsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return LayoutNoDiscountsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
