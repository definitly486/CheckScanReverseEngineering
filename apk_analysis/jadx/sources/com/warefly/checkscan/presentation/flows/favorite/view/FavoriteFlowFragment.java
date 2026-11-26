package com.warefly.checkscan.presentation.flows.favorite.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.favorite.presenter.FavoriteFlowPresenter;
import com.warefly.checkscan.presentation.flows.favorite.presenter.FavoriteFlowView;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ll3;
import defpackage.p53;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class FavoriteFlowFragment extends FlowFragment<LayoutContainerBinding> implements FavoriteFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(p53.class), new a());
    public FavoriteFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            FavoriteFlowFragment favoriteFlowFragment = FavoriteFlowFragment.this;
            Bundle arguments = favoriteFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(favoriteFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(FavoriteFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FavoriteFlowPresenter providePresenter() {
        return new FavoriteFlowPresenter(((p53) this.j.getValue()).a);
    }
}
