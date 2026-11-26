package com.warefly.checkscan.presentation.flows.desktop.view;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.CheckScanApplication;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.desktop.presenter.TabContainerPresenter;
import defpackage.aa4;
import defpackage.am5;
import defpackage.ba8;
import defpackage.bf7;
import defpackage.bs6;
import defpackage.c9;
import defpackage.cg4;
import defpackage.fd0;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gi0;
import defpackage.h;
import defpackage.hg4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.ki8;
import defpackage.lj1;
import defpackage.lk3;
import defpackage.ll3;
import defpackage.m00;
import defpackage.m08;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.pib;
import defpackage.pr0;
import defpackage.ri8;
import defpackage.tc5;
import defpackage.u4;
import defpackage.u96;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zk1;
import defpackage.zl5;

/* JADX INFO: loaded from: classes5.dex */
public final class TabContainerFragment extends BaseFragment<LayoutContainerBinding> implements TabContainerView {
    public static final /* synthetic */ ze4<Object>[] k;
    public tc5 h;
    public boolean i;
    public TabContainerPresenter presenter;
    public final int f = R.layout.layout_container;
    public final NavArgsLazy g = new NavArgsLazy(x07.a(ki8.class), new c());
    public final fh8 j = new fh8(new a());

    public static final class a extends gh4 implements ll3<com.warefly.checkscan.presentation.flows.desktop.view.b> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final com.warefly.checkscan.presentation.flows.desktop.view.b invoke() {
            TabContainerFragment tabContainerFragment = TabContainerFragment.this;
            FragmentActivity fragmentActivityRequireActivity = tabContainerFragment.requireActivity();
            FragmentManager childFragmentManager = tabContainerFragment.getChildFragmentManager();
            fragmentActivityRequireActivity.getClass();
            childFragmentManager.getClass();
            return new com.warefly.checkscan.presentation.flows.desktop.view.b(fragmentActivityRequireActivity, childFragmentManager);
        }
    }

    public static final class b extends gh4 implements nl3<tc5, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(tc5 tc5Var) {
            tc5 tc5Var2 = tc5Var;
            tc5Var2.getClass();
            ze4<Object>[] ze4VarArr = TabContainerFragment.k;
            TabContainerFragment tabContainerFragment = TabContainerFragment.this;
            ba8 ba8Var = new ba8(tabContainerFragment.g().concat("CICERONE"));
            cg4 cg4Var = cg4.Singleton;
            zk1 zk1VarA = x07.a(lj1.class);
            ba8 ba8Var2 = bf7.e;
            tc5Var2.a(new m08(new gi0(ba8Var2, zk1VarA, ba8Var, com.warefly.checkscan.presentation.flows.desktop.view.c.f, cg4Var)));
            tc5Var2.a(new m08(new gi0(ba8Var2, x07.a(uf3.class), new ba8(tabContainerFragment.g()), new d(tabContainerFragment), cg4Var)));
            u4.d(new gi0(ba8Var2, x07.a(am5.class), new ba8(tabContainerFragment.g().concat("NAVIGATOR")), new e(tabContainerFragment), cg4Var), tc5Var2);
            return j59.a;
        }
    }

    public static final class c implements ll3<Bundle> {
        public c() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            TabContainerFragment tabContainerFragment = TabContainerFragment.this;
            Bundle arguments = tabContainerFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(tabContainerFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(TabContainerFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        Fragment fragmentFindFragmentById = getChildFragmentManager().findFragmentById(R.id.container);
        BaseFragment baseFragment = fragmentFindFragmentById instanceof BaseFragment ? (BaseFragment) fragmentFindFragmentById : null;
        if (baseFragment != null && !baseFragment.k()) {
            return false;
        }
        if (getChildFragmentManager().getBackStackEntryCount() < 2) {
            return true;
        }
        ((uf3) n2.c(uf3.class, defpackage.e.e(this), new ba8(g()), null)).c();
        return false;
    }

    public final boolean n() {
        FragmentActivity activity = getActivity();
        if (activity != null && activity.isChangingConfigurations()) {
            return false;
        }
        FragmentActivity activity2 = getActivity();
        return (activity2 != null && activity2.isFinishing()) || (isRemoving() && !this.i);
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        String string = bundle != null ? bundle.getString("state_scope_name") : null;
        if (string == null) {
            string = fd0.a(this);
        }
        this.d = string;
        tc5 tc5VarC = h.c(new b());
        synchronized (defpackage.c.c) {
            hg4 hg4Var = defpackage.c.d;
            if (hg4Var == null) {
                throw new IllegalStateException("KoinApplication has not been started");
            }
            hg4Var.b(u96.h(tc5VarC), true, false);
            j59 j59Var = j59.a;
        }
        this.h = tc5VarC;
        super.onCreate(bundle);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroy() {
        tc5 tc5Var;
        if (n() && (tc5Var = this.h) != null) {
            m00.g(tc5Var);
        }
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z || ((ki8) this.g.getValue()).a != ri8.Games) {
            return;
        }
        getChildFragmentManager().setFragmentResult("games_tab_shown", Bundle.EMPTY);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        ((am5) n2.c(am5.class, defpackage.e.e(this), new ba8(g().concat("NAVIGATOR")), null)).b();
        super.onPause();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ((am5) n2.c(am5.class, defpackage.e.e(this), new ba8(g().concat("NAVIGATOR")), null)).a((zl5) this.j.getValue());
        this.i = false;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        this.i = true;
        bundle.putString("state_scope_name", g());
        String str = CheckScanApplication.d;
        if (str == null) {
            aa4.j("appCode");
            throw null;
        }
        bundle.putString("state_launch_flag", str);
        bundle.putBoolean("state_scope_was_closed", n());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TabContainerPresenter providePresenter() {
        NavArgsLazy navArgsLazy = this.g;
        return new TabContainerPresenter((ki8) navArgsLazy.getValue(), (pr0) m2.c(pr0.class, defpackage.e.e(this), null, null), ((ki8) navArgsLazy.getValue()).c, (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.view.TabContainerView
    public final void setScreenForContainer(lk3 lk3Var) {
        lk3Var.getClass();
        pib.b((zl5) this.j.getValue(), lk3Var);
    }
}
