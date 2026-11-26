package com.warefly.checkscan.presentation.flows.requests.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.requests.presenter.RequestsPresenter;
import com.warefly.checkscan.presentation.flows.requests.presenter.RequestsView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c9;
import defpackage.e;
import defpackage.jf6;
import defpackage.ll3;
import defpackage.m2;
import defpackage.v37;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class RequestsFlowFragment extends FlowFragment<LayoutContainerBinding> implements RequestsView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(v37.class), new a());
    public RequestsPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            RequestsFlowFragment requestsFlowFragment = RequestsFlowFragment.this;
            Bundle arguments = requestsFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(requestsFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(RequestsFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        NavArgsLazy navArgsLazy = this.j;
        boolean z = ((v37) navArgsLazy.getValue()).c;
        RequestsPresenter requestsPresenter = this.presenter;
        if (z) {
            if (requestsPresenter != null) {
                requestsPresenter.onScan(((v37) navArgsLazy.getValue()).d, ((v37) navArgsLazy.getValue()).e);
                return;
            } else {
                aa4.j("presenter");
                throw null;
            }
        }
        if (requestsPresenter != null) {
            requestsPresenter.onOpened(((v37) navArgsLazy.getValue()).a);
        } else {
            aa4.j("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RequestsPresenter providePresenter() {
        return new RequestsPresenter((jf6) m2.c(jf6.class, e.e(this), null, null), ((v37) this.j.getValue()).b);
    }
}
