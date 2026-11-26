package com.warefly.checkscan.presentation.flows.webview.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.webview.presenter.WebviewFlowPresenter;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ih9;
import defpackage.ll3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class WebviewFlowFragment extends FlowFragment<LayoutContainerBinding> implements WebviewFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(ih9.class), new a());
    public WebviewFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            WebviewFlowFragment webviewFlowFragment = WebviewFlowFragment.this;
            Bundle arguments = webviewFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(webviewFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(WebviewFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebviewFlowPresenter providePresenter() {
        return new WebviewFlowPresenter(((ih9) this.j.getValue()).a);
    }
}
