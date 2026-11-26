package com.warefly.checkscan.presentation.flows.cheque.view;

import android.os.Bundle;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.cheque.presenter.ChequeFlowPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequeFlowFragment extends FlowFragment<LayoutContainerBinding> implements ChequeFlowView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public ChequeFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(ChequeFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ChequeFlowPresenter chequeFlowPresenter = this.presenter;
        if (chequeFlowPresenter != null) {
            chequeFlowPresenter.openChequeById();
        } else {
            aa4.j("presenter");
            throw null;
        }
    }

    public final ChequeFlowPresenter providePresenter() {
        return new ChequeFlowPresenter(requireArguments().getInt("CHEQUE_ID_KEY"));
    }
}
