package com.warefly.checkscan.presentation.scanner.onboardingGallery.view;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.scanner.onboardingGallery.presenter.ScannerOnboardingGalleryPresenter;
import com.warefly.checkscan.scannerml.databinding.FragmentScannerOnboardingGalleryBinding;
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
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerOnboardingGalleryFragment extends BaseFragment<FragmentScannerOnboardingGalleryBinding> implements ScannerOnboardingGalleryView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final int f = R.layout.fragment_scanner_onboarding_gallery;
    public final ol4 g = new ol4(FragmentScannerOnboardingGalleryBinding.class);
    public ScannerOnboardingGalleryPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            Bundle bundleBundleOf = BundleKt.bundleOf();
            ScannerOnboardingGalleryFragment scannerOnboardingGalleryFragment = ScannerOnboardingGalleryFragment.this;
            FragmentKt.setFragmentResult(scannerOnboardingGalleryFragment, "SCANNER_ONBOARDING_GALLERY_REQUEST_KEY", bundleBundleOf);
            ScannerOnboardingGalleryPresenter scannerOnboardingGalleryPresenter = scannerOnboardingGalleryFragment.presenter;
            if (scannerOnboardingGalleryPresenter != null) {
                scannerOnboardingGalleryPresenter.onActionClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(ScannerOnboardingGalleryFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerOnboardingGalleryBinding;", 0);
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
        AppCompatTextView appCompatTextView = ((FragmentScannerOnboardingGalleryBinding) this.g.getValue(this, h[0])).btnAction;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new a()));
    }

    public final ScannerOnboardingGalleryPresenter providePresenter() {
        return new ScannerOnboardingGalleryPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (jf6) m2.c(jf6.class, e.e(this), null, null));
    }
}
