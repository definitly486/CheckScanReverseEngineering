package defpackage;

import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvLandingDoubleImageBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class si4 extends vd9<ti4, ItemRvLandingDoubleImageBinding> {
    public final LandingPresenter b;

    public si4(LandingPresenter landingPresenter) {
        super(ri4.c);
        this.b = landingPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ti4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ti4 ti4Var) {
        ItemRvLandingDoubleImageBinding itemRvLandingDoubleImageBinding = (ItemRvLandingDoubleImageBinding) viewBinding;
        ti4 ti4Var2 = ti4Var;
        itemRvLandingDoubleImageBinding.getClass();
        p37 p37VarE = a.e(itemRvLandingDoubleImageBinding.image);
        wi4 wi4Var = ti4Var2.a;
        p37VarE.h(wi4Var.b).L(itemRvLandingDoubleImageBinding.image);
        itemRvLandingDoubleImageBinding.cbImage.setChecked(wi4Var.d);
        FrameLayout frameLayout = itemRvLandingDoubleImageBinding.placeholderFirst;
        frameLayout.getClass();
        frameLayout.setOnClickListener(new lb7(new gh1(1, this, ti4Var2)));
        FrameLayout frameLayout2 = itemRvLandingDoubleImageBinding.placeholderFirst;
        boolean z = wi4Var.e;
        frameLayout2.setClickable(z);
        itemRvLandingDoubleImageBinding.placeholderFirst.setFocusable(z);
        wi4 wi4Var2 = ti4Var2.b;
        if (wi4Var2 == null) {
            a.e(itemRvLandingDoubleImageBinding.image).h(new String()).L(itemRvLandingDoubleImageBinding.imageSecond);
            itemRvLandingDoubleImageBinding.cbImageSecond.setVisibility(4);
            return;
        }
        boolean z2 = wi4Var2.e;
        a.e(itemRvLandingDoubleImageBinding.imageSecond).h(wi4Var2.b).L(itemRvLandingDoubleImageBinding.imageSecond);
        itemRvLandingDoubleImageBinding.cbImageSecond.setVisibility(0);
        itemRvLandingDoubleImageBinding.cbImageSecond.setChecked(wi4Var2.d);
        FrameLayout frameLayout3 = itemRvLandingDoubleImageBinding.placeholderSecond;
        frameLayout3.getClass();
        frameLayout3.setOnClickListener(new lb7(new qd1(this, ti4Var2, 1)));
        itemRvLandingDoubleImageBinding.placeholderSecond.setClickable(z2);
        itemRvLandingDoubleImageBinding.placeholderSecond.setFocusable(z2);
    }
}
