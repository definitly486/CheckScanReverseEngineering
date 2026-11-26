package com.warefly.checkscan.presentation.geolocation.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentClarificationGeolocationBinding;
import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationPresenter;
import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView;
import defpackage.aa4;
import defpackage.aq;
import defpackage.bs6;
import defpackage.c4;
import defpackage.di;
import defpackage.e;
import defpackage.jf6;
import defpackage.l17;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nk1;
import defpackage.ok1;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p61;
import defpackage.pm;
import defpackage.qe;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ClarificationGeolocationFragment extends BaseFragment<FragmentClarificationGeolocationBinding> implements ClarificationGeolocationView {
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_clarification_geolocation;
    public final ol4 g = new ol4(FragmentClarificationGeolocationBinding.class);
    public final ActivityResultLauncher<String[]> h;
    public ClarificationGeolocationPresenter presenter;

    static {
        bs6 bs6Var = new bs6(ClarificationGeolocationFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentClarificationGeolocationBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    public ClarificationGeolocationFragment() {
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new di(this, 3));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.h = activityResultLauncherRegisterForActivityResult;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentClarificationGeolocationBinding n() {
        return (FragmentClarificationGeolocationBinding) this.g.getValue(this, i[0]);
    }

    public final ClarificationGeolocationPresenter o() {
        ClarificationGeolocationPresenter clarificationGeolocationPresenter = this.presenter;
        if (clarificationGeolocationPresenter != null) {
            return clarificationGeolocationPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        if (aq.a(contextRequireContext)) {
            o().updateLocation();
            return;
        }
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        fragmentActivityRequireActivity.getClass();
        if (ActivityCompat.shouldShowRequestPermissionRationale(fragmentActivityRequireActivity, "android.permission.ACCESS_FINE_LOCATION") || ActivityCompat.shouldShowRequestPermissionRationale(fragmentActivityRequireActivity, "android.permission.ACCESS_COARSE_LOCATION")) {
            o().getBonusRegionByIP();
        } else {
            this.h.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"});
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentClarificationGeolocationBinding fragmentClarificationGeolocationBindingN = n();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ImageView imageView = fragmentClarificationGeolocationBindingN.ivCloudAnimation;
        imageView.getClass();
        pm.b(contextRequireContext, R.drawable.ic_animated_location, imageView);
        LoadingButton loadingButton = fragmentClarificationGeolocationBindingN.btnCorrect;
        loadingButton.getClass();
        int i2 = 0;
        loadingButton.setOnClickListener(new lb7(new nk1(this, i2)));
        TextView textView = fragmentClarificationGeolocationBindingN.btnNoEdit;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ok1(this, i2)));
    }

    public final ClarificationGeolocationPresenter providePresenter() {
        return new ClarificationGeolocationPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (p61) m2.c(p61.class, e.e(this), null, null), (c4) m2.c(c4.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (qe) m2.c(qe.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public final void showButtonLoading(boolean z) {
        n().btnCorrect.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public final void showDefaultError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.clarification_geolocation_error_text, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public final void showLoading(boolean z) {
        CircularProgressIndicator circularProgressIndicator = n().pbLoading;
        circularProgressIndicator.getClass();
        circularProgressIndicator.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationView
    public final void showSuggestCity(l17 l17Var) {
        l17Var.getClass();
        FragmentClarificationGeolocationBinding fragmentClarificationGeolocationBindingN = n();
        fragmentClarificationGeolocationBindingN.btnCorrect.setEnabled(true);
        fragmentClarificationGeolocationBindingN.tvYourCity.setVisibility(0);
        fragmentClarificationGeolocationBindingN.tvYourCity.setText(getString(R.string.clarification_geolocation_your_city, l17Var.b()));
    }
}
