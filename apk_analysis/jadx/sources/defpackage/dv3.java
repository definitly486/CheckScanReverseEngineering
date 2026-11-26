package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemHeaderRvSearchProductsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dv3 extends vd9<gv3, ItemHeaderRvSearchProductsBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemHeaderRvSearchProductsBinding> {
        public static final a c = new a(3, ItemHeaderRvSearchProductsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemHeaderRvSearchProductsBinding;", 0);

        @Override // defpackage.dm3
        public final ItemHeaderRvSearchProductsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemHeaderRvSearchProductsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dv3() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof gv3;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, gv3 gv3Var) {
        ((ItemHeaderRvSearchProductsBinding) viewBinding).getClass();
        throw null;
    }
}
