package com.warefly.checkscan.presentation.flows.issueCard.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.issueCard.presenter.IssueCardFlowPresenter;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ll3;
import defpackage.ma4;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class IssueCardFlowFragment extends FlowFragment<LayoutContainerBinding> implements IssueCardFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(ma4.class), new a());
    public IssueCardFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            IssueCardFlowFragment issueCardFlowFragment = IssueCardFlowFragment.this;
            Bundle arguments = issueCardFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(issueCardFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(IssueCardFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final IssueCardFlowPresenter providePresenter() {
        return new IssueCardFlowPresenter(((ma4) this.j.getValue()).a);
    }
}
