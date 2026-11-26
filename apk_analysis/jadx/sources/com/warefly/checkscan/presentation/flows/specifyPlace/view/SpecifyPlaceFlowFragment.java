package com.warefly.checkscan.presentation.flows.specifyPlace.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.specifyPlace.presenter.SpecifyPlaceFlowPresenter;
import com.warefly.checkscan.presentation.flows.specifyPlace.presenter.SpecifyPlaceFlowView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c;
import defpackage.c9;
import defpackage.e;
import defpackage.hg4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.m00;
import defpackage.n2;
import defpackage.tc5;
import defpackage.u96;
import defpackage.uf3;
import defpackage.w58;
import defpackage.wc5;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SpecifyPlaceFlowFragment extends FlowFragment<LayoutContainerBinding> implements SpecifyPlaceFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(w58.class), new a());
    public SpecifyPlaceFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            SpecifyPlaceFlowFragment specifyPlaceFlowFragment = SpecifyPlaceFlowFragment.this;
            Bundle arguments = specifyPlaceFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(specifyPlaceFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(SpecifyPlaceFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        SpecifyPlaceFlowPresenter specifyPlaceFlowPresenter = this.presenter;
        if (specifyPlaceFlowPresenter != null) {
            specifyPlaceFlowPresenter.onBackClicked();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        tc5 tc5Var = wc5.b;
        tc5Var.getClass();
        synchronized (c.c) {
            hg4 hg4Var = c.d;
            if (hg4Var == null) {
                throw new IllegalStateException("KoinApplication has not been started");
            }
            hg4Var.b(u96.h(tc5Var), true, false);
            j59 j59Var = j59.a;
        }
        super.onCreate(bundle);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroy() {
        m00.g(wc5.b);
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SpecifyPlaceFlowPresenter providePresenter() {
        NavArgsLazy navArgsLazy = this.j;
        return new SpecifyPlaceFlowPresenter(((w58) navArgsLazy.getValue()).a, ((w58) navArgsLazy.getValue()).b, ((w58) navArgsLazy.getValue()).c, (uf3) n2.c(uf3.class, e.e(this), n(), null));
    }
}
