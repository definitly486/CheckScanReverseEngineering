package com.warefly.checkscan.presentation.mailChange.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.a57;
import defpackage.b57;
import defpackage.c4;
import defpackage.cp2;
import defpackage.gh4;
import defpackage.i3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.mz7;
import defpackage.n3;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.o4;
import defpackage.p08;
import defpackage.py4;
import defpackage.qy4;
import defpackage.re1;
import defpackage.rj;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.xz7;

/* JADX INFO: loaded from: classes5.dex */
public final class MailChangePresenter extends BasePresenter<MailChangeView> {
    private final i3 accountDataFormatValidator;
    private final c4 accountInteractor;
    private final uf3 flowRouter;
    private final py4 mailChangeInteractor;
    private final jf6 preferencesRepository;

    public static final class a extends gh4 implements nl3<cp2, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            MailChangeView mailChangeView = (MailChangeView) MailChangePresenter.this.getViewState();
            if (mailChangeView != null) {
                mailChangeView.startChangeMail();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<c4.a, j59> {
        public final /* synthetic */ String g;

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[c4.a.values().length];
                try {
                    iArr[c4.a.BackendError.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[c4.a.NewUsernameSent.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[c4.a.UsernameNotFound.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[c4.a.AlreadyCreated.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
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
        public final j59 invoke(c4.a aVar) {
            c4.a aVar2 = aVar;
            int i = aVar2 == null ? -1 : a.a[aVar2.ordinal()];
            MailChangePresenter mailChangePresenter = MailChangePresenter.this;
            if (i == 1) {
                MailChangeView mailChangeView = (MailChangeView) mailChangePresenter.getViewState();
                if (mailChangeView != null) {
                    mailChangeView.showBackendError();
                }
            } else if (i == 2) {
                MailChangeView mailChangeView2 = (MailChangeView) mailChangePresenter.getViewState();
                String str = this.g;
                if (mailChangeView2 != null) {
                    mailChangeView2.showEmailSent(str);
                }
                mailChangePresenter.loadEmail(str);
            } else if (i == 3) {
                MailChangeView mailChangeView3 = (MailChangeView) mailChangePresenter.getViewState();
                if (mailChangeView3 != null) {
                    mailChangeView3.showNoSuchUser();
                }
            } else if (i != 4) {
                MailChangeView mailChangeView4 = (MailChangeView) mailChangePresenter.getViewState();
                if (mailChangeView4 != null) {
                    mailChangeView4.showNetworkError();
                }
            } else {
                MailChangeView mailChangeView5 = (MailChangeView) mailChangePresenter.getViewState();
                if (mailChangeView5 != null) {
                    mailChangeView5.showEmailUseAlready();
                }
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            MailChangeView mailChangeView = (MailChangeView) MailChangePresenter.this.getViewState();
            if (mailChangeView != null) {
                mailChangeView.showNetworkError();
            }
            return j59.a;
        }
    }

    public MailChangePresenter(i3 i3Var, c4 c4Var, jf6 jf6Var, py4 py4Var, uf3 uf3Var) {
        i3Var.getClass();
        c4Var.getClass();
        jf6Var.getClass();
        py4Var.getClass();
        uf3Var.getClass();
        this.accountDataFormatValidator = i3Var;
        this.accountInteractor = c4Var;
        this.preferencesRepository = jf6Var;
        this.mailChangeInteractor = py4Var;
        this.flowRouter = uf3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void changeMail$lambda$1(MailChangePresenter mailChangePresenter) {
        MailChangeView mailChangeView = (MailChangeView) mailChangePresenter.getViewState();
        if (mailChangeView != null) {
            mailChangeView.finishChangeMail();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadEmail(String str) {
        py4 py4Var = this.mailChangeInteractor;
        py4Var.getClass();
        str.getClass();
        if (str.length() != 0) {
            py4Var.b.onNext(str);
            py4Var.a.I(str);
        }
        MailChangeView mailChangeView = (MailChangeView) getViewState();
        if (mailChangeView != null) {
            mailChangeView.showMailUser(this.preferencesRepository.c0());
        }
    }

    public final void changeMail(String str) {
        str.getClass();
        int i = 1;
        if (!this.accountDataFormatValidator.c(str)) {
            MailChangeView mailChangeView = (MailChangeView) getViewState();
            if (mailChangeView != null) {
                mailChangeView.showIncorrectMailMessage(true);
                return;
            }
            return;
        }
        c4 c4Var = this.accountInteractor;
        c4Var.getClass();
        mz7<a57<b57>> mz7VarN = c4Var.b.n(ta8.f0(str).toString());
        n3 n3Var = new n3(o4.f);
        mz7VarN.getClass();
        cp2 cp2VarSubscribeIfPayloadIsFree = subscribeIfPayloadIsFree(new uz7(new xz7(new p08(mz7VarN, n3Var).i(ne7.c).f(rj.a()), new re1(new a(), i)), new qy4(this, 0)), new b(str), new c());
        if (cp2VarSubscribeIfPayloadIsFree != null) {
            BasePresenter.disposeOnDestroy$default(this, cp2VarSubscribeIfPayloadIsFree, null, 1, null);
        }
    }

    public final synchronized void checkMailInput(String str) {
        str.getClass();
        MailChangeView mailChangeView = (MailChangeView) getViewState();
        if (mailChangeView != null) {
            mailChangeView.showIncorrectMailMessage(!this.accountDataFormatValidator.c(str));
        }
    }

    public final void onBackPressed() {
        this.flowRouter.i();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadEmail(this.mailChangeInteractor.a.c0());
    }

    public final synchronized void onMailChange(String str) {
        try {
            str.getClass();
            boolean zC = this.accountDataFormatValidator.c(str);
            MailChangeView mailChangeView = (MailChangeView) getViewState();
            if (mailChangeView != null) {
                mailChangeView.setMailAllowed(zC);
            }
            MailChangeView mailChangeView2 = (MailChangeView) getViewState();
            if (mailChangeView2 != null) {
                mailChangeView2.showIncorrectMailMessage(!zC);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
