package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemRvDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ft5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvDescriptionBinding> {
    public static final ft5 c = new ft5(3, ItemRvDescriptionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvDescriptionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemRvDescriptionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemRvDescriptionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
