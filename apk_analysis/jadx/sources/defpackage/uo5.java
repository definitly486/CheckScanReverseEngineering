package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemNotificationCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class uo5 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemNotificationCardBinding> {
    public static final uo5 c = new uo5(3, ItemNotificationCardBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemNotificationCardBinding;", 0);

    @Override // defpackage.dm3
    public final ItemNotificationCardBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemNotificationCardBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
