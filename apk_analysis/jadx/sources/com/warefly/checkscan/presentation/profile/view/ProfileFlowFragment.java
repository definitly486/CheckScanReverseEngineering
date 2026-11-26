package com.warefly.checkscan.presentation.profile.view;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.profile.presenter.ProfilePresenter;
import com.warefly.checkscan.presentation.profile.presenter.ProfileView;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import defpackage.ah;
import defpackage.bs6;
import defpackage.e;
import defpackage.iw2;
import defpackage.jf6;
import defpackage.m2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfileFlowFragment extends FlowFragment<LayoutContainerBinding> implements ProfileView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public ProfilePresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(ProfileFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    public final ProfilePresenter providePresenter() {
        Parcelable parcelable;
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("PROFILE_REASON_KEY", ProfileReason.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("PROFILE_REASON_KEY");
            if (!(parcelable2 instanceof ProfileReason)) {
                parcelable2 = null;
            }
            parcelable = (ProfileReason) parcelable2;
        }
        ProfileReason profileReason = (ProfileReason) parcelable;
        if (profileReason != null) {
            return new ProfilePresenter(profileReason, (jf6) m2.c(jf6.class, e.e(this), null, null), (iw2) m2.c(iw2.class, e.e(this), null, null));
        }
        ah.f("Profile reason can not be null");
        return null;
    }
}
