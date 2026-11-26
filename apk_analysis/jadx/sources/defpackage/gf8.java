package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportQuestionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class gf8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportQuestionBinding> {
    public static final gf8 c = new gf8(3, ItemSupportQuestionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportQuestionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportQuestionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
