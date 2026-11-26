package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemQuestionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vv6 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemQuestionBinding> {
    public static final vv6 c = new vv6(3, ItemQuestionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemQuestionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemQuestionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemQuestionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
