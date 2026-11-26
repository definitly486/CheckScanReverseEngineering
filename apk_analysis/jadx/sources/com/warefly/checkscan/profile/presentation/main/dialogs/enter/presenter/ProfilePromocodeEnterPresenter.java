package com.warefly.checkscan.profile.presentation.main.dialogs.enter.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.i57;
import defpackage.j59;
import defpackage.j6;
import defpackage.k6;
import defpackage.kd;
import defpackage.m6;
import defpackage.me0;
import defpackage.o6;
import defpackage.pg8;
import defpackage.q6;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfilePromocodeEnterPresenter extends BasePresenter<ProfilePromocodeEnterView> {
    private final k6 activateAccountPromocodeUseCase;
    private String promocodeEntered;

    @bd2(c = "com.warefly.checkscan.profile.presentation.main.dialogs.enter.presenter.ProfilePromocodeEnterPresenter$onPromocodeButtonActivate$1", f = "ProfilePromocodeEnterPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends o6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = ProfilePromocodeEnterPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends o6> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            ProfilePromocodeEnterPresenter profilePromocodeEnterPresenter = ProfilePromocodeEnterPresenter.this;
            if (z) {
                ProfilePromocodeEnterView profilePromocodeEnterView = (ProfilePromocodeEnterView) profilePromocodeEnterPresenter.getViewState();
                if (profilePromocodeEnterView != null) {
                    profilePromocodeEnterView.showPromocodeError(true, null);
                }
                ProfilePromocodeEnterView profilePromocodeEnterView2 = (ProfilePromocodeEnterView) profilePromocodeEnterPresenter.getViewState();
                if (profilePromocodeEnterView2 != null) {
                    profilePromocodeEnterView2.showButtonLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                ProfilePromocodeEnterView profilePromocodeEnterView3 = (ProfilePromocodeEnterView) profilePromocodeEnterPresenter.getViewState();
                if (profilePromocodeEnterView3 != null) {
                    profilePromocodeEnterView3.showButtonLoading(true);
                }
                ProfilePromocodeEnterView profilePromocodeEnterView4 = (ProfilePromocodeEnterView) profilePromocodeEnterPresenter.getViewState();
                if (profilePromocodeEnterView4 != null) {
                    profilePromocodeEnterView4.showPromocodeError(false, null);
                }
            } else if (i57Var instanceof i57.c) {
                ProfilePromocodeEnterView profilePromocodeEnterView5 = (ProfilePromocodeEnterView) profilePromocodeEnterPresenter.getViewState();
                if (profilePromocodeEnterView5 != null) {
                    profilePromocodeEnterView5.showPromocodeError(false, null);
                }
                ProfilePromocodeEnterView profilePromocodeEnterView6 = (ProfilePromocodeEnterView) profilePromocodeEnterPresenter.getViewState();
                if (profilePromocodeEnterView6 != null) {
                    profilePromocodeEnterView6.showButtonLoading(false);
                }
                profilePromocodeEnterPresenter.handlePromocodeActivationResult((o6) ((i57.c) i57Var).a);
            }
            return j59.a;
        }
    }

    public ProfilePromocodeEnterPresenter(k6 k6Var) {
        k6Var.getClass();
        this.activateAccountPromocodeUseCase = k6Var;
        this.promocodeEntered = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j59 handlePromocodeActivationResult(o6 o6Var) {
        if (o6Var instanceof q6) {
            ProfilePromocodeEnterView profilePromocodeEnterView = (ProfilePromocodeEnterView) getViewState();
            if (profilePromocodeEnterView != null) {
                profilePromocodeEnterView.showPromocodeSuccessBottomSheet((q6) o6Var);
            }
            ProfilePromocodeEnterView profilePromocodeEnterView2 = (ProfilePromocodeEnterView) getViewState();
            if (profilePromocodeEnterView2 == null) {
                return null;
            }
            profilePromocodeEnterView2.dismissSheet();
            return j59.a;
        }
        if (!(o6Var instanceof m6)) {
            me0.e();
            return null;
        }
        ProfilePromocodeEnterView profilePromocodeEnterView3 = (ProfilePromocodeEnterView) getViewState();
        if (profilePromocodeEnterView3 == null) {
            return null;
        }
        profilePromocodeEnterView3.showPromocodeError(true, ((m6) o6Var).b);
        return j59.a;
    }

    public final void onPromocodeButtonActivate() {
        new kd.a.f.C0226a(this.promocodeEntered).a();
        k6 k6Var = this.activateAccountPromocodeUseCase;
        String str = this.promocodeEntered;
        k6Var.getClass();
        str.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new j6(k6Var, str, "PROFILE", null))), new a(null)));
    }

    public final void onPromocodeTextChanged(String str) {
        str.getClass();
        kd.a.f.c.e.a();
        this.promocodeEntered = str;
    }
}
