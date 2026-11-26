package com.warefly.checkscan.shared.universalWebView.presentation.flow.view;

import android.os.Bundle;
import androidx.core.os.BundleCompat;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.shared.universalWebView.presentation.flow.presenter.UniversalWebViewFlowPresenter;
import defpackage.bs6;
import defpackage.fg;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class UniversalWebViewFlowFragment extends FlowFragment<LayoutContainerBinding> implements UniversalWebViewFlowView {
    public static final a k;
    public static final /* synthetic */ ze4<Object>[] l;
    public final fh8 j = new fh8(new b());
    public UniversalWebViewFlowPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements ll3<UniversalWebViewArgs> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final UniversalWebViewArgs invoke() {
            Bundle arguments = UniversalWebViewFlowFragment.this.getArguments();
            UniversalWebViewArgs universalWebViewArgs = arguments != null ? (UniversalWebViewArgs) BundleCompat.getParcelable(arguments, "UNIVERSAL_WEB_VIEW_FLOW_ARGS_KEY", UniversalWebViewArgs.class) : null;
            if (universalWebViewArgs != null) {
                return universalWebViewArgs;
            }
            fg.c("UNIVERSAL_WEB_VIEW_FLOW_ARGS_KEY is required for UniversalWebViewFlowFragment");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(UniversalWebViewFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
        k = new a();
    }

    public final UniversalWebViewFlowPresenter providePresenter() {
        return new UniversalWebViewFlowPresenter((UniversalWebViewArgs) this.j.getValue());
    }
}
