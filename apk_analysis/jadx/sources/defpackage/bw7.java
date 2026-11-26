package defpackage;

import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvShopTopItemHotBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class bw7 extends vd9<yu7, ItemRvShopTopItemHotBinding> {
    public final yr0 b;

    public bw7(yr0 yr0Var) {
        super(aw7.c);
        this.b = yr0Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof yu7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, yu7 yu7Var) {
        ItemRvShopTopItemHotBinding itemRvShopTopItemHotBinding = (ItemRvShopTopItemHotBinding) viewBinding;
        itemRvShopTopItemHotBinding.getClass();
        FrameLayout root = itemRvShopTopItemHotBinding.getRoot();
        root.getClass();
        le9.c(8, root);
        FrameLayout root2 = itemRvShopTopItemHotBinding.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new r4(this, yu7Var)));
        a.e(itemRvShopTopItemHotBinding.ivTopMarket).h(null).L(itemRvShopTopItemHotBinding.ivTopMarket);
        itemRvShopTopItemHotBinding.tvTitle.setText((CharSequence) null);
    }
}
