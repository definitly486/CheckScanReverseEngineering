package com.warefly.checkscan.support.presentation.questions.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.support.databinding.FragmentSupportQuestionsBinding;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.eu1;
import defpackage.fy8;
import defpackage.hf8;
import defpackage.k83;
import defpackage.kf8;
import defpackage.lb7;
import defpackage.m2;
import defpackage.ol4;
import defpackage.pz3;
import defpackage.qf8;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportQuestionsFragment extends BaseFragment<FragmentSupportQuestionsBinding> implements SupportQuestionsView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_support_questions;
    public final ol4 g = new ol4(FragmentSupportQuestionsBinding.class);
    public eu1 h;
    public SupportQuestionsPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(SupportQuestionsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;", 0);
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
        SupportQuestionsPresenter supportQuestionsPresenter = this.presenter;
        if (supportQuestionsPresenter != null) {
            supportQuestionsPresenter.onBackClicked();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ze4<?>[] ze4VarArr = j;
        ze4<?> ze4Var = ze4VarArr[0];
        ol4 ol4Var = this.g;
        ImageView imageView = ((FragmentSupportQuestionsBinding) ol4Var.getValue(this, ze4Var)).incldToolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new kf8(this)));
        RecyclerView recyclerView = ((FragmentSupportQuestionsBinding) ol4Var.getValue(this, ze4VarArr[0])).rvContent;
        SupportQuestionsPresenter supportQuestionsPresenter = this.presenter;
        if (supportQuestionsPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        eu1 eu1Var = new eu1(new hf8(supportQuestionsPresenter));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        recyclerView.addItemDecoration(new fy8(8, false));
        recyclerView.setItemAnimator(null);
    }

    public final SupportQuestionsPresenter providePresenter() {
        return new SupportQuestionsPresenter((k83) m2.c(k83.class, e.e(this), null, null), requireArguments().getString("TOOLBAR_TEXT_KEY"), (qf8) m2.c(qf8.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsView
    public final void setToolbarText(String str) {
        str.getClass();
        ((FragmentSupportQuestionsBinding) this.g.getValue(this, j[0])).incldToolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
