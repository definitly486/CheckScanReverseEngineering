package com.warefly.checkscan.presentation.flows.cashback.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.cashback.presenter.CashbackPresenter;
import com.warefly.checkscan.presentation.flows.cashback.presenter.CashbackView;
import defpackage.bs6;
import defpackage.c9;
import defpackage.e;
import defpackage.f61;
import defpackage.ll3;
import defpackage.n2;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class CashbackFlowFragment extends FlowFragment<LayoutContainerBinding> implements CashbackView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(f61.class), new a());
    public CashbackPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CashbackFlowFragment cashbackFlowFragment = CashbackFlowFragment.this;
            Bundle arguments = cashbackFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(cashbackFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CashbackFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CashbackPresenter providePresenter() {
        return new CashbackPresenter(((f61) this.j.getValue()).a, (uf3) n2.c(uf3.class, e.e(this), n(), null));
    }
}
