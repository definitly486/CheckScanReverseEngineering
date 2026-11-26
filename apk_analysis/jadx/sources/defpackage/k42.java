package defpackage;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemCarouselCouponsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class k42 extends vd9<ao1, ItemCarouselCouponsBinding> {
    public final oe1 b;

    public k42(oe1 oe1Var) {
        super(i42.c);
        this.b = oe1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ao1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ao1 ao1Var) {
        ItemCarouselCouponsBinding itemCarouselCouponsBinding = (ItemCarouselCouponsBinding) viewBinding;
        ao1 ao1Var2 = ao1Var;
        itemCarouselCouponsBinding.getClass();
        a.e(itemCarouselCouponsBinding.ivLogoCoupon).h(ao1Var2.c).P(qs2.h()).L(itemCarouselCouponsBinding.ivLogoCoupon);
        Drawable drawable = ContextCompat.getDrawable(itemCarouselCouponsBinding.getRoot().getContext(), R.drawable.rounded_half_background);
        if (drawable != null) {
            View view = itemCarouselCouponsBinding.viewColoredLayerCoupon;
            Drawable drawableWrap = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintMode(drawableWrap, PorterDuff.Mode.SRC_IN);
            DrawableCompat.setTint(drawableWrap, Color.parseColor(ao1Var2.d));
            view.setBackground(drawableWrap);
        }
        itemCarouselCouponsBinding.tvDescriptionCoupon.setText(ao1Var2.e);
        itemCarouselCouponsBinding.tvTermCoupon.setText(ao1Var2.f);
        CardView root = itemCarouselCouponsBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new j42(this, ao1Var2)));
    }
}
