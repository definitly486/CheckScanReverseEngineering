package com.warefly.checkscan.presentation.flows.verification.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.verification.presenter.VerificationFlowPresenter;
import defpackage.bs6;
import defpackage.c9;
import defpackage.e;
import defpackage.jf6;
import defpackage.ll3;
import defpackage.m2;
import defpackage.pc9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationFlowFragment extends FlowFragment<LayoutContainerBinding> implements VerificationFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(pc9.class), new a());
    public VerificationFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            VerificationFlowFragment verificationFlowFragment = VerificationFlowFragment.this;
            Bundle arguments = verificationFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(verificationFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(VerificationFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final VerificationFlowPresenter providePresenter() {
        return new VerificationFlowPresenter((jf6) m2.c(jf6.class, e.e(this), null, null), (pc9) this.j.getValue());
    }
}
