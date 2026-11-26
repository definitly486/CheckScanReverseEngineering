package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemDecoratorBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class pa4 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemDecoratorBinding> {
    public static final pa4 c = new pa4(3, ItemDecoratorBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemDecoratorBinding;", 0);

    @Override // defpackage.dm3
    public final ItemDecoratorBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemDecoratorBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
