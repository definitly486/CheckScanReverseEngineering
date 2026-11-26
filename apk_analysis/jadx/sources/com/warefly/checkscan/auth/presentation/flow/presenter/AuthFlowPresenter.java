package com.warefly.checkscan.auth.presentation.flow.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.auth.presentation.flow.view.AuthFlowView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.g6;
import defpackage.hx;
import defpackage.j59;
import defpackage.je6;
import defpackage.lk3;
import defpackage.lx;
import defpackage.me0;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ta8;

/* JADX INFO: loaded from: classes.dex */
public final class AuthFlowPresenter extends BasePresenter<AuthFlowView> {
    private final g6 accountState;
    private boolean isAuthorized;
    private final je6 postVerificationEvent;
    private final AuthReason reason;

    @bd2(c = "com.warefly.checkscan.auth.presentation.flow.presenter.AuthFlowPresenter$onFirstViewAttach$1", f = "AuthFlowPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<g6.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = AuthFlowPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(g6.a aVar, e02<? super j59> e02Var) {
            return ((a) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            AuthFlowPresenter.this.isAuthorized = !aa4.e((g6.a) this.l, g6.a.b.a);
            return j59.a;
        }
    }

    public AuthFlowPresenter(AuthReason authReason, g6 g6Var, je6 je6Var) {
        authReason.getClass();
        g6Var.getClass();
        je6Var.getClass();
        this.reason = authReason;
        this.accountState = g6Var;
        this.postVerificationEvent = je6Var;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        AuthReason authReason = this.reason;
        AuthReason.Login login = authReason instanceof AuthReason.Login ? (AuthReason.Login) authReason : null;
        String str = login != null ? login.d : null;
        if (this.isAuthorized && str != null && !ta8.M(str)) {
            je6 je6Var = this.postVerificationEvent;
            je6Var.getClass();
            je6Var.a.mo0trySendJP2dKIU(str);
        }
        super.onDestroy();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        lk3 lxVar;
        super.onFirstViewAttach();
        AuthFlowView authFlowView = (AuthFlowView) getViewState();
        if (authFlowView != null) {
            AuthReason authReason = this.reason;
            if (authReason instanceof AuthReason.Login) {
                lxVar = new lx(((AuthReason.Login) authReason).b);
            } else {
                if (!aa4.e(authReason, AuthReason.AddEmail.b)) {
                    me0.e();
                    return;
                }
                lxVar = hx.a;
            }
            authFlowView.setLaunchScreen(lxVar);
        }
        launchInPresenter(new df3(this.accountState.b, new a(null)));
    }
}
