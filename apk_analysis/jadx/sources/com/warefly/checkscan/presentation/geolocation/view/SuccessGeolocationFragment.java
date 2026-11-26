package com.warefly.checkscan.presentation.geolocation.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentSuccessGeolocationBinding;
import com.warefly.checkscan.presentation.geolocation.presenter.SuccessGeolocationPresenter;
import com.warefly.checkscan.presentation.geolocation.presenter.SuccessGeolocationView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.pm;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SuccessGeolocationFragment extends BaseFragment<FragmentSuccessGeolocationBinding> implements SuccessGeolocationView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final int f = R.layout.fragment_success_geolocation;
    public final ol4 g = new ol4(FragmentSuccessGeolocationBinding.class);
    public SuccessGeolocationPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SuccessGeolocationPresenter successGeolocationPresenter = SuccessGeolocationFragment.this.presenter;
            if (successGeolocationPresenter != null) {
                successGeolocationPresenter.finish();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(SuccessGeolocationFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentSuccessGeolocationBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentSuccessGeolocationBinding fragmentSuccessGeolocationBinding = (FragmentSuccessGeolocationBinding) this.g.getValue(this, h[0]);
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ImageView imageView = fragmentSuccessGeolocationBinding.ivCloudAnimationSuccess;
        imageView.getClass();
        pm.b(contextRequireContext, R.drawable.ic_animated_location, imageView);
        TextView textView = fragmentSuccessGeolocationBinding.btnContinue;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }

    public final SuccessGeolocationPresenter providePresenter() {
        return new SuccessGeolocationPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (jf6) m2.c(jf6.class, e.e(this), null, null));
    }
}
