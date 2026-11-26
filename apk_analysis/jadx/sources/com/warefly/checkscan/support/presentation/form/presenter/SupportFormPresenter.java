package com.warefly.checkscan.support.presentation.form.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.support.presentation.form.view.SupportFormView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.i57;
import defpackage.i83;
import defpackage.iw2;
import defpackage.j59;
import defpackage.j83;
import defpackage.jf6;
import defpackage.ni3;
import defpackage.pg8;
import defpackage.qf8;
import defpackage.r57;
import defpackage.s47;
import defpackage.s57;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.we8;
import defpackage.wo7;
import defpackage.xo7;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportFormPresenter extends BasePresenter<SupportFormView> {
    private String descriptionCache;
    private String emailCache;
    private final iw2 emailValidator;
    private final j83 fetchSupportFormScreenInfoUseCase;
    private boolean isEmailCorrectCheckbox;
    private String nameCache;
    private final jf6 preferencesRepository;
    private final s47 resourceProvider;
    private final qf8 router;
    private final xo7 sendSupportFormUseCase;

    @bd2(c = "com.warefly.checkscan.support.presentation.form.presenter.SupportFormPresenter$loadForm$1", f = "SupportFormPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends ni3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = SupportFormPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends ni3> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.c;
            SupportFormPresenter supportFormPresenter = SupportFormPresenter.this;
            if (z) {
                SupportFormView supportFormView = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView != null) {
                    supportFormView.showLoading(false);
                }
                SupportFormView supportFormView2 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView2 != null) {
                    supportFormView2.showError(false);
                }
                String strC0 = supportFormPresenter.preferencesRepository.c0();
                if (!supportFormPresenter.emailValidator.a(strC0)) {
                    strC0 = null;
                }
                if (strC0 == null) {
                    strC0 = "";
                }
                supportFormPresenter.emailCache = strC0;
                supportFormPresenter.nameCache = supportFormPresenter.preferencesRepository.getFullName();
                SupportFormView supportFormView3 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView3 != null) {
                    supportFormView3.setNameField(supportFormPresenter.nameCache);
                }
                SupportFormView supportFormView4 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView4 != null) {
                    supportFormView4.setEmailField(supportFormPresenter.emailCache);
                }
                SupportFormView supportFormView5 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView5 != null) {
                    supportFormView5.setScreenInfo((ni3) ((i57.c) i57Var).a);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                SupportFormView supportFormView6 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView6 != null) {
                    supportFormView6.showLoading(true);
                }
                SupportFormView supportFormView7 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView7 != null) {
                    supportFormView7.showError(false);
                }
            } else if (i57Var instanceof i57.a) {
                SupportFormView supportFormView8 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView8 != null) {
                    supportFormView8.showLoading(false);
                }
                SupportFormView supportFormView9 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView9 != null) {
                    supportFormView9.showError(true);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.support.presentation.form.presenter.SupportFormPresenter$onConfirmClicked$1", f = "SupportFormPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends we8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = SupportFormPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends we8> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.c;
            SupportFormPresenter supportFormPresenter = SupportFormPresenter.this;
            if (z) {
                SupportFormView supportFormView = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView != null) {
                    supportFormView.setButtonLoading(false);
                }
                we8 we8Var = (we8) ((i57.c) i57Var).a;
                if (we8Var.e) {
                    SupportFormView supportFormView2 = (SupportFormView) supportFormPresenter.getViewState();
                    if (supportFormView2 != null) {
                        supportFormView2.showFailBottomSheet(we8Var);
                    }
                } else {
                    SupportFormView supportFormView3 = (SupportFormView) supportFormPresenter.getViewState();
                    if (supportFormView3 != null) {
                        supportFormView3.showSuccessBottomSheet(we8Var);
                    }
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                SupportFormView supportFormView4 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView4 != null) {
                    supportFormView4.setButtonLoading(true);
                }
            } else if (i57Var instanceof i57.a) {
                SupportFormView supportFormView5 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView5 != null) {
                    supportFormView5.setButtonLoading(false);
                }
                SupportFormView supportFormView6 = (SupportFormView) supportFormPresenter.getViewState();
                if (supportFormView6 != null) {
                    supportFormView6.showFailBottomSheet(supportFormPresenter.defaultErrorResult());
                }
            }
            return j59.a;
        }
    }

    public SupportFormPresenter(iw2 iw2Var, jf6 jf6Var, s47 s47Var, qf8 qf8Var, j83 j83Var, xo7 xo7Var) {
        iw2Var.getClass();
        jf6Var.getClass();
        s47Var.getClass();
        qf8Var.getClass();
        j83Var.getClass();
        xo7Var.getClass();
        this.emailValidator = iw2Var;
        this.preferencesRepository = jf6Var;
        this.resourceProvider = s47Var;
        this.router = qf8Var;
        this.fetchSupportFormScreenInfoUseCase = j83Var;
        this.sendSupportFormUseCase = xo7Var;
        this.emailCache = "";
        this.descriptionCache = "";
        this.nameCache = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final we8 defaultErrorResult() {
        return new we8(null, this.resourceProvider.getString(R.string.support_form_send_error_title), this.resourceProvider.getString(R.string.support_form_send_error_description), this.resourceProvider.getString(R.string.support_form_send_error_button), true);
    }

    public final void loadForm() {
        j83 j83Var = this.fetchSupportFormScreenInfoUseCase;
        j83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new i83(j83Var, null))), new a(null)));
    }

    public final void onBackClicked() {
        this.router.a();
    }

    public final void onConfirmClicked() {
        boolean z;
        boolean z2 = true;
        if (this.emailValidator.a(this.emailCache)) {
            z = false;
        } else {
            SupportFormView supportFormView = (SupportFormView) getViewState();
            if (supportFormView != null) {
                supportFormView.showEmailError(true);
            }
            z = true;
        }
        if (!this.isEmailCorrectCheckbox) {
            SupportFormView supportFormView2 = (SupportFormView) getViewState();
            if (supportFormView2 != null) {
                supportFormView2.flashCheckboxError();
            }
            z = true;
        }
        if (ta8.M(this.descriptionCache)) {
            SupportFormView supportFormView3 = (SupportFormView) getViewState();
            if (supportFormView3 != null) {
                supportFormView3.showDescriptionError(true);
            }
        } else {
            z2 = z;
        }
        if (z2) {
            return;
        }
        xo7 xo7Var = this.sendSupportFormUseCase;
        String str = this.nameCache;
        String str2 = this.emailCache;
        String string = ta8.f0(this.descriptionCache).toString();
        xo7Var.getClass();
        str.getClass();
        str2.getClass();
        string.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new wo7(xo7Var, str, str2, string, null))), new b(null)));
    }

    public final void onDescriptionChanged(String str) {
        str.getClass();
        this.descriptionCache = str;
        SupportFormView supportFormView = (SupportFormView) getViewState();
        if (supportFormView != null) {
            supportFormView.showDescriptionError(false);
        }
    }

    public final void onEmailChanged(String str) {
        str.getClass();
        this.emailCache = str;
        SupportFormView supportFormView = (SupportFormView) getViewState();
        if (supportFormView != null) {
            supportFormView.showEmailError(false);
        }
    }

    public final void onEmailCorrectClick() {
        this.isEmailCorrectCheckbox = !this.isEmailCorrectCheckbox;
        SupportFormView supportFormView = (SupportFormView) getViewState();
        if (supportFormView != null) {
            supportFormView.setCheckbox(this.isEmailCorrectCheckbox);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadForm();
        if (this.nameCache.length() == 0) {
            SupportFormView supportFormView = (SupportFormView) getViewState();
            if (supportFormView != null) {
                supportFormView.setNameFocus();
                return;
            }
            return;
        }
        if (this.emailCache.length() == 0) {
            SupportFormView supportFormView2 = (SupportFormView) getViewState();
            if (supportFormView2 != null) {
                supportFormView2.setEmailFocus();
                return;
            }
            return;
        }
        SupportFormView supportFormView3 = (SupportFormView) getViewState();
        if (supportFormView3 != null) {
            supportFormView3.setDescriptionFocus();
        }
    }

    public final void onNameChanged(String str) {
        str.getClass();
        this.nameCache = str;
    }
}
