package com.warefly.checkscan.presentation.chequePage.presentation;

import com.google.gson.Gson;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import com.warefly.checkscan.presentation.chequePage.view.ChequePageView;
import defpackage.a57;
import defpackage.a9;
import defpackage.ao1;
import defpackage.b06;
import defpackage.b57;
import defpackage.bf1;
import defpackage.bm0;
import defpackage.c21;
import defpackage.c81;
import defpackage.ch3;
import defpackage.da;
import defpackage.de1;
import defpackage.e08;
import defpackage.f90;
import defpackage.fc0;
import defpackage.fe1;
import defpackage.fz5;
import defpackage.ge1;
import defpackage.gg3;
import defpackage.gg7;
import defpackage.gh4;
import defpackage.h6;
import defpackage.hc0;
import defpackage.hd1;
import defpackage.he7;
import defpackage.ht3;
import defpackage.i08;
import defpackage.il0;
import defpackage.j59;
import defpackage.jc0;
import defpackage.k81;
import defpackage.kd;
import defpackage.kd1;
import defpackage.kl0;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.kz5;
import defpackage.lf7;
import defpackage.lh3;
import defpackage.ll0;
import defpackage.ll3;
import defpackage.lz5;
import defpackage.me0;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.nq5;
import defpackage.p08;
import defpackage.qa4;
import defpackage.qm3;
import defpackage.qn1;
import defpackage.qx1;
import defpackage.ra4;
import defpackage.re1;
import defpackage.rj;
import defpackage.s75;
import defpackage.t3;
import defpackage.t44;
import defpackage.tf6;
import defpackage.th3;
import defpackage.u96;
import defpackage.ue1;
import defpackage.uf3;
import defpackage.uh6;
import defpackage.uz7;
import defpackage.ve1;
import defpackage.vg6;
import defpackage.x07;
import defpackage.x3;
import defpackage.x39;
import defpackage.xd1;
import defpackage.xv7;
import defpackage.y75;
import defpackage.yb8;
import defpackage.yd1;
import defpackage.zf6;
import defpackage.zk1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequePagePresenter extends BasePresenter<ChequePageView> implements t44.b {
    public static final a Companion = new a();
    private static final long SPECIAL_INTERVAL = 5000;
    private final bm0 bonusBlockInteractor;
    private hd1 cheque;
    private final int chequeId;
    private final xd1 chequeInteractor;
    private final String chequeString;
    private final AtomicBoolean enableCarousel;
    private final uf3 flowRouter;
    private HashSet<Date> operationsDates;
    private final kz5 operationsInteractor;
    private final AtomicInteger pos;
    private HashMap<Long, zf6> previewCards;
    private boolean specialAutoScrollInit;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[tf6.values().length];
            try {
                iArr[tf6.Admitad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[tf6.Coupon.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class c extends gh4 implements nl3<a57<List<? extends jc0>>, List<? extends hc0.b>> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final List<? extends hc0.b> invoke(a57<List<? extends jc0>> a57Var) {
            a57<List<? extends jc0>> a57Var2 = a57Var;
            a57Var2.getClass();
            boolean zO = a57Var2.a.o();
            List list = kx2.b;
            if (!zO) {
                return list;
            }
            List list2 = a57Var2.b;
            if (list2 != null) {
                list = list2;
            }
            zk1 zk1VarA = x07.a(hc0.b.class);
            if (zk1VarA.equals(x07.a(hc0.b.class))) {
                List list3 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(((jc0) it.next()).c());
                }
                return arrayList;
            }
            if (zk1VarA.equals(x07.a(hc0.a.class))) {
                List list4 = list;
                ArrayList arrayList2 = new ArrayList(kn1.q(list4, 10));
                Iterator it2 = list4.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((jc0) it2.next()).b());
                }
                return arrayList2;
            }
            if (!zk1VarA.equals(x07.a(hc0.c.class))) {
                throw new ClassCastException(me0.c("Class ", x07.a(hc0.b.class).f(), " is not implementation"));
            }
            List list5 = list;
            ArrayList arrayList3 = new ArrayList(kn1.q(list5, 10));
            Iterator it3 = list5.iterator();
            while (it3.hasNext()) {
                arrayList3.add(((jc0) it3.next()).d());
            }
            return arrayList3;
        }
    }

    public static final class d extends gh4 implements nl3<List<? extends hc0.b>, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends hc0.b> list) {
            List<? extends hc0.b> list2 = list;
            list2.getClass();
            if (!list2.isEmpty()) {
                ChequePagePresenter chequePagePresenter = ChequePagePresenter.this;
                chequePagePresenter.prepareAutoScroll(list2);
                ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
                if (chequePageView != null) {
                    chequePageView.showBanners(new xv7(list2));
                }
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class e extends qm3 implements nl3<List<? extends bf1>, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends bf1> list) {
            List<? extends bf1> list2 = list;
            list2.getClass();
            ((ChequePagePresenter) this.receiver).showReasonCashbackReject(list2);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Throwable, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showCouldntLoadCheque(true);
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<hd1, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(hd1 hd1Var) {
            hd1 hd1Var2 = hd1Var;
            ChequePagePresenter chequePagePresenter = ChequePagePresenter.this;
            chequePagePresenter.cheque = hd1Var2;
            hd1Var2.getClass();
            chequePagePresenter.showCheque(hd1Var2);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<xd1.a, j59> {

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[xd1.a.values().length];
                try {
                    iArr[xd1.a.Success.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[xd1.a.AcceptedButAlreadyReported.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(xd1.a aVar) {
            xd1.a aVar2 = aVar;
            int i = aVar2 == null ? -1 : a.a[aVar2.ordinal()];
            ChequePagePresenter chequePagePresenter = ChequePagePresenter.this;
            if (i == 1) {
                ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
                if (chequePageView != null) {
                    chequePageView.showProductCategoryReported(true);
                }
            } else if (i != 2) {
                ChequePageView chequePageView2 = (ChequePageView) chequePagePresenter.getViewState();
                if (chequePageView2 != null) {
                    chequePageView2.showProductCategoryReported(false);
                }
            } else {
                ChequePageView chequePageView3 = (ChequePageView) chequePagePresenter.getViewState();
                if (chequePageView3 != null) {
                    chequePageView3.showProductCategoryReported(true);
                }
            }
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<Throwable, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showProductCategoryReported(false);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<Long, Boolean> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(Long l) {
            l.getClass();
            return Boolean.valueOf(ChequePagePresenter.this.enableCarousel.get());
        }
    }

    public static final class k extends gh4 implements nl3<Long, j59> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            ChequePagePresenter chequePagePresenter = ChequePagePresenter.this;
            ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
            if (chequePageView != null) {
                chequePageView.scrollNextSpecials(chequePagePresenter.pos.incrementAndGet());
            }
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<List<? extends kz5.a>, List<Object>> {
        public static final l f = new l(1);

        @Override // defpackage.nl3
        public final List<Object> invoke(List<? extends kz5.a> list) {
            List<? extends kz5.a> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList();
            List<? extends kz5.a> list3 = list2;
            ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
            Iterator<T> it = list3.iterator();
            while (it.hasNext()) {
                arrayList2.add(Boolean.valueOf(arrayList.addAll(((kz5.a) it.next()).b)));
            }
            return qn1.t0(arrayList);
        }
    }

    public static final class m extends gh4 implements nl3<Throwable, j59> {
        public m() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showChequeOperations(false, null);
            }
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<List<Object>, j59> {
        public n() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<Object> list) {
            List<Object> list2 = list;
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showChequeOperations(true, list2);
            }
            return j59.a;
        }
    }

    public static final class o extends gh4 implements nl3<List<? extends ao1>, List<? extends ao1>> {
        public static final o f = new o(1);

        @Override // defpackage.nl3
        public final List<? extends ao1> invoke(List<? extends ao1> list) {
            List<? extends ao1> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(list2);
            return qn1.t0(arrayList);
        }
    }

    public static final class p extends gh4 implements nl3<Throwable, j59> {
        public p() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showChequeOperations(false, null);
            }
            return j59.a;
        }
    }

    public static final class q extends gh4 implements nl3<List<? extends ao1>, j59> {
        public q() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends ao1> list) {
            List<? extends ao1> list2 = list;
            list2.getClass();
            ChequePagePresenter chequePagePresenter = ChequePagePresenter.this;
            chequePagePresenter.handleCoupons(list2);
            ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
            if (chequePageView != null) {
                Double dDetermineHighestElement = chequePagePresenter.determineHighestElement(list2);
                chequePageView.showCoupons(list2, dDetermineHighestElement != null ? Integer.valueOf((int) dDetermineHighestElement.doubleValue()) : null);
            }
            return j59.a;
        }
    }

    public static final class r extends gh4 implements ll3<j59> {
        public r() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showChequeAlert(null);
            }
            return j59.a;
        }
    }

    public static final class s extends gh4 implements nl3<kd1, j59> {
        public s() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(kd1 kd1Var) {
            kd1 kd1Var2 = kd1Var;
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                chequePageView.showChequeAlert(kd1Var2);
            }
            return j59.a;
        }
    }

    public static final class t extends gh4 implements nl3<Map<c81, ? extends List<? extends vg6>>, List<? extends ra4>> {
        public final /* synthetic */ hd1 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(hd1 hd1Var) {
            super(1);
            this.g = hd1Var;
        }

        @Override // defpackage.nl3
        public final List<? extends ra4> invoke(Map<c81, ? extends List<? extends vg6>> map) {
            Map<c81, ? extends List<? extends vg6>> map2 = map;
            map2.getClass();
            hd1 hd1Var = this.g;
            ChequePagePresenter chequePagePresenter = ChequePagePresenter.this;
            List<? extends ra4> titledChequeItemsWithOffersPlaceholders = chequePagePresenter.getTitledChequeItemsWithOffersPlaceholders(hd1Var, map2);
            if (titledChequeItemsWithOffersPlaceholders != null) {
                return chequePagePresenter.addDecoratorsAfterProducts(titledChequeItemsWithOffersPlaceholders);
            }
            return null;
        }
    }

    public static final class u extends gh4 implements nl3<List<? extends ra4>, j59> {
        public u() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends ra4> list) {
            ChequePageView chequePageView;
            List<? extends ra4> list2 = list;
            if (list2 != null && (chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState()) != null) {
                chequePageView.showChequeProducts(list2);
            }
            return j59.a;
        }
    }

    public static final class v extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ hd1 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(hd1 hd1Var) {
            super(1);
            this.g = hd1Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ChequePageView chequePageView = (ChequePageView) ChequePagePresenter.this.getViewState();
            if (chequePageView != null) {
                List<vg6> listC = this.g.c();
                if (listC != null) {
                    List<vg6> list = listC;
                    ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new uh6((vg6) it.next()));
                    }
                    chequePageView.showChequeProducts(arrayList);
                }
                chequePageView.showCouldntGetCategoriesOfCheque();
            }
            return j59.a;
        }
    }

    public ChequePagePresenter(uf3 uf3Var, xd1 xd1Var, kz5 kz5Var, int i2, String str, bm0 bm0Var) {
        uf3Var.getClass();
        xd1Var.getClass();
        kz5Var.getClass();
        bm0Var.getClass();
        this.flowRouter = uf3Var;
        this.chequeInteractor = xd1Var;
        this.operationsInteractor = kz5Var;
        this.chequeId = i2;
        this.chequeString = str;
        this.bonusBlockInteractor = bm0Var;
        this.enableCarousel = new AtomicBoolean(true);
        this.pos = new AtomicInteger(0);
        this.previewCards = new HashMap<>();
        this.operationsDates = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Double determineHighestElement(List<ao1> list) {
        Object next;
        String str;
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int length = ((ao1) next).e.length();
                do {
                    Object next2 = it.next();
                    int length2 = ((ao1) next2).e.length();
                    if (length < length2) {
                        next = next2;
                        length = length2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        ao1 ao1Var = (ao1) next;
        if (ao1Var == null || (str = ao1Var.e) == null) {
            return null;
        }
        return Double.valueOf(((double) str.length()) * 7.16d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ra4> getTitledChequeItemsWithOffersPlaceholders(hd1 hd1Var, Map<c81, ? extends List<vg6>> map) {
        ArrayList arrayList = new ArrayList();
        List<vg6> listC = hd1Var.c();
        if (listC != null) {
            ArrayList arrayList2 = new ArrayList(listC.size());
            for (Map.Entry<c81, ? extends List<vg6>> entry : map.entrySet()) {
                c81 key = entry.getKey();
                List<vg6> value = entry.getValue();
                arrayList.add(new k81(key));
                List<vg6> list = value;
                ArrayList arrayList3 = new ArrayList(kn1.q(list, 10));
                for (vg6 vg6Var : list) {
                    vg6Var.i(key.a().b());
                    arrayList3.add(vg6Var);
                }
                arrayList2.addAll(arrayList3);
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    arrayList.add(new uh6((vg6) it.next()));
                }
            }
            hd1Var.j(arrayList2);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Object> handleCoupons(List<? extends zf6> list) {
        for (zf6 zf6Var : list) {
            this.previewCards.put(Long.valueOf(zf6Var.a), zf6Var);
        }
        return list;
    }

    private final void loadBanners() {
        bm0 bm0Var = this.bonusBlockInteractor;
        mz7 mz7VarB = bm0Var.a.b(fc0.CHECK, bm0Var.e, null);
        bm0.h hVar = new bm0.h(c.f);
        mz7VarB.getClass();
        disposeOnDestroy(yb8.f(new p08(mz7VarB, hVar).i(ne7.c).f(rj.a()), null, new d(), 1), "showChequeBanner");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRefresh$lambda$1(ChequePagePresenter chequePagePresenter) {
        ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
        if (chequePageView != null) {
            chequePageView.showLoadingCheque(false);
        }
        ChequePageView chequePageView2 = (ChequePageView) chequePagePresenter.getViewState();
        if (chequePageView2 != null) {
            chequePageView2.showLoadingContent(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareAutoScroll(List<hc0.b> list) {
        if (this.specialAutoScrollInit) {
            return;
        }
        this.specialAutoScrollInit = true;
        int i2 = gg3.b;
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.MILLISECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        disposeOnDestroy(yb8.i(new lh3(new th3(new ch3(Math.max(0L, 5000L), Math.max(0L, 5000L), he7Var), new c21(new j(), 1))).c(rj.a()), new k(), 3), "carouselFlow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean prepareAutoScroll$lambda$26(nl3 nl3Var, Object obj) {
        return ((Boolean) nl3Var.invoke(obj)).booleanValue();
    }

    private final void refreshChequeOperations() {
        this.operationsDates.clear();
        kz5 kz5Var = this.operationsInteractor;
        mz7<List<fz5>> mz7VarB = kz5Var.a.b(this.chequeId);
        f90 f90Var = new f90(new lz5(kz5Var), 5);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new p08(new p08(mz7VarB, f90Var), new ve1(l.f)).i(ne7.c).f(rj.a()), new h6() { // from class: we1
            @Override // defpackage.h6
            public final void run() {
                ChequePagePresenter.refreshChequeOperations$lambda$19(this.a);
            }
        }), new m(), new n()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List refreshChequeOperations$lambda$18(nl3 nl3Var, Object obj) {
        return (List) nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshChequeOperations$lambda$19(ChequePagePresenter chequePagePresenter) {
        ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
        if (chequePageView != null) {
            chequePageView.showLoadingCheque(false);
        }
        ChequePageView chequePageView2 = (ChequePageView) chequePagePresenter.getViewState();
        if (chequePageView2 != null) {
            chequePageView2.showLoadingContent(false);
        }
    }

    private final void refreshCoupons() {
        xd1 xd1Var = this.chequeInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new p08(xd1Var.a.t(this.chequeId, xd1Var.b.O0()), new da(o.f, 2)).i(ne7.c).f(rj.a()), new h6() { // from class: qe1
            @Override // defpackage.h6
            public final void run() {
                ChequePagePresenter.refreshCoupons$lambda$21(this.a);
            }
        }), new p(), new q()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List refreshCoupons$lambda$20(nl3 nl3Var, Object obj) {
        return (List) nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshCoupons$lambda$21(ChequePagePresenter chequePagePresenter) {
        ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
        if (chequePageView != null) {
            chequePageView.showLoadingCheque(false);
        }
    }

    private final void sendBannerClicked(String str) {
        if (str != null) {
            Map mapSingletonMap = Collections.singletonMap("Check_".concat(str), new String());
            mapSingletonMap.getClass();
            new kd.e0.b("Ord", mapSingletonMap).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCheque(hd1 hd1Var) {
        refreshChequeOperations();
        refreshCoupons();
        int i2 = 1;
        if (hd1Var.g) {
            xd1 xd1Var = this.chequeInteractor;
            i08 i08VarR = xd1Var.a.r(hd1Var.a());
            he7 he7Var = ne7.c;
            nq5.a(he7Var, "scheduler is null");
            BasePresenter.disposeOnDestroy$default(this, yb8.j(new s75(new y75(i08VarR, he7Var), rj.a()), new r(), new s(), 1), null, 1, null);
        }
        ChequePageView chequePageView = (ChequePageView) getViewState();
        if (chequePageView != null) {
            chequePageView.showChequeInfo(hd1Var);
            chequePageView.showLoadingProducts(true);
        }
        xd1 xd1Var2 = this.chequeInteractor;
        xd1Var2.getClass();
        int i3 = 2;
        uz7 uz7Var = new uz7(new p08(new e08(new p08(xd1Var2.a.e(xd1.a()), new ll0(fe1.f, i3)), new kl0(new de1(hd1Var.c()), i3)), new x3(new t(hd1Var), i2)).i(ne7.c).f(rj.a()), new h6() { // from class: se1
            @Override // defpackage.h6
            public final void run() {
                ChequePagePresenter.showCheque$lambda$11$lambda$8(this.a);
            }
        });
        final u uVar = new u();
        BasePresenter.disposeOnDestroy$default(this, uz7Var.g(new qx1() { // from class: te1
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                uVar.invoke(obj);
            }
        }, new ue1(new v(hd1Var), 0)), null, 1, null);
        if (this.chequeInteractor.b.x()) {
            return;
        }
        ChequePageView chequePageView2 = (ChequePageView) getViewState();
        if (chequePageView2 != null) {
            chequePageView2.showCategoryTutorial();
        }
        this.chequeInteractor.b.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List showCheque$lambda$11$lambda$7(nl3 nl3Var, Object obj) {
        return (List) nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCheque$lambda$11$lambda$8(ChequePagePresenter chequePagePresenter) {
        ChequePageView chequePageView = (ChequePageView) chequePagePresenter.getViewState();
        if (chequePageView != null) {
            chequePageView.showLoadingProducts(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showReasonCashbackReject(List<bf1> list) {
        ChequePageView chequePageView;
        if (list.isEmpty() || (chequePageView = (ChequePageView) getViewState()) == null) {
            return;
        }
        chequePageView.showReasonRejectCashback(((bf1) qn1.T(list)).b());
    }

    public final List<ra4> addDecoratorsAfterProducts(List<? extends ra4> list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (ra4 ra4Var : list) {
            nn1.s(ra4Var instanceof uh6 ? u96.i(ra4Var, new qa4()) : u96.h(ra4Var), arrayList);
        }
        return arrayList;
    }

    public final void changePosSpecialByUser(int i2) {
        if (i2 != -1) {
            this.pos.set(i2);
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onChequeInfoFormSuccess() {
        onRefresh();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadBanners();
        onRefresh();
        xd1 xd1Var = this.chequeInteractor;
        mz7<List<bf1>> mz7VarB = xd1Var.a.b(this.chequeId);
        a9 a9Var = new a9(yd1.f, 3);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.f(new p08(mz7VarB, a9Var).i(ne7.c).f(rj.a()), null, new e(1, this, ChequePagePresenter.class, "showReasonCashbackReject", "showReasonCashbackReject(Ljava/util/List;)V", 0), 1), null, 1, null);
    }

    public final void onPreviewCardClicked(long j2) {
        boolean zContainsKey = this.previewCards.containsKey(Long.valueOf(j2));
        HashMap<Long, zf6> map = this.previewCards;
        if (!zContainsKey) {
            throw new IllegalArgumentException(("No such previewId {" + j2 + "}. Keys are: " + map.keySet()).toString());
        }
        zf6 zf6Var = map.get(Long.valueOf(j2));
        tf6 tf6Var = zf6Var != null ? zf6Var.b : null;
        int i2 = tf6Var == null ? -1 : b.a[tf6Var.ordinal()];
        if (i2 == 1) {
            this.flowRouter.j(new lf7(j2));
            return;
        }
        if (i2 == 2) {
            this.flowRouter.j(new gg7(j2));
            return;
        }
        ChequePageView chequePageView = (ChequePageView) getViewState();
        if (chequePageView != null) {
            chequePageView.showUpdateToAccessMessage();
        }
    }

    public final void onRefresh() {
        String str = this.chequeString;
        if (str != null) {
            Gson gsonC = ht3.c();
            gsonC.getClass();
            hd1 hd1Var = (hd1) gsonC.f(str, new x39(hd1.class));
            this.cheque = hd1Var;
            if (hd1Var != null) {
                showCheque(hd1Var);
                return;
            }
            return;
        }
        ChequePageView chequePageView = (ChequePageView) getViewState();
        if (chequePageView != null) {
            chequePageView.showCouldntLoadCheque(false);
            chequePageView.showLoadingCheque(true);
            chequePageView.showLoadingContent(true);
        }
        xd1 xd1Var = this.chequeInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(xd1Var.a.k(this.chequeId).i(ne7.c).f(rj.a()), new h6() { // from class: xe1
            @Override // defpackage.h6
            public final void run() {
                ChequePagePresenter.onRefresh$lambda$1(this.a);
            }
        }), new f(), new g()), null, 1, null);
    }

    public final void onReportProduct(vg6 vg6Var) {
        vg6Var.getClass();
        xd1 xd1Var = this.chequeInteractor;
        xd1Var.getClass();
        mz7<a57<b57>> mz7VarM = xd1Var.a.m(vg6Var);
        int i2 = 1;
        il0 il0Var = new il0(ge1.f, i2);
        mz7VarM.getClass();
        BasePresenter.disposeOnDestroy$default(this, new e08(mz7VarM, il0Var).i(ne7.c).f(rj.a()).g(new t3(new h(), i2), new re1(new i(), 0)), null, 1, null);
    }

    public final void onShareClicked() {
        ChequePageView chequePageView;
        hd1 hd1Var = this.cheque;
        if (hd1Var == null || (chequePageView = (ChequePageView) getViewState()) == null) {
            return;
        }
        chequePageView.showShareCheque(hd1Var);
    }

    @Override // t44.b
    public void onSpecialItemClick(hc0.b bVar) {
        bVar.getClass();
        b06 b06Var = bVar.c;
        sendBannerClicked(b06Var != null ? b06Var.c : null);
        ChequePageView chequePageView = (ChequePageView) getViewState();
        if (chequePageView != null) {
            chequePageView.openUrl(bVar.b);
        }
    }

    public final void setScrollState(boolean z) {
        this.enableCarousel.set(z);
    }

    @Override // t44.b
    public void showSpecialAdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        ChequePageView chequePageView = (ChequePageView) getViewState();
        if (chequePageView != null) {
            chequePageView.showAdInfoDialog(b06Var);
        }
        String str = b06Var.c;
        if (str != null) {
            Map mapSingletonMap = Collections.singletonMap("Check_".concat(str), "description");
            mapSingletonMap.getClass();
            new kd.e0.c("Ord", mapSingletonMap).a();
        }
    }
}
