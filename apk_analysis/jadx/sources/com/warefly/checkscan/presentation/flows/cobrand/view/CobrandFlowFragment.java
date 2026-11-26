package com.warefly.checkscan.presentation.flows.cobrand.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.flows.cobrand.presenter.CobrandPresenter;
import defpackage.bs6;
import defpackage.c9;
import defpackage.e;
import defpackage.jf6;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.p51;
import defpackage.qm1;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class CobrandFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements CobrandView {
    public static final /* synthetic */ ze4<Object>[] l;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(qm1.class), new a());
    public final int k = R.layout.loading_layout_container;
    public CobrandPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CobrandFlowFragment cobrandFlowFragment = CobrandFlowFragment.this;
            Bundle arguments = cobrandFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(cobrandFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CobrandFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CobrandPresenter providePresenter() {
        Deeplink.d dVar;
        p51 p51Var = (p51) m2.c(p51.class, e.e(this), null, null);
        String str = ((qm1) this.j.getValue()).a;
        if (str.equals("cobrand-create-card")) {
            dVar = Deeplink.d.b.c;
        } else {
            dVar = str.equals("cobrand-about") ? Deeplink.d.a.c : null;
        }
        return new CobrandPresenter(p51Var, dVar, (jf6) m2.c(jf6.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), n(), null));
    }
}
