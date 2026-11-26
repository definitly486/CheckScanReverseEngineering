package defpackage;

import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvShopTopItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class zv7 extends vd9<xu7, ItemRvShopTopItemBinding> {
    public final xr0 b;

    public zv7(xr0 xr0Var) {
        super(yv7.c);
        this.b = xr0Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xu7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xu7 xu7Var) {
        ItemRvShopTopItemBinding itemRvShopTopItemBinding = (ItemRvShopTopItemBinding) viewBinding;
        itemRvShopTopItemBinding.getClass();
        LinearLayout root = itemRvShopTopItemBinding.getRoot();
        root.getClass();
        le9.c(8, root);
        LinearLayout root2 = itemRvShopTopItemBinding.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new p4(this, xu7Var)));
        a.e(itemRvShopTopItemBinding.ivTopMarket).h(null).L(itemRvShopTopItemBinding.ivTopMarket);
        itemRvShopTopItemBinding.tvTitle.setText((CharSequence) null);
    }
}
