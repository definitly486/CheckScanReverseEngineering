package com.warefly.checkscan.auth.presentation.flow.view;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.auth.presentation.flow.presenter.AuthFlowPresenter;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import defpackage.ah;
import defpackage.bs6;
import defpackage.e;
import defpackage.g6;
import defpackage.je6;
import defpackage.m2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class AuthFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements AuthFlowView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public AuthFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(AuthFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    public final AuthFlowPresenter providePresenter() {
        Parcelable parcelable;
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("AUTH_REASON_KEY", AuthReason.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("AUTH_REASON_KEY");
            if (!(parcelable2 instanceof AuthReason)) {
                parcelable2 = null;
            }
            parcelable = (AuthReason) parcelable2;
        }
        AuthReason authReason = (AuthReason) parcelable;
        if (authReason != null) {
            return new AuthFlowPresenter(authReason, (g6) m2.c(g6.class, e.e(this), null, null), (je6) m2.c(je6.class, e.e(this), null, null));
        }
        ah.f("AuthReason can not be null");
        return null;
    }
}
