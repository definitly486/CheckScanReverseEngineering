package com.warefly.checkscan.presentation.electrocheque.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.e;
import defpackage.c4;
import defpackage.e18;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.mj1;
import defpackage.n37;
import defpackage.ne7;
import defpackage.nj1;
import defpackage.nl3;
import defpackage.qx1;
import defpackage.r08;
import defpackage.ra8;
import defpackage.rj;
import defpackage.sk1;
import defpackage.sv2;
import defpackage.tv2;
import defpackage.uf3;
import defpackage.um6;
import defpackage.uv2;
import defpackage.xv2;
import defpackage.z89;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class WebViewFragmentPresenter extends BasePresenter<WebViewFragmentView> {
    private final c4 accountInteractor;
    private final uv2 electrochequeInteractor;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;

    public static final class a extends gh4 implements nl3<n37, j59> {
        public static final a f = new a(1);

        @Override // defpackage.nl3
        public final j59 invoke(n37 n37Var) {
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            WebViewFragmentView webViewFragmentView = (WebViewFragmentView) WebViewFragmentPresenter.this.getViewState();
            if (webViewFragmentView != null) {
                webViewFragmentView.showToastMessage(R.string.network_error);
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
            WebViewFragmentPresenter webViewFragmentPresenter = WebViewFragmentPresenter.this;
            WebViewFragmentView webViewFragmentView = (WebViewFragmentView) webViewFragmentPresenter.getViewState();
            if (webViewFragmentView != null) {
                str2.getClass();
                webViewFragmentView.loadUrl(ra8.y(ra8.y(str2, "<body>", ""), "</body>", ""));
            }
            webViewFragmentPresenter.bindUser(ra8.y(webViewFragmentPresenter.accountInteractor.a.U0(), "+", ""));
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            WebViewFragmentView webViewFragmentView = (WebViewFragmentView) WebViewFragmentPresenter.this.getViewState();
            if (webViewFragmentView != null) {
                webViewFragmentView.showToastMessage(R.string.network_error);
            }
            return j59.a;
        }
    }

    public WebViewFragmentPresenter(uf3 uf3Var, uv2 uv2Var, c4 c4Var, jf6 jf6Var) {
        uf3Var.getClass();
        uv2Var.getClass();
        c4Var.getClass();
        jf6Var.getClass();
        this.flowRouter = uf3Var;
        this.electrochequeInteractor = uv2Var;
        this.accountInteractor = c4Var;
        this.preferencesRepository = jf6Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindUser(String str) {
        uv2 uv2Var = this.electrochequeInteractor;
        uv2Var.getClass();
        str.getClass();
        r08 r08VarF = uv2Var.a.e(str).i(ne7.c).f(rj.a());
        z89 z89Var = new z89(a.f, 1);
        final b bVar = new b();
        BasePresenter.disposeOnDestroy$default(this, r08VarF.g(z89Var, new qx1() { // from class: rg9
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                bVar.invoke(obj);
            }
        }), null, 1, null);
    }

    @Override // defpackage.ih5
    public void attachView(WebViewFragmentView webViewFragmentView) {
        super.attachView(webViewFragmentView);
        this.preferencesRepository.b();
    }

    public final void getUrl() {
        BasePresenter.disposeOnDestroy$default(this, this.electrochequeInteractor.a.getUrl().i(ne7.c).f(rj.a()).g(new mj1(new c(), 1), new nj1(new d(), 2)), null, 1, null);
    }

    public final void loadReceipts(String str) {
        str.getClass();
        uv2 uv2Var = this.electrochequeInteractor;
        uv2Var.getClass();
        Calendar calendar = Calendar.getInstance();
        String str2 = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        str2.getClass();
        calendar.add(1, -1);
        calendar.add(2, -6);
        String str3 = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        xv2 xv2Var = uv2Var.a;
        str3.getClass();
        e18 e18VarI = xv2Var.d(str3, str2, "Bearer ".concat(str)).i(ne7.c);
        final sv2 sv2Var = new sv2(uv2Var, str);
        BasePresenter.disposeOnTermination$default(this, e18VarI.g(new qx1() { // from class: pv2
            @Override // defpackage.qx1
            public final void accept(Object obj) throws Exception {
                sv2Var.invoke(obj);
            }
        }, new sk1(tv2.f, 1)), null, 1, null);
    }

    public final void onBackPressed() {
        this.flowRouter.a(um6.a);
    }

    public final void openBonuses() {
        this.preferencesRepository.j0(true);
        this.flowRouter.f(e.a);
    }

    public final void sendIsElectroUser(boolean z) {
        this.electrochequeInteractor.b.b(z);
    }

    public final void setUserRegistered(boolean z) {
        this.preferencesRepository.j0(z);
    }
}
