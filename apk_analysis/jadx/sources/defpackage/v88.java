package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemAdmitadRvStepBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class v88 extends vd9<la8, ItemAdmitadRvStepBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemAdmitadRvStepBinding> {
        public static final a c = new a(3, ItemAdmitadRvStepBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemAdmitadRvStepBinding;", 0);

        @Override // defpackage.dm3
        public final ItemAdmitadRvStepBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemAdmitadRvStepBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public v88() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof la8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, la8 la8Var) {
        ItemAdmitadRvStepBinding itemAdmitadRvStepBinding = (ItemAdmitadRvStepBinding) viewBinding;
        itemAdmitadRvStepBinding.getClass();
        itemAdmitadRvStepBinding.tvStep.setText(la8Var.a);
    }
}
