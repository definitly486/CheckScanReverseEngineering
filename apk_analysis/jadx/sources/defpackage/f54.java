package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.shared.infoBottomSheet.databinding.ItemInfoTextBlockBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class f54 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemInfoTextBlockBinding> {
    public static final f54 c = new f54(3, ItemInfoTextBlockBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoTextBlockBinding;", 0);

    @Override // defpackage.dm3
    public final ItemInfoTextBlockBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemInfoTextBlockBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
