package com.warefly.checkscan.auth.presentation.addEmail.presenter;

import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fw2;
import defpackage.iw2;
import defpackage.j59;
import defpackage.jw2;
import defpackage.kx;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s22;
import defpackage.uf3;
import defpackage.y22;
import defpackage.z8;

/* JADX INFO: loaded from: classes.dex */
public final class AddEmailPresenter extends BasePresenter<AddEmailView> {
    private final z8 addEmailUseCase;
    private String emailCache;
    private String emailForWhichCodeSend;
    private final iw2 emailValidator;
    private final uf3 flowRouter;

    public static final class a extends b0 implements s22 {
        public a() {
            super(s22.a.b);
        }

        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
            AddEmailPresenter addEmailPresenter = AddEmailPresenter.this;
            AddEmailView addEmailView = (AddEmailView) addEmailPresenter.getViewState();
            if (addEmailView != null) {
                addEmailView.showButtonLoading(false);
            }
            AddEmailView addEmailView2 = (AddEmailView) addEmailPresenter.getViewState();
            if (addEmailView2 != null) {
                addEmailView2.showEmailUnknownError();
            }
        }
    }

    @bd2(c = "com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter$onAddEmailClicked$2", f = "AddEmailPresenter.kt", l = {39}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return AddEmailPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            AddEmailView addEmailView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            AddEmailPresenter addEmailPresenter = AddEmailPresenter.this;
            if (i == 0) {
                r57.b(obj);
                AddEmailView addEmailView2 = (AddEmailView) addEmailPresenter.getViewState();
                if (addEmailView2 != null) {
                    addEmailView2.showButtonLoading(true);
                }
                z8 z8Var = addEmailPresenter.addEmailUseCase;
                String str = addEmailPresenter.emailCache;
                this.l = 1;
                obj = z8Var.a.d(str, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            fw2 fw2Var = (fw2) obj;
            AddEmailView addEmailView3 = (AddEmailView) addEmailPresenter.getViewState();
            if (addEmailView3 != null) {
                addEmailView3.showButtonLoading(false);
            }
            if (fw2Var instanceof fw2.a) {
                addEmailPresenter.emailForWhichCodeSend = addEmailPresenter.emailCache;
                addEmailPresenter.flowRouter.j(new kx(addEmailPresenter.emailCache, jw2.AddEmail));
            } else if (aa4.e(fw2Var, fw2.c.a)) {
                AddEmailView addEmailView4 = (AddEmailView) addEmailPresenter.getViewState();
                if (addEmailView4 != null) {
                    addEmailView4.showEmailPlacedError();
                }
            } else if (aa4.e(fw2Var, fw2.b.a)) {
                AddEmailView addEmailView5 = (AddEmailView) addEmailPresenter.getViewState();
                if (addEmailView5 != null) {
                    addEmailView5.showEmailTimeoutError();
                }
            } else if (aa4.e(fw2Var, fw2.d.a) && (addEmailView = (AddEmailView) addEmailPresenter.getViewState()) != null) {
                addEmailView.showEmailUnknownError();
            }
            return j59.a;
        }
    }

    public AddEmailPresenter(uf3 uf3Var, iw2 iw2Var, z8 z8Var) {
        uf3Var.getClass();
        iw2Var.getClass();
        z8Var.getClass();
        this.flowRouter = uf3Var;
        this.emailValidator = iw2Var;
        this.addEmailUseCase = z8Var;
        this.emailCache = "";
        this.emailForWhichCodeSend = "";
    }

    public final void onAddEmailClicked() {
        if (this.emailValidator.a(this.emailCache)) {
            av0.c(getPresenterScope(), new a(), null, new b(null), 2);
            return;
        }
        AddEmailView addEmailView = (AddEmailView) getViewState();
        if (addEmailView != null) {
            addEmailView.showEmailFormatError(true);
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    public final void onEmailChanged(String str) {
        str.getClass();
        this.emailCache = str;
        AddEmailView addEmailView = (AddEmailView) getViewState();
        if (addEmailView != null) {
            addEmailView.showEmailFormatError(false);
        }
    }
}
