package defpackage;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.ViewOutlineProvider;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bonuses.databinding.ItemBonusPromoBannerBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class po0 extends vd9<to0, ItemBonusPromoBannerBinding> {
    public final BonusesMainNewPresenter b;

    public interface a {
        void onHidePromoBanner(int i);

        void onOpenPromoLink(int i);

        void onOrdPromoClicked(b06 b06Var);
    }

    public po0(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(oo0.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof to0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, to0 to0Var) {
        ItemBonusPromoBannerBinding itemBonusPromoBannerBinding = (ItemBonusPromoBannerBinding) viewBinding;
        to0 to0Var2 = to0Var;
        itemBonusPromoBannerBinding.getClass();
        no0.a aVar = to0Var2.a;
        String str = aVar.h;
        int i = 1;
        int i2 = 0;
        if (str != null) {
            AppCompatImageView appCompatImageView = itemBonusPromoBannerBinding.ivWideBanner;
            appCompatImageView.getClass();
            appCompatImageView.setVisibility(0);
            com.bumptech.glide.a.e(itemBonusPromoBannerBinding.getRoot()).h(str).b(new s37().B(new ur3(pl2.d(16.0f), pl2.d(16.0f), pl2.d(0.0f), pl2.d(0.0f)), true)).L(itemBonusPromoBannerBinding.ivWideBanner);
        }
        b06 b06Var = aVar.f;
        if (b06Var != null) {
            BlurView root = itemBonusPromoBannerBinding.incldAdsBadge.getRoot();
            root.getClass();
            root.setVisibility(0);
            BlurView root2 = itemBonusPromoBannerBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new ro0(i2, this, b06Var)));
        }
        BlurView root3 = itemBonusPromoBannerBinding.incldBlurClose.getRoot();
        root3.getClass();
        root3.setVisibility(aVar.g ? 0 : 8);
        BlurView root4 = itemBonusPromoBannerBinding.incldBlurClose.getRoot();
        root4.getClass();
        root4.setOnClickListener(new lb7(new qo0(this, to0Var2, i2)));
        TextView textView = itemBonusPromoBannerBinding.btnAction;
        textView.setText(aVar.c);
        String str2 = aVar.b;
        textView.setTextColor(str2 != null ? Color.parseColor(str2) : -1);
        try {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(pl2.d(8.0f));
            String str3 = aVar.d;
            gradientDrawable.setColor(str3 != null ? Color.parseColor(str3) : ContextCompat.getColor(textView.getContext(), R.color.readilyBlue));
            textView.setBackground(gradientDrawable);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
        textView.setOnClickListener(new lb7(new so0(0, this, to0Var2)));
        String str4 = aVar.e;
        TextView textView2 = itemBonusPromoBannerBinding.btnHide;
        if (str4 != null) {
            textView2.setText(str4);
            textView2.setVisibility(0);
            textView2.setOnClickListener(new lb7(new x30(i, this, to0Var2)));
        } else {
            textView2.getClass();
            textView2.setVisibility(8);
        }
        MaterialCardView root5 = itemBonusPromoBannerBinding.getRoot();
        root5.getClass();
        root5.setVisibility(0);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemBonusPromoBannerBinding itemBonusPromoBannerBinding = (ItemBonusPromoBannerBinding) viewBinding;
        itemBonusPromoBannerBinding.getClass();
        BlurView blurView = itemBonusPromoBannerBinding.incldAdsBadge.blurView;
        blurView.getClass();
        MaterialCardView root = itemBonusPromoBannerBinding.getRoot();
        root.getClass();
        zd3.h(blurView, root);
        BlurView blurView2 = itemBonusPromoBannerBinding.incldBlurClose.blurView;
        blurView2.getClass();
        MaterialCardView root2 = itemBonusPromoBannerBinding.getRoot();
        root2.getClass();
        blurView2.b(root2);
        blurView2.b.a();
        blurView2.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        blurView2.setClipToOutline(true);
    }
}
