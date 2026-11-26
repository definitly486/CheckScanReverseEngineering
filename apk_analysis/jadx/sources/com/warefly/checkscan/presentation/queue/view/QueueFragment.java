package com.warefly.checkscan.presentation.queue.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentChequeRequestsWaitingListBinding;
import com.warefly.checkscan.presentation.queue.presenter.QueuePresenter;
import com.warefly.checkscan.presentation.queue.presenter.QueueView;
import defpackage.aa4;
import defpackage.aw6;
import defpackage.bs6;
import defpackage.bw6;
import defpackage.c9;
import defpackage.cw6;
import defpackage.e;
import defpackage.ff9;
import defpackage.fu1;
import defpackage.gf9;
import defpackage.gh4;
import defpackage.hf9;
import defpackage.i16;
import defpackage.j59;
import defpackage.kf9;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.mz6;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p72;
import defpackage.pl2;
import defpackage.qn1;
import defpackage.t32;
import defpackage.uf3;
import defpackage.x07;
import defpackage.yg1;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class QueueFragment extends BaseFragment<FragmentChequeRequestsWaitingListBinding> implements QueueView, ff9 {
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_cheque_requests_waiting_list;
    public final ol4 g = new ol4(FragmentChequeRequestsWaitingListBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(cw6.class), new b());
    public hf9 i;
    public QueueSortDialog j;
    public QueuePresenter presenter;

    public static final class a extends gh4 implements nl3<mz6, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(mz6 mz6Var) {
            mz6 mz6Var2 = mz6Var;
            mz6Var2.getClass();
            QueueFragment.this.n().changeSort(mz6Var2);
            return j59.a;
        }
    }

    public static final class b implements ll3<Bundle> {
        public b() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            QueueFragment queueFragment = QueueFragment.this;
            Bundle arguments = queueFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(queueFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(QueueFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequeRequestsWaitingListBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // defpackage.ff9
    public final void a(kf9 kf9Var) {
        if (isResumed()) {
            n().applyActionToReceipt(kf9Var.b());
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        n().onBackPressed();
        return false;
    }

    public final QueuePresenter n() {
        QueuePresenter queuePresenter = this.presenter;
        if (queuePresenter != null) {
            return queuePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentChequeRequestsWaitingListBinding fragmentChequeRequestsWaitingListBinding = (FragmentChequeRequestsWaitingListBinding) this.g.getValue(this, k[0]);
        ImageView imageView = fragmentChequeRequestsWaitingListBinding.btnHelp;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new aw6(this, 0)));
        ImageView imageView2 = fragmentChequeRequestsWaitingListBinding.btnBack;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new bw6(this)));
        ImageView imageView3 = fragmentChequeRequestsWaitingListBinding.btnSort;
        imageView3.getClass();
        imageView3.setOnClickListener(new lb7(new t32(this, 1)));
        hf9 hf9Var = new hf9(this);
        this.i = hf9Var;
        RecyclerView recyclerView = fragmentChequeRequestsWaitingListBinding.rvChequeRequests;
        recyclerView.setAdapter(hf9Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.addItemDecoration(new i16(pl2.o(10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final QueuePresenter providePresenter() {
        return new QueuePresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (yg1) m2.c(yg1.class, e.e(this), null, null), (fu1) n2.c(fu1.class, e.e(this), p72.g, null), ((cw6) this.h.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showCouldntCreateCheque() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_put, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showCouldntDeleteCheque() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_delete, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showCouldntGetChequeInfo() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_get_info, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showCouldntLoadCheques() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_load, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showCouldntResendCheque() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_request, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showProgress(boolean z) {
        ProgressBar progressBar = ((FragmentChequeRequestsWaitingListBinding) this.g.getValue(this, k[0])).pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showQueueSortDialog() {
        QueueSortDialog queueSortDialog = this.j;
        if (queueSortDialog != null) {
            queueSortDialog.dismiss();
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        QueueSortDialog queueSortDialog2 = new QueueSortDialog(contextRequireContext, new a());
        this.j = queueSortDialog2;
        queueSortDialog2.show();
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showReceipts(List<gf9> list) {
        list.getClass();
        hf9 hf9Var = this.i;
        if (hf9Var == null) {
            aa4.j("wqAdapter");
            throw null;
        }
        ArrayList arrayList = hf9Var.t;
        arrayList.clear();
        arrayList.addAll(qn1.j0(list));
        hf9Var.notifyDataSetChanged();
    }

    @Override // com.warefly.checkscan.presentation.queue.presenter.QueueView
    public final void showThereAreNoReceipts(boolean z) {
        TextView textView = ((FragmentChequeRequestsWaitingListBinding) this.g.getValue(this, k[0])).tvNoReceipts;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }
}
