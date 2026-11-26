package com.warefly.checkscan.presentation.phoneChange.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.b41;
import defpackage.c41;
import defpackage.ca0;
import defpackage.cp2;
import defpackage.ct6;
import defpackage.cw1;
import defpackage.gh4;
import defpackage.gl3;
import defpackage.i3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.l76;
import defpackage.m76;
import defpackage.n00;
import defpackage.ne7;
import defpackage.ni7;
import defpackage.nl3;
import defpackage.rj;
import defpackage.s47;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.xv1;
import defpackage.xz7;
import defpackage.yb8;

/* JADX INFO: loaded from: classes5.dex */
public final class PhoneChangePresenter extends BasePresenter<PhoneChangeView> {
    private final i3 accountDataFormatValidator;
    private final ca0 bankInteractor;
    private final uf3 flowRouter;
    private final ct6<String> phoneSubject;
    private final jf6 preferencesRepository;
    private final s47 resourceProvider;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            PhoneChangePresenter.this.sendRequestForChangePhone(this.g);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<c41, j59> {
        public final /* synthetic */ String g;

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[b41.values().length];
                try {
                    iArr[b41.NOT_REGISTERED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[b41.API_BANK_NOT_REGISTERED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(c41 c41Var) {
            int i = a.a[c41Var.a.ordinal()];
            PhoneChangePresenter phoneChangePresenter = PhoneChangePresenter.this;
            if (i == 1 || i == 2) {
                phoneChangePresenter.sendRequestForChangePhone(this.g);
            } else {
                PhoneChangeView phoneChangeView = (PhoneChangeView) phoneChangePresenter.getViewState();
                if (phoneChangeView != null) {
                    phoneChangeView.showUnEnableChangePhone();
                }
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<String, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            PhoneChangePresenter phoneChangePresenter = PhoneChangePresenter.this;
            PhoneChangeView phoneChangeView = (PhoneChangeView) phoneChangePresenter.getViewState();
            if (phoneChangeView != null) {
                i3 i3Var = phoneChangePresenter.accountDataFormatValidator;
                str2.getClass();
                phoneChangeView.showIncorrectPhoneMessage(!i3Var.d(str2));
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<cp2, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            PhoneChangeView phoneChangeView = (PhoneChangeView) PhoneChangePresenter.this.getViewState();
            if (phoneChangeView != null) {
                phoneChangeView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            PhoneChangePresenter phoneChangePresenter = PhoneChangePresenter.this;
            PhoneChangeView phoneChangeView = (PhoneChangeView) phoneChangePresenter.getViewState();
            if (phoneChangeView != null) {
                phoneChangeView.showFailService(phoneChangePresenter.resourceProvider.getString(R.string.some_error));
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<xv1, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(xv1 xv1Var) {
            xv1 xv1Var2 = xv1Var;
            boolean z = xv1Var2 instanceof xv1.c;
            PhoneChangePresenter phoneChangePresenter = PhoneChangePresenter.this;
            if (z) {
                uf3 uf3Var = phoneChangePresenter.flowRouter;
                int i = ((xv1.c) xv1Var2).a;
                uf3Var.h(new ni7(this.g, gl3.PHONE_CHANGE, i));
            } else if (xv1Var2 instanceof xv1.b) {
                PhoneChangeView phoneChangeView = (PhoneChangeView) phoneChangePresenter.getViewState();
                if (phoneChangeView != null) {
                    phoneChangeView.showFailService(phoneChangePresenter.resourceProvider.getString(R.string.fragment_change_number_already_taken_error));
                }
            } else if (xv1Var2 instanceof xv1.a) {
                PhoneChangeView phoneChangeView2 = (PhoneChangeView) phoneChangePresenter.getViewState();
                if (phoneChangeView2 != null) {
                    phoneChangeView2.showUnEnableChangePhone();
                }
            } else if (xv1Var2 instanceof xv1.d) {
                PhoneChangeView phoneChangeView3 = (PhoneChangeView) phoneChangePresenter.getViewState();
                if (phoneChangeView3 != null) {
                    phoneChangeView3.showTimesNotExpired();
                }
            } else {
                PhoneChangeView phoneChangeView4 = (PhoneChangeView) phoneChangePresenter.getViewState();
                if (phoneChangeView4 != null) {
                    phoneChangeView4.showFailService(phoneChangePresenter.resourceProvider.getString(R.string.some_error));
                }
            }
            return j59.a;
        }
    }

    public PhoneChangePresenter(jf6 jf6Var, i3 i3Var, ca0 ca0Var, uf3 uf3Var, s47 s47Var) {
        jf6Var.getClass();
        i3Var.getClass();
        ca0Var.getClass();
        uf3Var.getClass();
        s47Var.getClass();
        this.preferencesRepository = jf6Var;
        this.accountDataFormatValidator = i3Var;
        this.bankInteractor = ca0Var;
        this.flowRouter = uf3Var;
        this.resourceProvider = s47Var;
        this.phoneSubject = new ct6<>();
    }

    private final void requestCode(String str) {
        int i = 0;
        disposeOnDestroy(yb8.d(new uz7(new xz7(this.bankInteractor.b(str, cw1.SMS).i(ne7.c).f(rj.a()), new l76(new d(), i)), new m76(this, i)), new e(), new f(str)), "requestCode");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestCode$lambda$1(PhoneChangePresenter phoneChangePresenter) {
        PhoneChangeView phoneChangeView = (PhoneChangeView) phoneChangePresenter.getViewState();
        if (phoneChangeView != null) {
            phoneChangeView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequestForChangePhone(String str) {
        requestCode(str);
    }

    public final void changePhone(String str) {
        str.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(this.bankInteractor.a().i(ne7.c).f(rj.a()), new a(str), new b(str)), null, 1, null);
    }

    public final synchronized void checkPhoneInput(String str) {
        str.getClass();
        PhoneChangeView phoneChangeView = (PhoneChangeView) getViewState();
        if (phoneChangeView != null) {
            phoneChangeView.showIncorrectPhoneMessage(!this.accountDataFormatValidator.d(str));
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        PhoneChangeView phoneChangeView = (PhoneChangeView) getViewState();
        if (phoneChangeView != null) {
            phoneChangeView.showAccountPhone(this.preferencesRepository.U0());
        }
        BasePresenter.disposeOnDestroy$default(this, yb8.i(this.phoneSubject.h(n00.LATEST).h(ne7.c).c(rj.a()), new c(), 3), null, 1, null);
    }

    public final void onPhoneChanged(String str) {
        str.getClass();
        this.phoneSubject.onNext(str);
    }
}
