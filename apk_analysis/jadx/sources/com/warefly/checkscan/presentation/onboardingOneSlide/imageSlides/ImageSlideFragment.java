package com.warefly.checkscan.presentation.onboardingOneSlide.imageSlides;

import android.os.Bundle;
import android.view.View;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentOnboardingImageSlideBinding;
import defpackage.bs6;
import defpackage.ol4;
import defpackage.p37;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ImageSlideFragment extends BaseFragment<FragmentOnboardingImageSlideBinding> {
    public static final a h;
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_onboarding_image_slide;
    public final ol4 g = new ol4(FragmentOnboardingImageSlideBinding.class);

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(ImageSlideFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingImageSlideBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
        h = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        p37 p37VarD = com.bumptech.glide.a.d(requireContext());
        Bundle arguments = getArguments();
        p37VarD.h(arguments != null ? arguments.getString("IMAGE_SLIDE_URL_KEY") : null).L(((FragmentOnboardingImageSlideBinding) this.g.getValue(this, i[0])).ivBanner);
    }
}
