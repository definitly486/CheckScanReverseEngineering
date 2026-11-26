package com.warefly.checkscan.presentation.scanner.presenter;

import android.os.Bundle;
import android.util.Log;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.scanner.view.ScannerView;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import defpackage.a32;
import defpackage.ah;
import defpackage.ah7;
import defpackage.aq1;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bi7;
import defpackage.bm3;
import defpackage.de3;
import defpackage.df3;
import defpackage.df7;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.g86;
import defpackage.gh4;
import defpackage.gk6;
import defpackage.hd3;
import defpackage.hv6;
import defpackage.ic8;
import defpackage.id3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k57;
import defpackage.kd;
import defpackage.kh1;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.lk3;
import defpackage.ll3;
import defpackage.me0;
import defpackage.ne7;
import defpackage.oi2;
import defpackage.pb2;
import defpackage.pg8;
import defpackage.px;
import defpackage.qa8;
import defpackage.qn1;
import defpackage.qo2;
import defpackage.qq1;
import defpackage.r57;
import defpackage.rj;
import defpackage.s47;
import defpackage.ta8;
import defpackage.tf7;
import defpackage.uf3;
import defpackage.up1;
import defpackage.uy4;
import defpackage.vd7;
import defpackage.wu6;
import defpackage.xg5;
import defpackage.y22;
import defpackage.yb8;
import defpackage.yg1;
import defpackage.yg7;
import defpackage.yk2;
import defpackage.z22;
import defpackage.zh7;
import defpackage.zu6;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerPresenter extends BasePresenter<ScannerView> implements zu6, g86.a {
    private final vd7 args;
    private final yg1 chequeRequestQueueInteractor;
    private final xg5<List<String>> chequesFlow;
    private final uf3 flowRouter;
    private final xg5<Boolean> isShowAllCheques;
    private final jf6 preferences;
    private final s47 resourceProvider;
    private final ic8 subscriptionInteractor;
    private final boolean zeroScanned;

    public static final class a extends gh4 implements ll3<j59> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            new kd.g.d.a("CQ_ADDED").a();
            ScannerPresenter scannerPresenter = ScannerPresenter.this;
            av0.c(scannerPresenter.getPresenterScope(), null, null, new com.warefly.checkscan.presentation.scanner.presenter.a(scannerPresenter, null), 3);
            return j59.a;
        }
    }

    public static final class b implements hd3<Boolean> {
        public final /* synthetic */ df3 b;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$b$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onFirstViewAttach$$inlined$filter$1$2", f = "ScannerPresenter.kt", l = {217}, m = "emit")
            public static final class C0170a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0170a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(id3 id3Var) {
                this.b = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0170a c0170a;
                if (e02Var instanceof C0170a) {
                    c0170a = (C0170a) e02Var;
                    int i = c0170a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0170a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0170a = new C0170a(e02Var);
                    }
                } else {
                    c0170a = new C0170a(e02Var);
                }
                Object obj2 = c0170a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0170a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    if (((Boolean) obj).booleanValue()) {
                        c0170a.m = 1;
                        if (this.b.emit(obj, c0170a) == a32Var) {
                            return a32Var;
                        }
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj2);
                }
                return j59.a;
            }
        }

        public b(df3 df3Var) {
            this.b = df3Var;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super Boolean> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    public static final class c implements hd3<List<? extends kh1>> {
        public final /* synthetic */ b b;
        public final /* synthetic */ ScannerPresenter c;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;
            public final /* synthetic */ ScannerPresenter c;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$c$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onFirstViewAttach$$inlined$map$1$2", f = "ScannerPresenter.kt", l = {217}, m = "emit")
            public static final class C0171a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0171a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(id3 id3Var, ScannerPresenter scannerPresenter) {
                this.b = id3Var;
                this.c = scannerPresenter;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0171a c0171a;
                if (e02Var instanceof C0171a) {
                    c0171a = (C0171a) e02Var;
                    int i = c0171a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0171a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0171a = new C0171a(e02Var);
                    }
                } else {
                    c0171a = new C0171a(e02Var);
                }
                Object obj2 = c0171a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0171a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    ((Boolean) obj).getClass();
                    ScannerPresenter scannerPresenter = this.c;
                    Iterable iterable = (Iterable) scannerPresenter.chequesFlow.getValue();
                    ArrayList arrayList = new ArrayList(kn1.q(iterable, 10));
                    Iterator<T> it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new kh1(scannerPresenter.getInfoByQr((String) it.next())));
                    }
                    List listJ0 = qn1.j0(arrayList);
                    c0171a.m = 1;
                    if (this.b.emit(listJ0, c0171a) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj2);
                }
                return j59.a;
            }
        }

        public c(b bVar, ScannerPresenter scannerPresenter) {
            this.b = bVar;
            this.c = scannerPresenter;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super List<? extends kh1>> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var, this.c), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onFirstViewAttach$1", f = "ScannerPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<List<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = ScannerPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends String> list, e02<? super j59> e02Var) {
            return ((d) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List list = (List) this.l;
            if (!list.isEmpty()) {
                ScannerPresenter scannerPresenter = ScannerPresenter.this;
                ScannerView scannerView = (ScannerView) scannerPresenter.getViewState();
                if (scannerView != null) {
                    scannerView.handleMessageVisibility(false);
                }
                ScannerView scannerView2 = (ScannerView) scannerPresenter.getViewState();
                if (scannerView2 != null) {
                    scannerView2.showLoadButton();
                }
                scannerPresenter.isShowAllCheques.setValue(Boolean.FALSE);
                String infoByQr = scannerPresenter.getInfoByQr((String) qn1.b0(list));
                if (ta8.M(infoByQr)) {
                    return j59.a;
                }
                if (list.size() > 1) {
                    ScannerView scannerView3 = (ScannerView) scannerPresenter.getViewState();
                    if (scannerView3 != null) {
                        scannerView3.showLastChequeInfo(infoByQr, list.size());
                    }
                } else {
                    ScannerView scannerView4 = (ScannerView) scannerPresenter.getViewState();
                    if (scannerView4 != null) {
                        scannerView4.showLastChequeInfo(infoByQr);
                    }
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onFirstViewAttach$2", f = "ScannerPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = ScannerPresenter.this.new e(e02Var);
            eVar.l = ((Boolean) obj).booleanValue();
            return eVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((e) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            boolean z = this.l;
            ScannerView scannerView = (ScannerView) ScannerPresenter.this.getViewState();
            if (scannerView != null) {
                scannerView.handleChequesListVisible(z);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onFirstViewAttach$5", f = "ScannerPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<List<? extends kh1>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = ScannerPresenter.this.new f(e02Var);
            fVar.l = obj;
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends kh1> list, e02<? super j59> e02Var) {
            return ((f) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<kh1> list = (List) this.l;
            ScannerView scannerView = (ScannerView) ScannerPresenter.this.getViewState();
            if (scannerView != null) {
                scannerView.setCheques(list);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onQrCodesDetectedOnCroppedImage$1", f = "ScannerPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<List<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = ScannerPresenter.this.new g(e02Var);
            gVar.l = obj;
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends String> list, e02<? super j59> e02Var) {
            return ((g) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<String> list = (List) this.l;
            boolean zIsEmpty = list.isEmpty();
            ScannerPresenter scannerPresenter = ScannerPresenter.this;
            if (zIsEmpty) {
                scannerPresenter.showSomeSecondsErrorMessage();
            } else {
                scannerPresenter.onQrsDetected(list);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onQrCodesDetectedOnCroppedImage$2", f = "ScannerPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class h extends pg8 implements dm3<id3<? super List<? extends String>>, Throwable, e02<? super j59>, Object> {
        public h(e02<? super h> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super List<? extends String>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return ScannerPresenter.this.new h(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ScannerPresenter.this.showSomeSecondsErrorMessage();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$showSomeSecondsErrorMessage$1", f = "ScannerPresenter.kt", l = {150}, m = "invokeSuspend")
    public static final class i extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public i(e02<? super i> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ScannerPresenter.this.new i(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((i) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            ScannerView scannerView;
            ScannerView scannerView2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            ScannerPresenter scannerPresenter = ScannerPresenter.this;
            if (i == 0) {
                r57.b(obj);
                ScannerView scannerView3 = (ScannerView) scannerPresenter.getViewState();
                if (scannerView3 != null) {
                    scannerView3.handleErrorMessage(true);
                }
                if (((List) scannerPresenter.chequesFlow.getValue()).isEmpty() && (scannerView = (ScannerView) scannerPresenter.getViewState()) != null) {
                    scannerView.handleMessageVisibility(false);
                }
                this.l = 1;
                if (yk2.b(2000L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ScannerView scannerView4 = (ScannerView) scannerPresenter.getViewState();
            if (scannerView4 != null) {
                scannerView4.handleErrorMessage(false);
            }
            if (((List) scannerPresenter.chequesFlow.getValue()).isEmpty() && (scannerView2 = (ScannerView) scannerPresenter.getViewState()) != null) {
                scannerView2.handleMessageVisibility(true);
            }
            return j59.a;
        }
    }

    public ScannerPresenter(uf3 uf3Var, s47 s47Var, jf6 jf6Var, yg1 yg1Var, vd7 vd7Var, ic8 ic8Var) {
        uf3Var.getClass();
        s47Var.getClass();
        jf6Var.getClass();
        yg1Var.getClass();
        vd7Var.getClass();
        ic8Var.getClass();
        this.flowRouter = uf3Var;
        this.resourceProvider = s47Var;
        this.preferences = jf6Var;
        this.chequeRequestQueueInteractor = yg1Var;
        this.args = vd7Var;
        this.subscriptionInteractor = ic8Var;
        this.chequesFlow = px.a(kx2.b);
        this.isShowAllCheques = px.a(Boolean.FALSE);
        this.zeroScanned = jf6Var.f() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getInfoByQr(String str) {
        Object aVar;
        wu6 wu6Var = wu6.a;
        b36 b36Var = new b36(Long.valueOf(this.args.b), this.args.c);
        wu6Var.getClass();
        wu6.a aVarA = wu6.a(str, b36Var);
        this.chequeRequestQueueInteractor.a(aVarA.a());
        try {
            Date dateB = aVarA.b();
            dateB.getClass();
            pb2.a.getClass();
            aVar = ((SimpleDateFormat) pb2.f.getValue()).format(dateB);
            aVar.getClass();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        String str2 = (String) aVar;
        Float fN = qa8.n(aVarA.b);
        return (str2 == null || fN == null) ? new String() : me0.c(this.resourceProvider.b(fN), "\nот ", str2);
    }

    private final void loadCheques(List<String> list) {
        Object aVar;
        qq1 qq1VarC;
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                disposeOnTermination(yb8.g(new up1(arrayList).i(ne7.c).f(rj.a()), null, new a(), 1), "sendChequeRequest");
                return;
            }
            String str = (String) it.next();
            try {
                wu6 wu6Var = wu6.a;
                b36 b36Var = new b36(Long.valueOf(this.args.b), this.args.c);
                wu6Var.getClass();
                aVar = wu6.a(str, b36Var).a();
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            hv6 hv6Var = (hv6) (aVar instanceof k57.a ? null : aVar);
            if (hv6Var != null) {
                qq1VarC = this.chequeRequestQueueInteractor.c(hv6Var);
            } else {
                qq1VarC = aq1.b;
                qq1VarC.getClass();
            }
            arrayList.add(qq1VarC);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSomeSecondsErrorMessage() {
        oi2 oi2Var = qo2.a;
        av0.c(z22.a(uy4.a), null, null, new i(null), 3);
    }

    public final void onBrandlinkClick() {
        kd.h.b.a.e.a();
        jf6 jf6Var = this.preferences;
        jf6Var.getClass();
        if (jf6Var.Q0()) {
            this.flowRouter.c.f((df7[]) Arrays.copyOf(new lk3[]{com.warefly.checkscan.presentation.e.a, new gk6(ProductsReason.Main.b)}, 2));
            return;
        }
        boolean Z = this.preferences.Z();
        uf3 uf3Var = this.flowRouter;
        if (!Z) {
            uf3Var.j(new tf7(0, 255, null, null, null));
        } else {
            com.warefly.checkscan.presentation.f fVar = new com.warefly.checkscan.presentation.f(Deeplink.Desktop.ProductsDeeplink.c);
            uf3Var.getClass();
            uf3Var.c.g(fVar);
        }
    }

    public final void onChequeClick() {
        this.isShowAllCheques.setValue(Boolean.valueOf(this.chequesFlow.getValue().size() > 1));
    }

    @Override // g86.a
    public void onCropError() {
        ScannerView scannerView = (ScannerView) getViewState();
        if (scannerView != null) {
            scannerView.showCropError();
        }
    }

    public final void onExitClicked() {
        new kd.g.a.f("QR_CODE_READ_CANCELLED").a();
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        ScannerView scannerView;
        ScannerView scannerView2;
        super.onFirstViewAttach();
        if (!this.zeroScanned && (scannerView2 = (ScannerView) getViewState()) != null) {
            scannerView2.setLoadButtonText(this.resourceProvider.getString(R.string.scanner_button_load_title_many));
        }
        launchInPresenter(new df3(bf3.b(this.chequesFlow), new d(null)));
        launchInPresenter(new df3(new c(new b(new df3(bf3.b(this.isShowAllCheques), new e(null))), this), new f(null)));
        if (!this.preferences.G0() || (scannerView = (ScannerView) getViewState()) == null) {
            return;
        }
        scannerView.showBrandlinkButton();
    }

    public final void onGalleryClick() {
        new kd.g.a.e("PICTURE_FROM_GALLERY_CLICKED").a();
        if (!this.preferences.s()) {
            this.flowRouter.j(bi7.a);
            return;
        }
        ScannerView scannerView = (ScannerView) getViewState();
        if (scannerView != null) {
            scannerView.openGallery();
        }
    }

    public final void onInfoClicked() {
        this.flowRouter.j(zh7.a);
    }

    public final void onMainButtonClick() {
        this.flowRouter.f(yg7.a);
    }

    public final void onManualQrClicked() {
        new kd.g.a.C0257g("QR_MANUAL_ACTIVITY").a();
        this.flowRouter.j(ah7.a);
    }

    @Override // g86.a
    public void onQrCodesDetectedOnCroppedImage(hd3<? extends List<String>> hd3Var) {
        hd3Var.getClass();
        launchInPresenter(new de3(new df3(hd3Var, new g(null)), new h(null)));
    }

    @Override // defpackage.zu6
    public void onQrsDetected(List<String> list) {
        list.getClass();
        ArrayList arrayListV0 = qn1.v0(this.chequesFlow.getValue());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!arrayListV0.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        loadCheques(arrayList);
        arrayListV0.addAll(arrayList);
        this.chequesFlow.setValue(arrayListV0);
        Map mapSingletonMap = Collections.singletonMap("qr_code", list);
        mapSingletonMap.getClass();
        new kd.m0("CQ_ADDED", mapSingletonMap);
        Bundle bundle = new Bundle();
        for (String str : mapSingletonMap.keySet()) {
            Object obj2 = mapSingletonMap.get(str);
            if (obj2 instanceof String) {
                Log.d("trackUserLocation", "paramLabel: " + str + ", params: " + obj2);
                bundle.putString(str, (String) obj2);
            } else if (obj2 instanceof List) {
                Log.d("trackUserLocation", "paramLabel: " + str + ", params: List<str>");
                Iterable iterable = (Iterable) obj2;
                ArrayList arrayList2 = new ArrayList(kn1.q(iterable, 10));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList2.add(String.valueOf(it.next()));
                }
                bundle.putStringArrayList(str, new ArrayList<>(arrayList2));
            }
        }
        ScannerView scannerView = (ScannerView) getViewState();
        if (scannerView != null) {
            scannerView.vibrate();
        }
    }
}
