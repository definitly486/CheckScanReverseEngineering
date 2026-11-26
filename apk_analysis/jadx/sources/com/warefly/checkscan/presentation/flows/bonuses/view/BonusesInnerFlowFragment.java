package com.warefly.checkscan.presentation.flows.bonuses.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.bonuses.presenter.BonusesInnerFlow;
import com.warefly.checkscan.presentation.flows.bonuses.presenter.BonusesInnerFlowPresenter;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ll3;
import defpackage.vq0;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesInnerFlowFragment extends FlowFragment<LayoutContainerBinding> implements BonusesInnerFlow {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(vq0.class), new a());
    public BonusesInnerFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            BonusesInnerFlowFragment bonusesInnerFlowFragment = BonusesInnerFlowFragment.this;
            Bundle arguments = bonusesInnerFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(bonusesInnerFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(BonusesInnerFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final BonusesInnerFlowPresenter providePresenter() {
        NavArgsLazy navArgsLazy = this.j;
        return new BonusesInnerFlowPresenter(((vq0) navArgsLazy.getValue()).c, ((vq0) navArgsLazy.getValue()).b, ((vq0) navArgsLazy.getValue()).a);
    }
}
