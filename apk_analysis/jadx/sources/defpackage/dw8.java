package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemProductsTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dw8 extends vd9<kk6, ItemProductsTitleBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductsTitleBinding> {
        public static final a c = new a(3, ItemProductsTitleBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductsTitleBinding;", 0);

        @Override // defpackage.dm3
        public final ItemProductsTitleBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemProductsTitleBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dw8() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof kk6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, kk6 kk6Var) {
        ItemProductsTitleBinding itemProductsTitleBinding = (ItemProductsTitleBinding) viewBinding;
        itemProductsTitleBinding.getClass();
        itemProductsTitleBinding.tvTitle.setText(kk6Var.a);
    }
}
