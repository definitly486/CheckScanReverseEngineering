package com.warefly.checkscan.presentation.flows.catalog.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.catalog.presenter.CatalogFlowPresenter;
import com.warefly.checkscan.presentation.flows.catalog.presenter.CatalogFlowView;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ll3;
import defpackage.m61;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class CatalogFlowFragment extends FlowFragment<LayoutContainerBinding> implements CatalogFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(m61.class), new a());
    public CatalogFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CatalogFlowFragment catalogFlowFragment = CatalogFlowFragment.this;
            Bundle arguments = catalogFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(catalogFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CatalogFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CatalogFlowPresenter providePresenter() {
        return new CatalogFlowPresenter(((m61) this.j.getValue()).a);
    }
}
