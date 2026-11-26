package com.warefly.checkscan.presentation.flows.promotions.view;

import android.os.Bundle;
import android.view.View;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.promotions.presenter.PromotionFlowPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c9;
import defpackage.e;
import defpackage.ll3;
import defpackage.n2;
import defpackage.tr6;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class PromotionFlowFragment extends FlowFragment<LayoutContainerBinding> implements PromotionFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(tr6.class), new a());
    public PromotionFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            PromotionFlowFragment promotionFlowFragment = PromotionFlowFragment.this;
            Bundle arguments = promotionFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(promotionFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(PromotionFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        PromotionFlowPresenter promotionFlowPresenter = this.presenter;
        if (promotionFlowPresenter != null) {
            promotionFlowPresenter.onBackPressed();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        PromotionFlowPresenter promotionFlowPresenter = this.presenter;
        if (promotionFlowPresenter != null) {
            promotionFlowPresenter.onOpened();
        } else {
            aa4.j("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PromotionFlowPresenter providePresenter() {
        return new PromotionFlowPresenter((uf3) n2.c(uf3.class, e.e(this), n(), null), ((tr6) this.j.getValue()).a);
    }
}
