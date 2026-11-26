package com.warefly.checkscan.core.ui.base.architecture;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.am5;
import defpackage.ba8;
import defpackage.bf7;
import defpackage.cg4;
import defpackage.e;
import defpackage.fd0;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gi0;
import defpackage.h;
import defpackage.hg4;
import defpackage.j59;
import defpackage.lj1;
import defpackage.lk3;
import defpackage.ll3;
import defpackage.m00;
import defpackage.m08;
import defpackage.n2;
import defpackage.nl3;
import defpackage.pib;
import defpackage.tc5;
import defpackage.u4;
import defpackage.u96;
import defpackage.uf3;
import defpackage.x07;
import defpackage.zk1;
import defpackage.zl5;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FlowFragment<VB extends ViewBinding> extends BaseFragment<VB> implements FlowView {
    public boolean g;
    public tc5 h;
    public final int f = R.layout.layout_container;
    public final fh8 i = new fh8(new a(this));

    public static final class a extends gh4 implements ll3<com.warefly.checkscan.core.ui.base.architecture.a> {
        public final /* synthetic */ FlowFragment<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FlowFragment<VB> flowFragment) {
            super(0);
            this.f = flowFragment;
        }

        @Override // defpackage.ll3
        public final com.warefly.checkscan.core.ui.base.architecture.a invoke() {
            FlowFragment<VB> flowFragment = this.f;
            return new com.warefly.checkscan.core.ui.base.architecture.a(flowFragment, flowFragment.requireActivity(), flowFragment.getChildFragmentManager());
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class b extends gh4 implements nl3<tc5, j59> {
        public final /* synthetic */ FlowFragment<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FlowFragment<VB> flowFragment) {
            super(1);
            this.f = flowFragment;
        }

        @Override // defpackage.nl3
        public final j59 invoke(tc5 tc5Var) {
            tc5 tc5Var2 = tc5Var;
            tc5Var2.getClass();
            FlowFragment<VB> flowFragment = this.f;
            ba8 ba8Var = new ba8(flowFragment.g().concat("CICERONE"));
            cg4 cg4Var = cg4.Singleton;
            zk1 zk1VarA = x07.a(lj1.class);
            ba8 ba8Var2 = bf7.e;
            tc5Var2.a(new m08(new gi0(ba8Var2, zk1VarA, ba8Var, com.warefly.checkscan.core.ui.base.architecture.b.f, cg4Var)));
            tc5Var2.a(new m08(new gi0(ba8Var2, x07.a(uf3.class), flowFragment.n(), new c(flowFragment), cg4Var)));
            u4.d(new gi0(ba8Var2, x07.a(am5.class), new ba8(flowFragment.g().concat("NAVIGATOR")), new d(flowFragment), cg4Var), tc5Var2);
            return j59.a;
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public void e(View view) {
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public boolean k() {
        Fragment fragmentFindFragmentById = getChildFragmentManager().findFragmentById(R.id.container);
        BaseFragment baseFragment = fragmentFindFragmentById instanceof BaseFragment ? (BaseFragment) fragmentFindFragmentById : null;
        if (baseFragment != null && !baseFragment.k()) {
            return false;
        }
        o();
        return false;
    }

    public final ba8 n() {
        return new ba8(g());
    }

    public final void o() {
        if (isResumed()) {
            ((uf3) n2.c(uf3.class, e.e(this), n(), null)).i();
        }
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String string = bundle != null ? bundle.getString("state_scope_name") : null;
        if (string == null) {
            string = fd0.a(this);
        }
        this.d = string;
        tc5 tc5VarC = h.c(new b(this));
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
    public void onDestroy() {
        FragmentActivity activity;
        tc5 tc5Var;
        FragmentActivity activity2 = getActivity();
        if ((activity2 == null || !activity2.isChangingConfigurations()) && ((((activity = getActivity()) != null && activity.isFinishing()) || (isRemoving() && !this.g)) && (tc5Var = this.h) != null)) {
            m00.g(tc5Var);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        ((am5) n2.c(am5.class, e.e(this), new ba8(g().concat("NAVIGATOR")), null)).b();
        super.onPause();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ((am5) n2.c(am5.class, e.e(this), new ba8(g().concat("NAVIGATOR")), null)).a((zl5) this.i.getValue());
        this.g = false;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        this.g = true;
        bundle.putString("state_scope_name", g());
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowView
    public final void setLaunchScreen(lk3... lk3VarArr) {
        lk3VarArr.getClass();
        pib.b((zl5) this.i.getValue(), (lk3[]) Arrays.copyOf(lk3VarArr, lk3VarArr.length));
    }
}
