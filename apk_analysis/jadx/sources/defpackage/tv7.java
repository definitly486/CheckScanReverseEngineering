package defpackage;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvShopCouponBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class tv7 extends vd9<nu7, ItemRvShopCouponBinding> {
    public final eu1 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvShopCouponBinding> {
        public static final a c = new a(3, ItemRvShopCouponBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvShopCouponBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvShopCouponBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvShopCouponBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public tv7(eu1 eu1Var) {
        super(a.c);
        this.b = eu1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof nu7;
    }

    @Override // defpackage.vd9
    public final void h(ViewBinding viewBinding) {
        ItemRvShopCouponBinding itemRvShopCouponBinding = (ItemRvShopCouponBinding) viewBinding;
        itemRvShopCouponBinding.getClass();
        itemRvShopCouponBinding.rvCoupons.setAdapter(this.b);
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, nu7 nu7Var) {
        ((ItemRvShopCouponBinding) viewBinding).getClass();
        Log.e("holderCHeckId", "ItemRvShopCouponBinding " + R.layout.item_rv_shop_coupon);
        this.b.submitList(nu7Var.a);
    }

    @Override // defpackage.vd9
    public final void k(ViewBinding viewBinding) {
        ItemRvShopCouponBinding itemRvShopCouponBinding = (ItemRvShopCouponBinding) viewBinding;
        itemRvShopCouponBinding.getClass();
        itemRvShopCouponBinding.rvCoupons.setAdapter(null);
    }
}
