package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.auth.databinding.ItemRvAuthAgreementBinding;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nb extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvAuthAgreementBinding> {
    public static final nb c = new nb(3, ItemRvAuthAgreementBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/auth/databinding/ItemRvAuthAgreementBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvAuthAgreementBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvAuthAgreementBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
