package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemsRvShopsHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class gv7 extends vd9<hv7, ItemsRvShopsHeaderBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemsRvShopsHeaderBinding> {
        public static final a c = new a(3, ItemsRvShopsHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemsRvShopsHeaderBinding;", 0);

        @Override // defpackage.dm3
        public final ItemsRvShopsHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemsRvShopsHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public gv7() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof hv7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, hv7 hv7Var) {
        ItemsRvShopsHeaderBinding itemsRvShopsHeaderBinding = (ItemsRvShopsHeaderBinding) viewBinding;
        itemsRvShopsHeaderBinding.getClass();
        itemsRvShopsHeaderBinding.tvPromocodes.setText(hv7Var.a);
    }
}
