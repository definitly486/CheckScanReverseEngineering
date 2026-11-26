package com.warefly.checkscan.presentation.account.sessionExpired.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.LayoutSessionExpiredBinding;
import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredPresenter;
import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kv;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.qx6;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SessionExpiredFragment extends BaseFragment<LayoutSessionExpiredBinding> implements SessionExpiredView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.layout_session_expired;
    public final ol4 g = new ol4(LayoutSessionExpiredBinding.class);
    public LoadingDialog h;
    public SessionExpiredPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SessionExpiredPresenter sessionExpiredPresenter = SessionExpiredFragment.this.presenter;
            if (sessionExpiredPresenter != null) {
                sessionExpiredPresenter.onBtnGoClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SessionExpiredPresenter sessionExpiredPresenter = SessionExpiredFragment.this.presenter;
            if (sessionExpiredPresenter != null) {
                sessionExpiredPresenter.onSendFeedback();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(SessionExpiredFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;", 0);
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
        SessionExpiredPresenter sessionExpiredPresenter = this.presenter;
        if (sessionExpiredPresenter != null) {
            sessionExpiredPresenter.onBackPressed();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutSessionExpiredBinding layoutSessionExpiredBinding = (LayoutSessionExpiredBinding) this.g.getValue(this, j[0]);
        Button button = layoutSessionExpiredBinding.btnGo;
        button.getClass();
        button.setOnClickListener(new lb7(new b()));
        TextView textView = layoutSessionExpiredBinding.tvAppVersion;
        Context context = getContext();
        textView.setText(context != null ? context.getString(R.string.app_version_placeholder, "2.14.5.79") : null);
        TextView textView2 = layoutSessionExpiredBinding.btnFeedback;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new c()));
    }

    public final SessionExpiredPresenter providePresenter() {
        return new SessionExpiredPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (kv) m2.c(kv.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView
    public final void showCouldntLogout() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.settings_page_couldnt_logout, view);
        }
        ((LayoutSessionExpiredBinding) this.g.getValue(this, j[0])).viewMessage.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            this.h = loadingDialogB;
            m(loadingDialogB);
        } else {
            LoadingDialog loadingDialog2 = this.h;
            if (loadingDialog2 != null) {
                loadingDialog2.dismiss();
            }
        }
    }

    @Override // com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView
    public final void startFeedback() {
        Context context = getContext();
        if (context != null) {
            qx6.a(context);
        }
    }
}
