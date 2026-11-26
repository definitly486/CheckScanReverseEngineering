package defpackage;

import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemLandingButtonWithBackgroundBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class ai4 extends vd9<wh4, ItemLandingButtonWithBackgroundBinding> {
    public final LandingPresenter b;

    public ai4(LandingPresenter landingPresenter) {
        super(xh4.c);
        this.b = landingPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof wh4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, wh4 wh4Var) {
        ItemLandingButtonWithBackgroundBinding itemLandingButtonWithBackgroundBinding = (ItemLandingButtonWithBackgroundBinding) viewBinding;
        wh4 wh4Var2 = wh4Var;
        itemLandingButtonWithBackgroundBinding.getClass();
        itemLandingButtonWithBackgroundBinding.btnRegistration.setText(wh4Var2.getTitle());
        if (wh4Var2 instanceof qj4) {
            qj4 qj4Var = (qj4) wh4Var2;
            TextView textView = itemLandingButtonWithBackgroundBinding.btnRegistration;
            textView.setEnabled(qj4Var.d);
            textView.setOnClickListener(new lb7(new zh4(this, qj4Var)));
        } else if (wh4Var2 instanceof ej4) {
            TextView textView2 = itemLandingButtonWithBackgroundBinding.btnRegistration;
            textView2.setEnabled(true);
            textView2.setOnClickListener(new lb7(new yh4(this, (ej4) wh4Var2)));
        }
        FrameLayout root = itemLandingButtonWithBackgroundBinding.getRoot();
        root.getClass();
        root.setPadding(root.getPaddingLeft(), pl2.e(wh4Var2.d()), root.getPaddingRight(), root.getPaddingBottom());
    }
}
