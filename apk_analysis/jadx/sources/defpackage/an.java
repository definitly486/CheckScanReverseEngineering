package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemProductsAnonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class an extends vd9<cn, ItemProductsAnonBinding> {
    public final b b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductsAnonBinding> {
        public static final a c = new a(3, ItemProductsAnonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductsAnonBinding;", 0);

        @Override // defpackage.dm3
        public final ItemProductsAnonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemProductsAnonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onAnonDisclaimerClicked();
    }

    public an(b bVar) {
        super(a.c);
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof cn;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, cn cnVar) {
        ((ItemProductsAnonBinding) viewBinding).getClass();
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemProductsAnonBinding itemProductsAnonBinding = (ItemProductsAnonBinding) viewBinding;
        itemProductsAnonBinding.getClass();
        LinearLayout root = itemProductsAnonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new bn(this, 0)));
    }
}
