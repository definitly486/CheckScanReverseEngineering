package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.ItemInstructionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class u64 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemInstructionBinding> {
    public static final u64 c = new u64(3, ItemInstructionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemInstructionBinding;", 0);

    @Override // defpackage.dm3
    public final ItemInstructionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemInstructionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
