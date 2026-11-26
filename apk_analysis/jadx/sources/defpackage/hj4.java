package defpackage;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvLandingOrdBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class hj4 extends vd9<ij4, ItemRvLandingOrdBinding> {
    public final LandingPresenter b;

    public hj4(LandingPresenter landingPresenter) {
        super(fj4.c);
        this.b = landingPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ij4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ij4 ij4Var) {
        ItemRvLandingOrdBinding itemRvLandingOrdBinding = (ItemRvLandingOrdBinding) viewBinding;
        itemRvLandingOrdBinding.getClass();
        AppCompatTextView root = itemRvLandingOrdBinding.getRoot();
        String str = ij4Var.a.a;
        root.setTag(str);
        itemRvLandingOrdBinding.tvOfd.setText(str);
        itemRvLandingOrdBinding.tvOfd.setSelected(true);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvLandingOrdBinding itemRvLandingOrdBinding = (ItemRvLandingOrdBinding) viewBinding;
        itemRvLandingOrdBinding.getClass();
        AppCompatTextView root = itemRvLandingOrdBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new gj4(0, this, itemRvLandingOrdBinding)));
    }
}
