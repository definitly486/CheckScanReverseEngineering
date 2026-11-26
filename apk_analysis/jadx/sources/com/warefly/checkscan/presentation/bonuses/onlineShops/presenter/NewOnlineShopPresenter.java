package com.warefly.checkscan.presentation.bonuses.onlineShops.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView;
import defpackage.a9;
import defpackage.b06;
import defpackage.bm0;
import defpackage.bv7;
import defpackage.c18;
import defpackage.ch3;
import defpackage.cn0;
import defpackage.cp2;
import defpackage.cs0;
import defpackage.dm3;
import defpackage.dn0;
import defpackage.e08;
import defpackage.ea;
import defpackage.en0;
import defpackage.er6;
import defpackage.f81;
import defpackage.fc0;
import defpackage.fn0;
import defpackage.g81;
import defpackage.gg3;
import defpackage.gg7;
import defpackage.gh4;
import defpackage.gn0;
import defpackage.h08;
import defpackage.hc0;
import defpackage.he7;
import defpackage.hn0;
import defpackage.j18;
import defpackage.j59;
import defpackage.k57;
import defpackage.kd;
import defpackage.kn1;
import defpackage.lf7;
import defpackage.lh3;
import defpackage.ll3;
import defpackage.md;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl0;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.p08;
import defpackage.pd;
import defpackage.pl0;
import defpackage.pm0;
import defpackage.q71;
import defpackage.q9;
import defpackage.ql0;
import defpackage.qm3;
import defpackage.qq0;
import defpackage.qx1;
import defpackage.qy4;
import defpackage.re1;
import defpackage.rj;
import defpackage.rl0;
import defpackage.rm3;
import defpackage.rn0;
import defpackage.s47;
import defpackage.sl0;
import defpackage.sx5;
import defpackage.t44;
import defpackage.ta8;
import defpackage.td;
import defpackage.th3;
import defpackage.th7;
import defpackage.ud;
import defpackage.uf3;
import defpackage.um0;
import defpackage.uv7;
import defpackage.uz7;
import defpackage.v90;
import defpackage.vd;
import defpackage.vm0;
import defpackage.wm0;
import defpackage.wz7;
import defpackage.xv7;
import defpackage.xz7;
import defpackage.y3;
import defpackage.y44;
import defpackage.yb8;
import defpackage.yz7;
import defpackage.z3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class NewOnlineShopPresenter extends BasePresenter<OnlineShopsView> implements bv7, com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a.InterfaceC0161a<cs0, Integer>, y44, t44.b {
    public static final a Companion = new a();
    private static final long SPECIAL_INTERVAL = 5000;
    private int catSelectedId;
    private final com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a<cs0, Integer> controller;
    private final AtomicBoolean enableCarousel;
    private final uf3 flowRouter;
    private final bm0 interactor;
    private final AtomicInteger pos;
    private final uv7 reason;
    private final s47 resourceProvider;
    private final kd.o0 selectedFrom;
    private final int shopsId;
    private boolean specialAutoScrollInit;
    private final String toolbar;
    private int updatedByFilterShopId;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[kd.o0.values().length];
            try {
                iArr[kd.o0.Category.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[kd.o0.Bonuses.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final /* synthetic */ class c extends qm3 implements ll3<j59> {
        @Override // defpackage.ll3
        public final j59 invoke() {
            ((NewOnlineShopPresenter) this.receiver).invalidateAndSubscribe();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<List<? extends cs0>, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends cs0> list) {
            OnlineShopsView onlineShopsView;
            List<? extends cs0> list2 = list;
            list2.getClass();
            List<? extends cs0> list3 = list2;
            boolean z = list3 instanceof Collection;
            NewOnlineShopPresenter newOnlineShopPresenter = NewOnlineShopPresenter.this;
            if (!z || !list3.isEmpty()) {
                Iterator<T> it = list3.iterator();
                while (it.hasNext()) {
                    if (((cs0) it.next()) instanceof xv7) {
                        newOnlineShopPresenter.prepareAutoScroll();
                        break;
                    }
                }
            }
            if (!list2.isEmpty() && (onlineShopsView = (OnlineShopsView) newOnlineShopPresenter.getViewState()) != null) {
                onlineShopsView.showAllData(list2);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements dm3<List<? extends hc0.b>, List<? extends sx5>, List<? extends er6>, j59> {
        public static final e f = new e(3);

        @Override // defpackage.dm3
        public final j59 invoke(List<? extends hc0.b> list, List<? extends sx5> list2, List<? extends er6> list3) {
            list.getClass();
            list2.getClass();
            list3.getClass();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<cp2, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            OnlineShopsView onlineShopsView = (OnlineShopsView) NewOnlineShopPresenter.this.getViewState();
            if (onlineShopsView != null) {
                onlineShopsView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<j59, j59> {
        public static final g f = new g(1);

        @Override // defpackage.nl3
        public final j59 invoke(j59 j59Var) {
            return j59.a;
        }
    }

    public static final class h extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean f;
        public final /* synthetic */ int g;
        public final /* synthetic */ NewOnlineShopPresenter h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(boolean z, int i, NewOnlineShopPresenter newOnlineShopPresenter) {
            super(0);
            this.f = z;
            this.g = i;
            this.h = newOnlineShopPresenter;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            int i = this.g;
            boolean z = this.f;
            if (z) {
                new kd.e.b.C0241b(i).a();
                new md(i).a();
            } else {
                new kd.e.b.f(i).a();
                new td(i).a();
            }
            OnlineShopsView onlineShopsView = (OnlineShopsView) this.h.getViewState();
            if (onlineShopsView != null) {
                onlineShopsView.showFavouriteStatusChanged(z);
            }
            return j59.a;
        }
    }

    public static final class i extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(boolean z) {
            super(0);
            this.g = z;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            OnlineShopsView onlineShopsView = (OnlineShopsView) NewOnlineShopPresenter.this.getViewState();
            if (onlineShopsView != null) {
                onlineShopsView.showFavouriteStatusChanged(this.g);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<List<? extends cs0>, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends cs0> list) {
            List<? extends cs0> list2 = list;
            NewOnlineShopPresenter newOnlineShopPresenter = NewOnlineShopPresenter.this;
            OnlineShopsView onlineShopsView = (OnlineShopsView) newOnlineShopPresenter.getViewState();
            if (onlineShopsView != null) {
                list2.getClass();
                List<? extends cs0> list3 = list2;
                ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
                for (cs0 cs0Var : list3) {
                    cs0Var.getClass();
                    q71 q71Var = ((qq0) cs0Var).a;
                    int i = q71Var.a;
                    String str = q71Var.c;
                    if (str == null) {
                        str = "";
                    }
                    arrayList.add(new g81(new f81(i, q71Var.b, str, null)));
                }
                onlineShopsView.showFilters(arrayList, newOnlineShopPresenter.catSelectedId);
            }
            return j59.a;
        }
    }

    public static final class k extends gh4 implements nl3<Long, Boolean> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(Long l) {
            l.getClass();
            return Boolean.valueOf(NewOnlineShopPresenter.this.enableCarousel.get());
        }
    }

    public static final class l extends gh4 implements nl3<Long, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            NewOnlineShopPresenter newOnlineShopPresenter = NewOnlineShopPresenter.this;
            OnlineShopsView onlineShopsView = (OnlineShopsView) newOnlineShopPresenter.getViewState();
            if (onlineShopsView != null) {
                onlineShopsView.scrollNextSpecials(newOnlineShopPresenter.pos.incrementAndGet());
            }
            return j59.a;
        }
    }

    public NewOnlineShopPresenter(uf3 uf3Var, int i2, bm0 bm0Var, kd.o0 o0Var, uv7 uv7Var, String str, s47 s47Var) {
        uf3Var.getClass();
        bm0Var.getClass();
        o0Var.getClass();
        uv7Var.getClass();
        str.getClass();
        s47Var.getClass();
        this.flowRouter = uf3Var;
        this.shopsId = i2;
        this.interactor = bm0Var;
        this.selectedFrom = o0Var;
        this.reason = uv7Var;
        this.toolbar = str;
        this.resourceProvider = s47Var;
        this.catSelectedId = i2;
        this.updatedByFilterShopId = i2;
        this.enableCarousel = new AtomicBoolean(true);
        this.pos = new AtomicInteger(0);
        this.controller = new com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a<>(new c(0, this, NewOnlineShopPresenter.class, "invalidateAndSubscribe", "invalidateAndSubscribe()V", 0), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateAndSubscribe() {
        disposeOnDestroy(yb8.h(this.interactor.o.g(ne7.c).e(rj.a()), null, new d(), 3), "invalidateAndSubscribe");
    }

    private final void loadAll(int i2) {
        bm0 bm0Var = this.interactor;
        fc0 fc0Var = fc0.HEADER;
        Integer numValueOf = Integer.valueOf(i2);
        bm0Var.getClass();
        fc0Var.getClass();
        mz7 mz7VarB = bm0Var.a.b(fc0Var, bm0Var.e, numValueOf);
        rl0 rl0Var = new rl0(um0.f);
        mz7VarB.getClass();
        int i3 = 0;
        yz7 yz7Var = new yz7(new p08(mz7VarB, rl0Var), new sl0(new vm0(bm0Var), i3));
        final wm0 wm0Var = new wm0(bm0Var);
        wz7 wz7Var = new wz7(yz7Var, new qx1() { // from class: tl0
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                wm0Var.invoke(obj);
            }
        });
        bm0 bm0Var2 = this.interactor;
        Integer numValueOf2 = this.reason == uv7.Category ? Integer.valueOf(i2) : null;
        uv7 uv7Var = this.reason;
        wz7 wz7Var2 = new wz7(new yz7(bm0Var2.a.f((uv7Var == uv7.Selection || uv7Var == uv7.TopSelection) ? Integer.valueOf(i2) : null, numValueOf2, bm0Var2.e, 0), new pl0(new gn0(bm0Var2), i3)), new ql0(new hn0(bm0Var2), i3));
        bm0 bm0Var3 = this.interactor;
        int i4 = 1;
        yz7 yz7Var2 = new yz7(new p08(bm0Var3.a.p(Integer.valueOf(i2), Integer.valueOf(bm0Var3.e), 0), new v90(dn0.f, i4)), new nl0(new en0(bm0Var3), i3));
        final fn0 fn0Var = new fn0(bm0Var3);
        disposeOnDestroy(yb8.f(new uz7(new xz7(new j18(new c18[]{wz7Var, wz7Var2, new wz7(yz7Var2, new qx1() { // from class: ol0
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                fn0Var.invoke(obj);
            }
        })}, new rm3.b(new ea(e.f))).i(ne7.c).f(rj.a()), new re1(new f(), 2)), new qy4(this, i4)), null, g.f, 1), "loadAll");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 loadAll$lambda$0(dm3 dm3Var, Object obj, Object obj2, Object obj3) {
        return (j59) dm3Var.invoke(obj, obj2, obj3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAll$lambda$2(NewOnlineShopPresenter newOnlineShopPresenter) {
        OnlineShopsView onlineShopsView = (OnlineShopsView) newOnlineShopPresenter.getViewState();
        if (onlineShopsView != null) {
            onlineShopsView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareAutoScroll() {
        if (this.specialAutoScrollInit) {
            return;
        }
        this.specialAutoScrollInit = true;
        int i2 = gg3.b;
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.MILLISECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        disposeOnDestroy(yb8.i(new lh3(new th3(new ch3(Math.max(0L, 5000L), Math.max(0L, 5000L), he7Var), new y3(new k(), 3))).c(rj.a()), new l(), 3), "carouselFlow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean prepareAutoScroll$lambda$4(nl3 nl3Var, Object obj) {
        return ((Boolean) nl3Var.invoke(obj)).booleanValue();
    }

    private final void sendOnSpecialsClicked(hc0.b bVar) {
        String str;
        String str2 = bVar.b;
        int i2 = bVar.e;
        if (ta8.D(str2, this.resourceProvider.getString(R.string.deeplink_online_shops), false)) {
            new kd.e.d.g.C0252e(ud.c(i2, "headers")).a();
        }
        b06 b06Var = bVar.c;
        if (b06Var != null && (str = b06Var.c) != null) {
            new kd.e0.e(str).a();
        }
        new kd.e.c.C0247c(ud.c(i2, "headers")).c();
    }

    private final void sendSelectedFrom(int i2) {
        int i3 = b.a[this.selectedFrom.ordinal()];
        if (i3 == 1) {
            new kd.e.d.g.c(ud.c(i2, "Category")).a();
            new kd.e.a.C0234a.f.b(i2, "Category").a();
        } else {
            if (i3 != 2) {
                return;
            }
            new kd.e.a.C0234a.f.d(i2).a();
            new kd.e.d.g.f(i2).a();
        }
    }

    private final void sendTopFromList(int i2) {
        if (this.reason == uv7.TopSelection) {
            new kd.e.c.h.a(i2).a();
        }
    }

    public final void changePosSpecialByUser(int i2) {
        if (i2 != -1) {
            this.pos.set(i2);
        }
    }

    @Override // defpackage.y44
    public void enableScroll(boolean z) {
        this.enableCarousel.set(z);
    }

    public final int getCurrentSpecialPos() {
        return this.pos.get();
    }

    public mz7<k57<Boolean>> loadNextPage(int i2, int i3) {
        bm0 bm0Var = this.interactor;
        Integer numValueOf = this.reason == uv7.Category ? Integer.valueOf(i3) : null;
        uv7 uv7Var = this.reason;
        return new e08(bm0Var.a.f((uv7Var == uv7.Selection || uv7Var == uv7.TopSelection) ? Integer.valueOf(i3) : null, numValueOf, bm0Var.e, i2), new z3(new cn0(bm0Var), 1));
    }

    public final void loadNextShops() {
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.controller.a().i(ne7.c).f(rj.a()), null, null, 3), null, 1, null);
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // defpackage.bv7
    public void onConfirmAdultClick() {
        this.interactor.a.e();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        this.interactor.a();
        super.onDestroy();
    }

    public final void onFavoritePromocode(int i2, boolean z) {
        disposeOnDestroy(yb8.g(this.interactor.e(i2, z).i(ne7.c).f(rj.a()), null, new h(z, i2, this), 1), "onFavoritePromocode");
    }

    @Override // defpackage.bv7
    public void onFavouriteClick(int i2, boolean z) {
        bm0 bm0Var = this.interactor;
        disposeOnDestroy(yb8.g(new h08(bm0Var.a.t(i2, z).d(bm0Var.b.j(i2)), new a9(new rn0(bm0Var, i2), 1)).i(ne7.c).f(rj.a()), null, new i(z), 1), "onFavouriteClick");
    }

    public final void onFiltersClicked() {
        bm0 bm0Var = this.interactor;
        disposeOnDestroy(yb8.f(new p08(bm0Var.a.s(bm0Var.e), new q9(pm0.f, 2)).i(ne7.c).f(rj.a()), null, new j(), 1), "onFiltersClicked");
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        OnlineShopsView onlineShopsView;
        super.onFirstViewAttach();
        OnlineShopsView onlineShopsView2 = (OnlineShopsView) getViewState();
        if (onlineShopsView2 != null) {
            onlineShopsView2.showFilterButton(this.reason == uv7.Category);
        }
        loadAll(this.shopsId);
        this.controller.b(Integer.valueOf(this.shopsId));
        if (ta8.M(this.toolbar) || (onlineShopsView = (OnlineShopsView) getViewState()) == null) {
            return;
        }
        onlineShopsView.setToolbarTitle(this.toolbar);
    }

    public final void onMorePromocodesClicked() {
        this.flowRouter.j(new th7(null, this.shopsId, 6, false));
    }

    @Override // defpackage.bv7
    public void onOrdClick(b06 b06Var) {
        b06Var.getClass();
        OnlineShopsView onlineShopsView = (OnlineShopsView) getViewState();
        if (onlineShopsView != null) {
            onlineShopsView.showOrdBottomSheet(b06Var);
        }
    }

    public final void onPromocodeClicked(int i2) {
        if (this.reason == uv7.Category) {
            new vd(i2).a();
            new pd(i2).a();
        }
        this.flowRouter.d(new gg7(i2));
    }

    @Override // defpackage.bv7
    public void onShopClick(int i2) {
        sendTopFromList(i2);
        sendSelectedFrom(i2);
        this.flowRouter.d(new lf7(i2));
    }

    @Override // t44.b
    public void onSpecialItemClick(hc0.b bVar) {
        bVar.getClass();
        sendOnSpecialsClicked(bVar);
        OnlineShopsView onlineShopsView = (OnlineShopsView) getViewState();
        if (onlineShopsView != null) {
            onlineShopsView.openUrl(bVar.b);
        }
    }

    public final void setScrollState(boolean z) {
        this.enableCarousel.set(z);
    }

    public final void showShops(int i2, String str) {
        str.getClass();
        this.interactor.a();
        this.controller.b(Integer.valueOf(i2));
        OnlineShopsView onlineShopsView = (OnlineShopsView) getViewState();
        if (onlineShopsView != null) {
            onlineShopsView.setToolbarTitle(str);
        }
        OnlineShopsView onlineShopsView2 = (OnlineShopsView) getViewState();
        if (onlineShopsView2 != null) {
            onlineShopsView2.scrollToTop();
        }
        this.updatedByFilterShopId = i2;
        loadAll(i2);
    }

    @Override // t44.b
    public void showSpecialAdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        if (b06Var.d == null || b06Var.e == null) {
            return;
        }
        String str = b06Var.c;
        if (str != null) {
            new kd.e0.f(str).a();
        }
        OnlineShopsView onlineShopsView = (OnlineShopsView) getViewState();
        if (onlineShopsView != null) {
            onlineShopsView.showOrdBottomSheet(b06Var);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a.InterfaceC0161a
    public /* bridge */ /* synthetic */ mz7 loadNextPage(int i2, Integer num) {
        return loadNextPage(i2, num.intValue());
    }
}
