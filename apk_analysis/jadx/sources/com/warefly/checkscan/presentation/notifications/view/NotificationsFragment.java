package com.warefly.checkscan.presentation.notifications.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentNotificationsBinding;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.notifications.presenter.NotificationsPresenter;
import com.warefly.checkscan.presentation.notifications.presenter.NotificationsView;
import com.warefly.checkscan.presentation.stock.view.AgreementDialog;
import defpackage.aa4;
import defpackage.ad9;
import defpackage.ap5;
import defpackage.b06;
import defpackage.bd9;
import defpackage.bs6;
import defpackage.cw5;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.i16;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mp5;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.ov;
import defpackage.pl2;
import defpackage.pp5;
import defpackage.pz3;
import defpackage.uf3;
import defpackage.vo5;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zo5;
import defpackage.zv5;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class NotificationsFragment extends BaseFragment<FragmentNotificationsBinding> implements NotificationsView {
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_notifications;
    public final ol4 g = new ol4(FragmentNotificationsBinding.class);
    public eu1 h;
    public LinearLayoutManager i;
    public AgreementDialog j;
    public OrdAdInfoDialog k;
    public NotificationsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            NotificationsFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(NotificationsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentNotificationsBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentNotificationsBinding n() {
        return (FragmentNotificationsBinding) this.g.getValue(this, l[0]);
    }

    public final NotificationsPresenter o() {
        NotificationsPresenter notificationsPresenter = this.presenter;
        if (notificationsPresenter != null) {
            return notificationsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o().onCreate();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        NotificationsPresenter notificationsPresenterO = o();
        LinearLayoutManager linearLayoutManager = this.i;
        notificationsPresenterO.onItemIsSeen(linearLayoutManager != null ? linearLayoutManager.findLastVisibleItemPosition() : 0);
        super.onDestroyView();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvNotifs;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext(), 1, false);
        recyclerView.addOnScrollListener(new cw5(linearLayoutManager, new mp5(this)));
        recyclerView.addOnScrollListener(new zv5(linearLayoutManager, new ov(this, 1)));
        this.i = linearLayoutManager;
        recyclerView.setLayoutManager(linearLayoutManager);
        eu1 eu1Var = new eu1(new vo5(o()), new bd9(ad9.c), new ap5(zo5.c, 0));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new i16(pl2.o(13)));
        recyclerView.setItemAnimator(null);
        ImageView imageView = n().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    public final NotificationsPresenter providePresenter() {
        return new NotificationsPresenter((pp5) m2.c(pp5.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showAgreementDialog(String str) {
        str.getClass();
        AgreementDialog agreementDialog = this.j;
        if (agreementDialog != null) {
            agreementDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            AgreementDialog agreementDialog2 = new AgreementDialog(context, str);
            this.j = agreementDialog2;
            agreementDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showAllNotificationsLoaded() {
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showEmptyNotifications(boolean z) {
        Group group = n().groupNoNotifications;
        group.getClass();
        group.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showEmptyNotificationsProgress(boolean z) {
        CircularProgressIndicator circularProgressIndicator = n().pbLoading;
        circularProgressIndicator.getClass();
        circularProgressIndicator.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showNotifications(boolean z, List<? extends pz3> list) {
        list.getClass();
        RecyclerView recyclerView = n().rvNotifs;
        if (!z) {
            recyclerView.setVisibility(8);
            return;
        }
        recyclerView.setVisibility(0);
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showOrdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.k;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.k = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showPageOfNotificationsProgress(boolean z) {
        ProgressBar progressBar = n().pbBottomLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.notifications.presenter.NotificationsView
    public final void showRefreshNotificationsProgress(boolean z) {
        ProgressBar progressBar = n().pbBottomLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }
}
