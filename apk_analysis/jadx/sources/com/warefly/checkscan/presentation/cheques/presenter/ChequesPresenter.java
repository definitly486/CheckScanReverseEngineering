package com.warefly.checkscan.presentation.cheques.presenter;

import android.content.res.Resources;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.SparseArray;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.cheques.view.ChequesView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b06;
import defpackage.ba0;
import defpackage.bd2;
import defpackage.bg7;
import defpackage.bm3;
import defpackage.ci1;
import defpackage.d54;
import defpackage.df3;
import defpackage.dh7;
import defpackage.e02;
import defpackage.ec0;
import defpackage.ee1;
import defpackage.f02;
import defpackage.fu1;
import defpackage.gc;
import defpackage.gf9;
import defpackage.gh4;
import defpackage.gi7;
import defpackage.ha3;
import defpackage.hd1;
import defpackage.hd3;
import defpackage.he7;
import defpackage.hi0;
import defpackage.hl0;
import defpackage.id3;
import defpackage.ie1;
import defpackage.ih4;
import defpackage.ip2;
import defpackage.j57;
import defpackage.j59;
import defpackage.j91;
import defpackage.je1;
import defpackage.jf6;
import defpackage.jp1;
import defpackage.k78;
import defpackage.kd;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.lc0;
import defpackage.lh1;
import defpackage.ll3;
import defpackage.m13;
import defpackage.mo7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.nz6;
import defpackage.om1;
import defpackage.p08;
import defpackage.pb2;
import defpackage.pg8;
import defpackage.pl0;
import defpackage.q78;
import defpackage.ql0;
import defpackage.qm3;
import defpackage.qq1;
import defpackage.r57;
import defpackage.rj;
import defpackage.s48;
import defpackage.se3;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.tf3;
import defpackage.tq5;
import defpackage.u48;
import defpackage.u96;
import defpackage.ud1;
import defpackage.uf3;
import defpackage.uv2;
import defpackage.vp3;
import defpackage.wh7;
import defpackage.x18;
import defpackage.xb0;
import defpackage.xd1;
import defpackage.yb8;
import defpackage.yf7;
import defpackage.yg1;
import defpackage.yq5;
import defpackage.z68;
import defpackage.z96;
import defpackage.zd1;
import defpackage.zl2;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequesPresenter extends BasePresenter<ChequesView> {
    private static final String BY_DATE_OF = "По дате покупки";
    private static final b Companion = new b();
    private static final String PERIOD = "Период";
    private static final String SEARCH = "Поиск";
    private static final String SUM = "Сумма";
    private static final int TRANSLATION_INTO_KOPECKS = 100;
    private static final boolean UNSELECT_SORT = false;
    private final fu1 authDisposables;
    private final lc0 bannerShownTracker;
    private final ArrayList<Integer> categoriesFilters;
    private final xd1 chequeInteractor;
    private final yg1 chequeRequestQueueInteractor;
    private final SparseArray<hd1> cheques;
    private tf3<Object> chequesPaginator;
    private final zl2 desktopInteractor;
    private final uv2 electrochequeInteractor;
    private List<Object> filterChips;
    private final uf3 flowRouter;
    private Date fromDateFilter;
    private Date fromDateServer;
    private boolean haveIncorrectCheques;
    private final d54 infoElementsInteractor;
    private boolean isDateRangeSelected;
    private List<? extends u48> listSorts;
    private Integer maxTotalSum;
    private Integer minTotalSum;
    private Integer miniBannerId;
    private final jf6 preferencesRepository;
    private final ArrayList<Integer> retailersFilters;
    private final mo7 sendBannerWatchUseCase;
    private String sortDate;
    private k78 statistics;
    private final q78 statisticsInteractor;
    private Date toDateFilter;
    private Date toDateServer;
    private final ArrayList<Integer> weekdaysFilters;

    public final class a implements tf3.d<Object> {
        public final o a;
        public final p b;

        public a(o oVar, p pVar) {
            this.a = oVar;
            this.b = pVar;
        }

        @Override // tf3.d
        public final void a(Throwable th) {
            th.getClass();
        }

        @Override // tf3.d
        public final void b() {
            if (!((Boolean) this.b.invoke()).booleanValue()) {
                ChequesPresenter.this.checkHaveIncorrectCheques();
                return;
            }
            ChequesView chequesView = (ChequesView) this.a.invoke();
            if (chequesView != null) {
                chequesView.showNoChequesForSelectedFilter(true);
            }
        }

        @Override // tf3.d
        public final void showData(List list) {
            list.getClass();
            ChequesView chequesView = (ChequesView) this.a.invoke();
            if (chequesView != null) {
                chequesView.showCheques(list, true);
            }
        }
    }

    public static final class b {
    }

    public static final /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u48.values().length];
            try {
                iArr[u48.Date.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u48.Search.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u48.Period.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[u48.Sum.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final class d extends gh4 implements nl3<j57<xb0>, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(j57<xb0> j57Var) {
            xb0 xb0Var;
            ChequesView chequesView;
            j57<xb0> j57Var2 = j57Var;
            if (j57Var2 != null && (xb0Var = j57Var2.a) != null && (chequesView = (ChequesView) ChequesPresenter.this.getViewState()) != null) {
                chequesView.showBanner(xb0Var);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Long, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            Long l2 = l;
            ChequesView chequesView = (ChequesView) ChequesPresenter.this.getViewState();
            if (chequesView != null) {
                l2.getClass();
                chequesView.showExpenses(l2.longValue());
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Boolean, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            Boolean bool2 = bool;
            ChequesView chequesView = (ChequesView) ChequesPresenter.this.getViewState();
            if (chequesView != null) {
                chequesView.showLoadingElectrocheques(!bool2.booleanValue());
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<k78, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(k78 k78Var) {
            k78 k78Var2 = k78Var;
            ChequesPresenter chequesPresenter = ChequesPresenter.this;
            if (!chequesPresenter.categoriesFilters.isEmpty()) {
                k78Var2.d();
            }
            if (!chequesPresenter.retailersFilters.isEmpty()) {
                k78Var2.e();
            }
            if (!chequesPresenter.weekdaysFilters.isEmpty()) {
                k78Var2.f(null);
            }
            chequesPresenter.statistics = k78Var2;
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<ec0, j59> {

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[ec0.values().length];
                try {
                    iArr[ec0.Ignored.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ec0.Unauthorized.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(ec0 ec0Var) {
            ec0 ec0Var2 = ec0Var;
            int i = ec0Var2 == null ? -1 : a.a[ec0Var2.ordinal()];
            ChequesPresenter chequesPresenter = ChequesPresenter.this;
            if (i == 1) {
                ChequesView chequesView = (ChequesView) chequesPresenter.getViewState();
                if (chequesView != null) {
                    chequesView.showBannerIgnored();
                }
            } else if (i != 2) {
                ChequesView chequesView2 = (ChequesView) chequesPresenter.getViewState();
                if (chequesView2 != null) {
                    chequesView2.showError();
                }
            } else {
                ChequesView chequesView3 = (ChequesView) chequesPresenter.getViewState();
                if (chequesView3 != null) {
                    chequesView3.showUnauthorized();
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
            ChequesView chequesView = (ChequesView) ChequesPresenter.this.getViewState();
            if (chequesView != null) {
                chequesView.showError();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter$loadMiniChequeBanner$1", f = "ChequesPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<ci1, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public j(e02<? super j> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            j jVar = ChequesPresenter.this.new j(e02Var);
            jVar.l = obj;
            return jVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ci1 ci1Var, e02<? super j59> e02Var) {
            return ((j) create(ci1Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ci1 ci1Var = (ci1) this.l;
            Integer num = new Integer(ci1Var.a);
            ChequesPresenter chequesPresenter = ChequesPresenter.this;
            chequesPresenter.miniBannerId = num;
            ChequesView chequesView = (ChequesView) chequesPresenter.getViewState();
            if (chequesView != null) {
                chequesView.showMiniBanner(ci1Var.c, ci1Var.d, ci1Var.b);
            }
            return j59.a;
        }
    }

    public static final class k implements hd3<List<Object>> {
        public final /* synthetic */ j91 b;
        public final /* synthetic */ ChequesPresenter c;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;
            public final /* synthetic */ ChequesPresenter c;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter$k$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter$loadScreenContent$$inlined$map$1$2", f = "ChequesPresenter.kt", l = {217}, m = "emit")
            public static final class C0162a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0162a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(id3 id3Var, ChequesPresenter chequesPresenter) {
                this.b = id3Var;
                this.c = chequesPresenter;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0162a c0162a;
                ChequesPresenter chequesPresenter;
                if (e02Var instanceof C0162a) {
                    c0162a = (C0162a) e02Var;
                    int i = c0162a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0162a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0162a = new C0162a(e02Var);
                    }
                } else {
                    c0162a = new C0162a(e02Var);
                }
                Object obj2 = c0162a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0162a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    List list = (List) obj;
                    List list2 = list;
                    ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                    Iterator<T> it = list2.iterator();
                    while (true) {
                        boolean zHasNext = it.hasNext();
                        chequesPresenter = this.c;
                        if (!zHasNext) {
                            break;
                        }
                        hd1 hd1Var = (hd1) it.next();
                        chequesPresenter.cheques.put(hd1Var.a(), hd1Var);
                        arrayList.add(j59.a);
                    }
                    List chequesListWithTitles = chequesPresenter.getChequesListWithTitles(list);
                    c0162a.m = 1;
                    if (this.b.emit(chequesListWithTitles, c0162a) == a32Var) {
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

        public k(j91 j91Var, ChequesPresenter chequesPresenter) {
            this.b = j91Var;
            this.c = chequesPresenter;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super List<Object>> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var, this.c), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<gc, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(gc gcVar) {
            gc gcVar2 = gcVar;
            ChequesPresenter chequesPresenter = ChequesPresenter.this;
            ChequesView chequesView = (ChequesView) chequesPresenter.getViewState();
            if (chequesView != null) {
                chequesView.showAlfaProgressCheques(gcVar2.a, chequesPresenter.createSpannedAlfaProgressString(gcVar2.b), gcVar2.c, gcVar2.d);
            }
            return j59.a;
        }
    }

    public static final class m extends gh4 implements nl3<List<? extends gf9>, j59> {
        public m() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends gf9> list) {
            int i;
            List<? extends gf9> list2 = list;
            list2.getClass();
            List<? extends gf9> list3 = list2;
            if ((list3 instanceof Collection) && list3.isEmpty()) {
                i = 0;
            } else {
                Iterator<T> it = list3.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((gf9) it.next()).f() != nz6.CHEQUE_RECEIVED && (i = i + 1) < 0) {
                        u96.n();
                        throw null;
                    }
                }
            }
            ChequesPresenter chequesPresenter = ChequesPresenter.this;
            ChequesView chequesView = (ChequesView) chequesPresenter.getViewState();
            if (chequesView != null) {
                chequesView.updateChequeQueueCount(i);
            }
            chequesPresenter.haveIncorrectCheques = i > 0;
            tf3 tf3Var = chequesPresenter.chequesPaginator;
            if (tf3Var != null) {
                z68 z68Var = tf3Var.e;
                if (((Number) z68Var.getValue()).intValue() == 0 && tf3Var.f) {
                    z68Var.k(null, -1);
                    tf3Var.a();
                }
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class n extends qm3 implements nl3<Integer, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            ((ChequesPresenter) this.receiver).loadNextPage(num.intValue());
            return j59.a;
        }
    }

    public static final class o extends gh4 implements ll3<ChequesView> {
        public o() {
            super(0);
        }

        @Override // defpackage.ll3
        public final ChequesView invoke() {
            return (ChequesView) ChequesPresenter.this.getViewState();
        }
    }

    public static final class p extends gh4 implements ll3<Boolean> {
        public p() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(ChequesPresenter.this.isActiveFilter());
        }
    }

    public static final class q extends gh4 implements nl3<Object, j59> {
        public q() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Object obj) {
            ChequesPresenter.this.refreshChequesAndStatisticsFromScratch();
            return j59.a;
        }
    }

    public static final class r extends gh4 implements nl3<Throwable, j59> {
        public r() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ChequesView chequesView = (ChequesView) ChequesPresenter.this.getViewState();
            if (chequesView != null) {
                chequesView.showCouldntDeleteCheque();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter$onFirstViewAttach$1", f = "ChequesPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class s extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public s(e02<? super s> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            s sVar = ChequesPresenter.this.new s(e02Var);
            sVar.l = obj;
            return sVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((s) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Exception {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.g) {
                ChequesPresenter.this.loadScreenContent();
            }
            return j59.a;
        }
    }

    public ChequesPresenter(uf3 uf3Var, xd1 xd1Var, zl2 zl2Var, yg1 yg1Var, q78 q78Var, d54 d54Var, uv2 uv2Var, fu1 fu1Var, jf6 jf6Var, mo7 mo7Var) {
        uf3Var.getClass();
        xd1Var.getClass();
        zl2Var.getClass();
        yg1Var.getClass();
        q78Var.getClass();
        d54Var.getClass();
        uv2Var.getClass();
        fu1Var.getClass();
        jf6Var.getClass();
        mo7Var.getClass();
        this.flowRouter = uf3Var;
        this.chequeInteractor = xd1Var;
        this.desktopInteractor = zl2Var;
        this.chequeRequestQueueInteractor = yg1Var;
        this.statisticsInteractor = q78Var;
        this.infoElementsInteractor = d54Var;
        this.electrochequeInteractor = uv2Var;
        this.authDisposables = fu1Var;
        this.preferencesRepository = jf6Var;
        this.sendBannerWatchUseCase = mo7Var;
        this.cheques = new SparseArray<>();
        this.filterChips = kx2.b;
        this.categoriesFilters = new ArrayList<>();
        this.weekdaysFilters = new ArrayList<>();
        this.retailersFilters = new ArrayList<>();
        this.bannerShownTracker = new lc0(mo7Var);
    }

    private final void banners() {
        disposeOnDestroy(yb8.f(this.chequeInteractor.a.a().d(this.chequeInteractor.a.l()).i(ne7.c).f(rj.a()), null, new d(), 1), "banners");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHaveIncorrectCheques() {
        boolean z = this.haveIncorrectCheques;
        kx2 kx2Var = kx2.b;
        if (z) {
            ChequesView chequesView = (ChequesView) getViewState();
            if (chequesView != null) {
                chequesView.showCheques(kx2Var, true);
                return;
            }
            return;
        }
        ChequesView chequesView2 = (ChequesView) getViewState();
        if (chequesView2 != null) {
            chequesView2.showCheques(kx2Var, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SpannableString createSpannedAlfaProgressString(String str) {
        SpannableString spannableString = new SpannableString(str);
        int iJ = ta8.J('/', 0, 6, str);
        x18 x18Var = new x18(18.0f * Resources.getSystem().getDisplayMetrics().scaledDensity);
        StyleSpan styleSpan = new StyleSpan(1);
        int i2 = iJ + 1;
        if (i2 > str.length() - 1) {
            return spannableString;
        }
        spannableString.setSpan(x18Var, 0, i2, 18);
        spannableString.setSpan(styleSpan, 0, i2, 18);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Object> getChequesListWithTitles(List<hd1> list) {
        ArrayList arrayList = new ArrayList(list.size());
        List<hd1> list2 = list;
        ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList2.add(new lh1((hd1) it.next()));
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private final om1<Date> getCurrentMonthDateRange() {
        Calendar calendar = Calendar.getInstance();
        Date date = new Date();
        date.setTime(System.currentTimeMillis());
        calendar.setTime(date);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(calendar.get(1), calendar.get(2), 1);
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar(calendar.get(1), calendar.get(2), gregorianCalendar.getActualMaximum(5), 23, 59);
        Date time = gregorianCalendar.getTime();
        Date time2 = gregorianCalendar2.getTime();
        time.getClass();
        time2.getClass();
        return new jp1(time, time2);
    }

    private final void getExpenses() {
        q78 q78Var = this.statisticsInteractor;
        ha3 filter$default = getFilter$default(this, false, 1, null);
        q78Var.getClass();
        filter$default.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.f(q78Var.a.a(filter$default).i(ne7.c).f(rj.a()), null, new e(), 1), null, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002c  */
    /* JADX WARN: Code duplicated, block: B:9:0x0016  */
    private final ha3 getFilter(boolean z) {
        String strH;
        String strH2;
        Date date = this.fromDateFilter;
        if (date == null) {
            strH = null;
        } else {
            if (!z) {
                date = null;
            }
            if (date != null) {
                pb2.a.getClass();
                strH = pb2.h(date);
            } else {
                strH = null;
            }
        }
        Date date2 = this.toDateFilter;
        if (date2 == null) {
            strH2 = null;
        } else {
            if (!z) {
                date2 = null;
            }
            if (date2 != null) {
                pb2.a.getClass();
                strH2 = pb2.h(date2);
            } else {
                strH2 = null;
            }
        }
        ArrayList<Integer> arrayList = this.categoriesFilters;
        ArrayList<Integer> arrayList2 = !arrayList.isEmpty() ? arrayList : null;
        ArrayList<Integer> arrayList3 = this.retailersFilters;
        ArrayList<Integer> arrayList4 = !arrayList3.isEmpty() ? arrayList3 : null;
        ArrayList<Integer> arrayList5 = this.weekdaysFilters;
        return new ha3(strH, strH2, arrayList2, arrayList4, !arrayList5.isEmpty() ? arrayList5 : null);
    }

    public static /* synthetic */ ha3 getFilter$default(ChequesPresenter chequesPresenter, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        return chequesPresenter.getFilter(z);
    }

    private final void getProcessed() {
        BasePresenter.disposeOnDestroy$default(this, yb8.f(this.electrochequeInteractor.a.a().i(ne7.c).f(rj.a()), null, new f(), 1), null, 1, null);
    }

    private final void getStatistics() {
        BasePresenter.disposeOnDestroy$default(this, yb8.f(this.statisticsInteractor.a(getFilter$default(this, false, 1, null)).i(ne7.c).f(rj.a()), null, new g(), 1), null, 1, null);
    }

    private final void ignoreBanner(int i2) {
        int i3 = 1;
        ip2.a(this.chequeInteractor.a.c(i2).i(ne7.c).f(rj.a()).g(new pl0(new h(), i3), new ql0(new i(), i3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ignoreBanner$lambda$20(nl3 nl3Var, Object obj) {
        nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isActiveFilter() {
        String str = this.sortDate;
        return ((str == null || str.length() == 0) && this.fromDateServer == null && this.toDateServer == null && this.minTotalSum == null && this.maxTotalSum == null) ? false : true;
    }

    private final void loadMiniChequeBanner() {
        xd1 xd1Var = this.chequeInteractor;
        xd1Var.getClass();
        launchInPresenter(m13.c(new df3(new tb7(new ee1(xd1Var, null)), new j(null)), "chequeInteractor.getChequesBanner()", null, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadNextPage(int i2) {
        String str;
        String str2;
        xd1 xd1Var = this.chequeInteractor;
        String str3 = this.sortDate;
        if (str3 == null) {
            str3 = "PURCHASE_DATE";
        }
        String str4 = str3;
        Date date = this.toDateServer;
        if (date != null) {
            pb2.a.getClass();
            String str5 = ((SimpleDateFormat) pb2.j.getValue()).format(date);
            str5.getClass();
            str = str5;
        } else {
            str = null;
        }
        Date date2 = this.fromDateServer;
        if (date2 != null) {
            pb2.a.getClass();
            String str6 = ((SimpleDateFormat) pb2.j.getValue()).format(date2);
            str6.getClass();
            str2 = str6;
        } else {
            str2 = null;
        }
        Integer num = this.minTotalSum;
        Integer num2 = this.maxTotalSum;
        xd1Var.getClass();
        launchInPresenter(m13.c(se3.a(xd1Var.a.h(xd1Var.b.O0(), str2, str, num2, num, i2, str4), new zd1(i2, xd1Var, null)), "fetchChequesByPage", null, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadScreenContent() throws Exception {
        xd1 xd1Var = this.chequeInteractor;
        int i2 = 0;
        tq5<R> tq5VarD = xd1Var.d.d(new ud1(new ie1(xd1Var, i2), i2));
        tq5VarD.getClass();
        he7 he7Var = ne7.c;
        disposeOnDestroy(yb8.h(tq5VarD.g(he7Var).e(rj.a()), null, new l(), 3), "subscribeAlfaChequesInProgress");
        ih4 ih4VarI = yb8.i(this.chequeRequestQueueInteractor.a.g().h(he7Var).c(rj.a()), new m(), 3);
        this.authDisposables.b(ih4VarI);
        int i3 = 1;
        BasePresenter.disposeOnDestroy$default(this, ih4VarI, null, 1, null);
        observeChangeStateListCheques();
        showSorts();
        this.chequesPaginator = new tf3<>(new n(1, this, ChequesPresenter.class, "loadNextPage", "loadNextPage(I)V", 0), getPresenterScope(), new a(new o(), new p()), new k(se3.a(this.chequeInteractor.c, new je1(2, null)), this));
        refreshChequesAndStatisticsFromScratch();
        if (this.preferencesRepository.v()) {
            banners();
        }
        loadMiniChequeBanner();
        disposeOnDestroy(yb8.f(new p08(this.chequeInteractor.a.s(xd1.a()), new hl0(ba0.h, i3)).i(he7Var).f(rj.a()), null, null, 3), "updateProductCategories");
    }

    private final void observeChangeStateListCheques() {
        hi0<Object> hi0VarB = this.chequeInteractor.b();
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.MILLISECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        disposeOnDestroy(yb8.h(new yq5(hi0VarB, he7Var).g(ne7.c).e(rj.a()), null, new q(), 3), "observeChangeStateListCheques");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshChequesAndStatisticsFromScratch() {
        this.categoriesFilters.clear();
        this.weekdaysFilters.clear();
        this.retailersFilters.clear();
        resetDateRange();
        this.filterChips = kx2.b;
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            chequesView.showDeselectDateButton(false);
        }
        refreshData();
    }

    private final void refreshData() {
        tf3<Object> tf3Var = this.chequesPaginator;
        if (tf3Var != null) {
            tf3Var.b();
        }
        getStatistics();
        getExpenses();
        getProcessed();
    }

    private final void replacePlaceholder(String str) {
        ChequesView chequesView;
        if (this.preferencesRepository.c0().length() <= 0 || (chequesView = (ChequesView) getViewState()) == null) {
            return;
        }
        chequesView.openUrl(vp3.b(this.preferencesRepository.T0(), str, this.preferencesRepository.c0(), this.preferencesRepository.U0()));
    }

    private final void resetDateRange() {
        this.isDateRangeSelected = false;
        om1<Date> currentMonthDateRange = getCurrentMonthDateRange();
        this.fromDateFilter = (Date) currentMonthDateRange.getStart();
        this.toDateFilter = (Date) currentMonthDateRange.getEndInclusive();
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            chequesView.showDateRange((Date) currentMonthDateRange.getStart(), null, true);
        }
    }

    private final void showNoMoreBanners(xb0 xb0Var, z96 z96Var) {
        if (xb0Var != null) {
            ignoreBanner(xb0Var.c);
        }
        if (z96Var != null) {
            ignoreBanner(z96Var.b);
        }
    }

    public static /* synthetic */ void showNoMoreBanners$default(ChequesPresenter chequesPresenter, xb0 xb0Var, z96 z96Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            xb0Var = null;
        }
        if ((i2 & 2) != 0) {
            z96Var = null;
        }
        chequesPresenter.showNoMoreBanners(xb0Var, z96Var);
    }

    private final void showSorts() {
        this.listSorts = this.chequeInteractor.a.i();
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            chequesView.showSorts(this.chequeInteractor.a.i());
        }
    }

    public final void disableSort(u48 u48Var) {
        u48Var.getClass();
        int i2 = c.a[u48Var.ordinal()];
        if (i2 == 1) {
            List<? extends u48> list = this.listSorts;
            if (list == null) {
                aa4.j("listSorts");
                throw null;
            }
            list.get(0).e(false);
            this.sortDate = null;
            List<? extends u48> list2 = this.listSorts;
            if (list2 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list2.get(0).f(BY_DATE_OF);
        } else if (i2 == 2) {
            List<? extends u48> list3 = this.listSorts;
            if (list3 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list3.get(1).e(false);
            List<? extends u48> list4 = this.listSorts;
            if (list4 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list4.get(1).f(SEARCH);
        } else if (i2 == 3) {
            List<? extends u48> list5 = this.listSorts;
            if (list5 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list5.get(2).e(false);
            this.fromDateServer = null;
            this.toDateServer = null;
            List<? extends u48> list6 = this.listSorts;
            if (list6 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list6.get(2).f(PERIOD);
        } else if (i2 == 4) {
            List<? extends u48> list7 = this.listSorts;
            if (list7 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list7.get(3).e(false);
            this.minTotalSum = null;
            this.maxTotalSum = null;
            List<? extends u48> list8 = this.listSorts;
            if (list8 == null) {
                aa4.j("listSorts");
                throw null;
            }
            list8.get(3).f(SUM);
        }
        refreshData();
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            List<? extends u48> list9 = this.listSorts;
            if (list9 != null) {
                chequesView.refreshSorts(list9);
            } else {
                aa4.j("listSorts");
                throw null;
            }
        }
    }

    public final void exportCheques() {
        uf3 uf3Var = this.flowRouter;
        bg7 bg7Var = new bg7();
        uf3Var.getClass();
        uf3Var.c.d(bg7Var);
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onChequeClicked(int i2) {
        new kd.g.c.a().a();
        if (this.cheques.get(i2) != null) {
            uf3 uf3Var = this.flowRouter;
            yf7 yf7Var = new yf7(i2);
            uf3Var.getClass();
            uf3Var.c.d(yf7Var);
        }
    }

    public final void onDateRangeSelected(long j2, long j3) {
        this.fromDateServer = new Date(j2);
        this.toDateServer = new Date(j3);
        List<? extends u48> list = this.listSorts;
        if (list == null) {
            aa4.j("listSorts");
            throw null;
        }
        list.get(2).e(true);
        Date date = this.fromDateServer;
        if (date != null) {
            List<? extends u48> list2 = this.listSorts;
            if (list2 == null) {
                aa4.j("listSorts");
                throw null;
            }
            u48 u48Var = list2.get(2);
            pb2.a.getClass();
            u48Var.f(pb2.a(date));
        }
        Date date2 = this.toDateServer;
        if (date2 != null) {
            List<? extends u48> list3 = this.listSorts;
            if (list3 == null) {
                aa4.j("listSorts");
                throw null;
            }
            u48 u48Var2 = list3.get(2);
            String strA = u48Var2.a();
            pb2.a.getClass();
            u48Var2.f(strA + "- " + pb2.a(date2));
        }
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            List<? extends u48> list4 = this.listSorts;
            if (list4 == null) {
                aa4.j("listSorts");
                throw null;
            }
            chequesView.refreshSorts(list4);
        }
        refreshData();
    }

    public final void onDateSort(s48 s48Var) {
        s48Var.getClass();
        this.sortDate = s48Var.a();
        List<? extends u48> list = this.listSorts;
        if (list == null) {
            aa4.j("listSorts");
            throw null;
        }
        list.get(0).e(true);
        List<? extends u48> list2 = this.listSorts;
        if (list2 == null) {
            aa4.j("listSorts");
            throw null;
        }
        list2.get(0).f(s48Var.d());
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            List<? extends u48> list3 = this.listSorts;
            if (list3 == null) {
                aa4.j("listSorts");
                throw null;
            }
            chequesView.refreshSorts(list3);
        }
        refreshData();
    }

    public final void onDeleteCheque(int i2) {
        final xd1 xd1Var = this.chequeInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.g(xd1Var.a.o(i2).c(new qq1() { // from class: vd1
            @Override // defpackage.qq1
            public final void b(mq1 mq1Var) {
                xd1Var.b().onNext(j59.a);
            }
        }).i(ne7.c).f(rj.a()), new r(), null, 2), null, 1, null);
    }

    public final void onEditSuggestedAddress(int i2) {
        uf3 uf3Var = this.flowRouter;
        yf7 yf7Var = new yf7(i2);
        uf3Var.getClass();
        uf3Var.c.d(yf7Var);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() throws Exception {
        super.onFirstViewAttach();
        this.chequeRequestQueueInteractor.b();
        loadScreenContent();
        this.desktopInteractor.c(getPresenterScope(), new s(null));
    }

    public final void onGetMoreCheques() {
        tf3<Object> tf3Var = this.chequesPaginator;
        if (tf3Var != null) {
            tf3Var.a();
        }
    }

    public final void onInformerClick(xb0 xb0Var) {
        String str;
        xb0Var.getClass();
        new kd.h.a.C0260a(xb0Var.c, false).a();
        xb0.a aVar = xb0Var.a;
        if (aVar == null || (str = aVar.c) == null) {
            return;
        }
        if (ta8.D(str, "{user_id}", false)) {
            replacePlaceholder(str);
            return;
        }
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            chequesView.openDeeplink(str);
        }
    }

    public final void onInformerClosed(xb0 xb0Var) {
        xb0Var.getClass();
        new kd.h.a.C0260a(xb0Var.c, true).a();
        showNoMoreBanners$default(this, xb0Var, null, 2, null);
    }

    public final void onMiniBannerClick(String str) {
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap("Banner", str);
        mapSingletonMap.getClass();
        new kd.q0.a.b.C0281a(mapSingletonMap).c();
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            chequesView.openUrl(str);
        }
    }

    public final void onPollClosed(z96 z96Var) {
        z96Var.getClass();
        int i2 = z96Var.b;
        if (z96Var.e) {
            Map mapSingletonMap = Collections.singletonMap(Integer.valueOf(i2), "Close");
            mapSingletonMap.getClass();
            new kd.h.a.b.C0261a(mapSingletonMap).a();
        } else {
            Map mapSingletonMap2 = Collections.singletonMap(Integer.valueOf(i2), "Skip");
            mapSingletonMap2.getClass();
            new kd.h.a.b.C0262b(mapSingletonMap2).a();
        }
        showNoMoreBanners$default(this, null, z96Var, 1, null);
    }

    public final void onPollVariantComplete(z96.a aVar, z96 z96Var) {
        aVar.getClass();
        z96Var.getClass();
        int i2 = z96Var.b;
        String str = aVar.a;
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap(Integer.valueOf(i2), str);
        mapSingletonMap.getClass();
        new kd.h.a.b.c(mapSingletonMap).a();
        List<z96.a> list = z96Var.d;
        if (list == null || !list.contains(aVar)) {
            return;
        }
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.infoElementsInteractor.a.p(i2).i(ne7.c).f(rj.a()), null, null, 3), null, 1, null);
    }

    public final void onQueueClicked() {
        uf3 uf3Var = this.flowRouter;
        wh7 wh7Var = new wh7(null, false, 0L, null, 29);
        uf3Var.getClass();
        uf3Var.c.d(wh7Var);
    }

    public final void onRefreshChequesAndStatisticsWithCurrentFilters() {
        refreshData();
    }

    public final void onStatisticsClicked() {
        uf3 uf3Var = this.flowRouter;
        uf3Var.getClass();
        uf3Var.c.d(gi7.a);
    }

    public final void onSumSort(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.minTotalSum = Integer.valueOf((int) (Float.parseFloat(str) * 100.0f));
        this.maxTotalSum = Integer.valueOf((int) (Float.parseFloat(str2) * 100.0f));
        List<? extends u48> list = this.listSorts;
        if (list == null) {
            aa4.j("listSorts");
            throw null;
        }
        list.get(3).e(true);
        List<? extends u48> list2 = this.listSorts;
        if (list2 == null) {
            aa4.j("listSorts");
            throw null;
        }
        list2.get(3).f(str + " - " + str2);
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            List<? extends u48> list3 = this.listSorts;
            if (list3 == null) {
                aa4.j("listSorts");
                throw null;
            }
            chequesView.refreshSorts(list3);
        }
        refreshData();
    }

    public final void openSearch() {
        this.flowRouter.d(dh7.a);
    }

    public final void removeReceiptFromQueue(String str) {
        str.getClass();
        yg1 yg1Var = this.chequeRequestQueueInteractor;
        yg1Var.getClass();
        this.authDisposables.b(yb8.g(yg1Var.a.a(str).i(ne7.c).f(rj.a()), null, null, 3));
    }

    public final void resetMiniBannerWasShown() {
        this.bannerShownTracker.b.clear();
    }

    public final void sendMiniBannerWatched() {
        Integer num = this.miniBannerId;
        if (num != null) {
            int iIntValue = num.intValue();
            lc0 lc0Var = this.bannerShownTracker;
            HashSet<Integer> hashSet = lc0Var.b;
            if (hashSet.contains(Integer.valueOf(iIntValue))) {
                return;
            }
            lc0Var.a.a(iIntValue);
            hashSet.add(Integer.valueOf(iIntValue));
        }
    }

    public final void showOrdAdDialog(b06 b06Var) {
        b06Var.getClass();
        ChequesView chequesView = (ChequesView) getViewState();
        if (chequesView != null) {
            chequesView.showOrdAdDialog(b06Var);
        }
    }
}
