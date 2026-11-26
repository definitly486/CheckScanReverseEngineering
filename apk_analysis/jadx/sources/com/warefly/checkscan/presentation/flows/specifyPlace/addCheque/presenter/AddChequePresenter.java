package com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView;
import defpackage.a32;
import defpackage.ah7;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cp2;
import defpackage.df3;
import defpackage.e02;
import defpackage.fi7;
import defpackage.fu1;
import defpackage.gf9;
import defpackage.gh4;
import defpackage.gw6;
import defpackage.h08;
import defpackage.iv6;
import defpackage.j59;
import defpackage.k57;
import defpackage.kd;
import defpackage.lq1;
import defpackage.m13;
import defpackage.mg1;
import defpackage.ne7;
import defpackage.ng1;
import defpackage.nl3;
import defpackage.nq1;
import defpackage.nz6;
import defpackage.oq1;
import defpackage.p8;
import defpackage.pb2;
import defpackage.pg8;
import defpackage.q8;
import defpackage.qa8;
import defpackage.r57;
import defpackage.rj;
import defpackage.rm3;
import defpackage.tg1;
import defpackage.uf3;
import defpackage.wu6;
import defpackage.yf7;
import defpackage.yg1;
import defpackage.zd3;
import defpackage.zg1;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class AddChequePresenter extends BasePresenter<AddChequeView> {
    private p8 addChequeModel;
    private final fu1 authDisposables;
    private final long chequeRequestId;
    private final yg1 chequeRequestQueueInteractor;
    private final uf3 flowRouter;
    private final fi7 reason;
    private final String waitingQueueReceiptQr;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[fi7.values().length];
            try {
                iArr[fi7.AlreadyScanned.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fi7.NotCorrectFormat.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[fi7.FnsNotResponding.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[fi7.INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[fi7.NoShopReceived.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            AddChequeView addChequeView = (AddChequeView) AddChequePresenter.this.getViewState();
            if (addChequeView != null) {
                addChequeView.showCouldntDeleteCheque();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.presenter.AddChequePresenter$onFirstViewAttach$1", f = "AddChequePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<p8, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = AddChequePresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(p8 p8Var, e02<? super j59> e02Var) {
            return ((c) create(p8Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            gw6 receiptData;
            AddChequeView addChequeView;
            String strI;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            p8 p8Var = (p8) this.l;
            AddChequePresenter addChequePresenter = AddChequePresenter.this;
            addChequePresenter.addChequeModel = p8Var;
            AddChequeView addChequeView2 = (AddChequeView) addChequePresenter.getViewState();
            if (addChequeView2 != null) {
                pb2 pb2Var = pb2.a;
                String strA = p8Var.d.a();
                pb2Var.getClass();
                strA.getClass();
                try {
                    try {
                        Date date = ((SimpleDateFormat) pb2.l.getValue()).parse(strA);
                        date.getClass();
                        strI = pb2.i(date, true);
                        if (strI == null) {
                            strI = ((SimpleDateFormat) pb2.g.getValue()).format(date);
                        }
                        strI.getClass();
                    } catch (Exception unused) {
                        "Invalid dateString: ".concat(strA);
                        strA.getClass();
                        strI = strA;
                    }
                } catch (Exception unused2) {
                    Date date2 = ((SimpleDateFormat) pb2.m.getValue()).parse(strA);
                    date2.getClass();
                    String strI2 = pb2.i(date2, true);
                    if (strI2 == null) {
                        strI2 = ((SimpleDateFormat) pb2.g.getValue()).format(date2);
                    }
                    strA = strI2;
                    strA.getClass();
                    strI = strA;
                    addChequeView2.setToolbarTitle(strI);
                    addChequePresenter.onChequeViewIsShowed();
                    receiptData = addChequePresenter.toReceiptData(p8Var);
                    if (receiptData != null) {
                        addChequeView.showReceiptData(receiptData);
                    }
                    return j59.a;
                }
                addChequeView2.setToolbarTitle(strI);
            }
            addChequePresenter.onChequeViewIsShowed();
            receiptData = addChequePresenter.toReceiptData(p8Var);
            if (receiptData != null && (addChequeView = (AddChequeView) addChequePresenter.getViewState()) != null) {
                addChequeView.showReceiptData(receiptData);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<gf9, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(gf9 gf9Var) {
            gf9 gf9Var2 = gf9Var;
            new kd.g.d.c("CQ_TRY_AGAIN").a();
            AddChequePresenter addChequePresenter = AddChequePresenter.this;
            AddChequeView addChequeView = (AddChequeView) addChequePresenter.getViewState();
            if (addChequeView != null) {
                addChequeView.finishLoadingFNSStatus();
            }
            Integer numE = gf9Var2.e();
            if (gf9Var2.f() != nz6.CHEQUE_RECEIVED || numE == null) {
                addChequePresenter.onBackPressed();
            } else {
                addChequePresenter.openReceivedCheque(numE.intValue());
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
            AddChequePresenter addChequePresenter = AddChequePresenter.this;
            AddChequeView addChequeView = (AddChequeView) addChequePresenter.getViewState();
            if (addChequeView != null) {
                addChequeView.finishLoadingFNSStatus();
            }
            AddChequeView addChequeView2 = (AddChequeView) addChequePresenter.getViewState();
            if (addChequeView2 != null) {
                addChequeView2.showCouldntRefreshCheque();
            }
            return j59.a;
        }
    }

    public AddChequePresenter(uf3 uf3Var, String str, fi7 fi7Var, yg1 yg1Var, fu1 fu1Var, long j) {
        uf3Var.getClass();
        str.getClass();
        fi7Var.getClass();
        yg1Var.getClass();
        fu1Var.getClass();
        this.flowRouter = uf3Var;
        this.waitingQueueReceiptQr = str;
        this.reason = fi7Var;
        this.chequeRequestQueueInteractor = yg1Var;
        this.authDisposables = fu1Var;
        this.chequeRequestId = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onChequeViewIsShowed() {
        AddChequeView addChequeView;
        int i = a.a[this.reason.ordinal()];
        if (i == 1) {
            AddChequeView addChequeView2 = (AddChequeView) getViewState();
            if (addChequeView2 != null) {
                addChequeView2.showChequeAlreadyWasScanned();
                return;
            }
            return;
        }
        if (i == 2) {
            AddChequeView addChequeView3 = (AddChequeView) getViewState();
            if (addChequeView3 != null) {
                addChequeView3.showChequeNotCorrectFormat();
                return;
            }
            return;
        }
        if (i == 3) {
            AddChequeView addChequeView4 = (AddChequeView) getViewState();
            if (addChequeView4 != null) {
                addChequeView4.showFnsNotResponding();
                return;
            }
            return;
        }
        if (i != 4) {
            if (i == 5 && (addChequeView = (AddChequeView) getViewState()) != null) {
                addChequeView.showNoShopReceived();
                return;
            }
            return;
        }
        AddChequeView addChequeView5 = (AddChequeView) getViewState();
        if (addChequeView5 != null) {
            addChequeView5.showChequeInvalid();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openReceivedCheque(int i) {
        yg1 yg1Var = this.chequeRequestQueueInteractor;
        String str = this.waitingQueueReceiptQr;
        yg1Var.getClass();
        str.getClass();
        this.authDisposables.b(new nq1(yg1Var.a.a(str)).i(ne7.c).g());
        this.flowRouter.i();
        uf3 uf3Var = this.flowRouter;
        yf7 yf7Var = new yf7(i);
        uf3Var.getClass();
        uf3Var.c.d(yf7Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final gw6 toReceiptData(p8 p8Var) {
        Object aVar;
        Float fN;
        String str;
        Integer numD;
        gf9 gf9Var = p8Var.d;
        iv6 iv6Var = p8Var.c;
        String strD = gf9Var.d();
        try {
            aVar = wu6.b(wu6.a, strD);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        wu6.a aVar2 = (wu6.a) aVar;
        if (aVar2 == null) {
            return null;
        }
        String str2 = aVar2.c;
        String str3 = aVar2.e;
        String str4 = aVar2.d;
        String strC = iv6Var != null ? iv6Var.c() : null;
        if (this.reason == fi7.NoShopReceived) {
            str = strC;
            fN = (iv6Var == null || (numD = iv6Var.d()) == null) ? qa8.n(aVar2.b) : Float.valueOf(numD.intValue() / 100.0f);
        } else {
            String str5 = strC;
            fN = null;
            str = str5;
        }
        return new gw6(strD, str2, str3, str4, str, fN);
    }

    public final void deleteCheque() {
        yg1 yg1Var = this.chequeRequestQueueInteractor;
        String str = this.waitingQueueReceiptQr;
        yg1Var.getClass();
        str.getClass();
        lq1 lq1VarF = yg1Var.a.a(str).i(ne7.c).f(rj.a());
        q8 q8Var = new q8(new b(), 0);
        rm3.e eVar = rm3.d;
        rm3.d dVar = rm3.c;
        this.authDisposables.b(new oq1(lq1VarF, eVar, q8Var, dVar, dVar).g());
    }

    public final void editCheque() {
        deleteCheque();
        this.flowRouter.d(ah7.a);
    }

    public final void onBackPressed() {
        try {
            this.flowRouter.c();
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        yg1 yg1Var = this.chequeRequestQueueInteractor;
        launchInPresenter(m13.c(new df3(new ng1(zd3.c(yg1Var.a.c(this.chequeRequestId))), new c(null)), "getChequeByRequestId", null, 2));
    }

    public final void requestChequeAgain() {
        p8 p8Var = this.addChequeModel;
        if (p8Var != null) {
            AddChequeView addChequeView = (AddChequeView) getViewState();
            if (addChequeView != null) {
                addChequeView.loadUpdatingFNSStatus();
            }
            yg1 yg1Var = this.chequeRequestQueueInteractor;
            String strB = p8Var.b.b();
            String strName = p8Var.d.f().name();
            int i = (int) this.chequeRequestId;
            yg1Var.getClass();
            strB.getClass();
            strName.getClass();
            zg1 zg1Var = yg1Var.a;
            cp2 cp2VarSubscribeIfPayloadIsFree = subscribeIfPayloadIsFree(new h08(zg1Var.b(strB, strName).d(zg1Var.f(strB)), new mg1(new tg1(yg1Var, i, strName))).d(zg1Var.i(strB)).i(ne7.c).f(rj.a()), new d(), new e());
            if (cp2VarSubscribeIfPayloadIsFree != null) {
                BasePresenter.disposeOnDestroy$default(this, cp2VarSubscribeIfPayloadIsFree, null, 1, null);
            }
        }
    }
}
