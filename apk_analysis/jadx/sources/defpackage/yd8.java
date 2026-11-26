package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportChildQuestionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class yd8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportChildQuestionBinding> {
    public static final yd8 c = new yd8(3, ItemSupportChildQuestionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportChildQuestionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportChildQuestionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportChildQuestionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
