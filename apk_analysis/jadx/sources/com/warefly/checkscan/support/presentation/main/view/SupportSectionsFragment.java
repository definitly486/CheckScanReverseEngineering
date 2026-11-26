package com.warefly.checkscan.support.presentation.main.view;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.support.databinding.FragmentSupportSectionsBinding;
import com.warefly.checkscan.support.presentation.main.presenter.SupportSectionsPresenter;
import defpackage.aa4;
import defpackage.ai1;
import defpackage.bs6;
import defpackage.e;
import defpackage.eu1;
import defpackage.fy8;
import defpackage.kr7;
import defpackage.lb7;
import defpackage.m2;
import defpackage.m83;
import defpackage.ol4;
import defpackage.pz3;
import defpackage.qf8;
import defpackage.x07;
import defpackage.yf8;
import defpackage.yk7;
import defpackage.ze4;
import defpackage.zk7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportSectionsFragment extends BaseFragment<FragmentSupportSectionsBinding> implements SupportSectionsView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_support_sections;
    public final ol4 g = new ol4(FragmentSupportSectionsBinding.class);
    public eu1 h;
    public SupportSectionsPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(SupportSectionsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/support/databinding/FragmentSupportSectionsBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        SupportSectionsPresenter supportSectionsPresenter = this.presenter;
        if (supportSectionsPresenter != null) {
            supportSectionsPresenter.onBackPressed();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    public final FragmentSupportSectionsBinding n() {
        return (FragmentSupportSectionsBinding) this.g.getValue(this, j[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        TextView textView = n().incldTryAgain.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ai1(this, 2)));
        RecyclerView recyclerView = n().rvContent;
        zk7 zk7Var = new zk7(yk7.c);
        SupportSectionsPresenter supportSectionsPresenter = this.presenter;
        if (supportSectionsPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        eu1 eu1Var = new eu1(zk7Var, new yf8(supportSectionsPresenter));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new fy8());
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        recyclerView.setItemAnimator(null);
    }

    public final SupportSectionsPresenter providePresenter() {
        return new SupportSectionsPresenter((m83) m2.c(m83.class, e.e(this), null, null), (kr7) m2.c(kr7.class, e.e(this), null, null), (qf8) m2.c(qf8.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.support.presentation.main.view.SupportSectionsView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.support.presentation.main.view.SupportSectionsView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldTryAgain.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.support.presentation.main.view.SupportSectionsView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}
