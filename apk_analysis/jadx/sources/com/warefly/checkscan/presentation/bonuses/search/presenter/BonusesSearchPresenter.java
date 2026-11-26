package com.warefly.checkscan.presentation.bonuses.search.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView;
import defpackage.b06;
import defpackage.bv7;
import defpackage.cp0;
import defpackage.cs0;
import defpackage.dq1;
import defpackage.dt6;
import defpackage.e08;
import defpackage.ep0;
import defpackage.fp0;
import defpackage.gg3;
import defpackage.gh4;
import defpackage.h08;
import defpackage.h63;
import defpackage.he7;
import defpackage.hi0;
import defpackage.hp0;
import defpackage.ip0;
import defpackage.iv7;
import defpackage.j59;
import defpackage.jv;
import defpackage.k57;
import defpackage.kd;
import defpackage.kd7;
import defpackage.kp0;
import defpackage.l3;
import defpackage.lg3;
import defpackage.ll3;
import defpackage.lp0;
import defpackage.md;
import defpackage.mz7;
import defpackage.n00;
import defpackage.ne7;
import defpackage.ng3;
import defpackage.nh3;
import defpackage.nl0;
import defpackage.nl3;
import defpackage.nq1;
import defpackage.nq5;
import defpackage.oq1;
import defpackage.p08;
import defpackage.qf7;
import defpackage.qm3;
import defpackage.qq1;
import defpackage.rg3;
import defpackage.rj;
import defpackage.rm3;
import defpackage.rp0;
import defpackage.sh3;
import defpackage.sq0;
import defpackage.t42;
import defpackage.ta8;
import defpackage.td;
import defpackage.th7;
import defpackage.tm3;
import defpackage.tp1;
import defpackage.uf3;
import defpackage.uq1;
import defpackage.vo0;
import defpackage.wo0;
import defpackage.wq;
import defpackage.x68;
import defpackage.xq;
import defpackage.yb8;
import defpackage.yo0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesSearchPresenter extends BasePresenter<BonusesSearchView> implements iv7, com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a.InterfaceC0161a<cs0, String>, bv7 {
    private final com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a<cs0, String> controller;
    private final uf3 flowRouter;
    private final gg3<String> queryObservable;
    private final hi0<String> querySubject;
    private final lp0 searchInteractor;

    public static final /* synthetic */ class a extends qm3 implements ll3<j59> {
        @Override // defpackage.ll3
        public final j59 invoke() {
            ((BonusesSearchPresenter) this.receiver).invalidateAndSubscribe();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<List<? extends cs0>, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends cs0> list) {
            List<? extends cs0> list2 = list;
            BonusesSearchView bonusesSearchView = (BonusesSearchView) BonusesSearchPresenter.this.getViewState();
            if (bonusesSearchView != null) {
                list2.getClass();
                bonusesSearchView.showContent(list2);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean f;
        public final /* synthetic */ int g;
        public final /* synthetic */ BonusesSearchPresenter h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(boolean z, int i, BonusesSearchPresenter bonusesSearchPresenter) {
            super(0);
            this.f = z;
            this.g = i;
            this.h = bonusesSearchPresenter;
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
            BonusesSearchView bonusesSearchView = (BonusesSearchView) this.h.getViewState();
            if (bonusesSearchView != null) {
                bonusesSearchView.showFavouriteStatusChanged(z);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Boolean, j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(boolean z) {
            super(1);
            this.g = z;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            BonusesSearchView bonusesSearchView = (BonusesSearchView) BonusesSearchPresenter.this.getViewState();
            if (bonusesSearchView != null) {
                bonusesSearchView.showFavouriteStatusChanged(this.g);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<String, j59> {
        public static final e f = new e(1);

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            str2.getClass();
            Map mapSingletonMap = Collections.singletonMap("text", str2);
            mapSingletonMap.getClass();
            new kd.e.c.f.b(mapSingletonMap).a();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<String, dt6<? extends j59>> {
        public f() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final dt6<? extends j59> invoke(String str) {
            final String str2 = str;
            str2.getClass();
            BonusesSearchPresenter bonusesSearchPresenter = BonusesSearchPresenter.this;
            bonusesSearchPresenter.controller.b(str2);
            int i = 0;
            if (!ta8.M(str2)) {
                final lp0 lp0Var = bonusesSearchPresenter.searchInteractor;
                lp0Var.getClass();
                int i2 = lp0Var.d;
                rp0 rp0Var = lp0Var.b;
                int i3 = 2;
                nq1 nq1Var = new nq1(new tp1(new qq1[]{new h08(rp0Var.j(str2, 0, Integer.valueOf(i2)), new wq(new hp0(lp0Var), i3)), new dq1(new Callable() { // from class: zo0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        List<String> list = mp0.a;
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : list) {
                            if (ta8.D((String) obj, str2, false)) {
                                arrayList.add(obj);
                            }
                        }
                        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(new la8((String) it.next()));
                        }
                        lp0Var.e.onNext(new x68.a(arrayList2));
                        return j59.a;
                    }
                }), new h08(rp0Var.h(str2, 0, Integer.valueOf(i2)), new xq(new kp0(lp0Var), i3))}));
                return nq1Var instanceof tm3 ? ((tm3) nq1Var).c() : new uq1(nq1Var);
            }
            final lp0 lp0Var2 = bonusesSearchPresenter.searchInteractor;
            lp0Var2.getClass();
            dq1 dq1Var = new dq1(new Callable() { // from class: ap0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    lp0 lp0Var3 = lp0Var2;
                    ArrayList arrayList = lp0Var3.h;
                    List<String> list = mp0.a;
                    ArrayList arrayList2 = new ArrayList(kn1.q(list, 10));
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(new la8((String) it.next()));
                    }
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.addAll(arrayList2);
                    arrayList.clear();
                    arrayList.addAll(arrayList3);
                    lp0Var3.e.onNext(new x68.c(arrayList3));
                    return j59.a;
                }
            });
            yo0 yo0Var = new yo0(new fp0(lp0Var2), i);
            rm3.e eVar = rm3.d;
            rm3.d dVar = rm3.c;
            oq1 oq1Var = new oq1(dq1Var, yo0Var, eVar, dVar, dVar);
            return oq1Var instanceof tm3 ? ((tm3) oq1Var).c() : new uq1(oq1Var);
        }
    }

    public BonusesSearchPresenter(lp0 lp0Var, uf3 uf3Var) {
        lp0Var.getClass();
        uf3Var.getClass();
        this.searchInteractor = lp0Var;
        this.flowRouter = uf3Var;
        this.controller = new com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a<>(new a(0, this, BonusesSearchPresenter.class, "invalidateAndSubscribe", "invalidateAndSubscribe()V", 0), this);
        hi0<String> hi0Var = new hi0<>();
        this.querySubject = hi0Var;
        this.queryObservable = hi0Var.h(n00.LATEST);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateAndSubscribe() {
        disposeOnDestroy(yb8.h(this.searchInteractor.i.g(ne7.c).e(rj.a()), null, new b(), 3), "invalidateAndSubscribe");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final dt6 onFirstViewAttach$lambda$1(nl3 nl3Var, Object obj) {
        return (dt6) nl3Var.invoke(obj);
    }

    public final void loadNext() {
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.controller.a().i(ne7.c).f(rj.a()), null, null, 3), null, 1, null);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a.InterfaceC0161a
    public mz7<k57<Boolean>> loadNextPage(int i, String str) {
        str.getClass();
        lp0 lp0Var = this.searchInteractor;
        lp0Var.getClass();
        return new p08(lp0Var.b.h(str, i, Integer.valueOf(lp0Var.d)), new jv(new ip0(lp0Var), 1));
    }

    public final void onBackClick() {
        lp0 lp0Var = this.searchInteractor;
        lp0Var.e.onNext(new x68.c(lp0Var.h));
        int i = 0;
        lp0Var.f.onNext(new x68.c(i));
        lp0Var.g.onNext(new x68.c(i));
        this.flowRouter.c();
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onChipClick(String str) {
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap("suggest", str);
        mapSingletonMap.getClass();
        new kd.e.c.f.a(mapSingletonMap).a();
        BonusesSearchView bonusesSearchView = (BonusesSearchView) getViewState();
        if (bonusesSearchView != null) {
            bonusesSearchView.setQueryInSearchView(str);
        }
        this.controller.b(str);
        final lp0 lp0Var = this.searchInteractor;
        lp0Var.getClass();
        int i = lp0Var.d;
        rp0 rp0Var = lp0Var.b;
        int i2 = 2;
        disposeOnDestroy(yb8.g(new tp1(new qq1[]{new h08(rp0Var.j(str, 0, Integer.valueOf(i)), new wq(new hp0(lp0Var), i2)), new h08(rp0Var.h(str, 0, Integer.valueOf(i)), new xq(new kp0(lp0Var), i2))}).c(new qq1() { // from class: xo0
            @Override // defpackage.qq1
            public final void b(mq1 mq1Var) {
                lp0Var.e.onNext(new x68.a(kx2.b));
            }
        }).i(ne7.c).f(rj.a()), null, null, 3), "onChipClick");
    }

    @Override // defpackage.bv7
    public void onConfirmAdultClick() {
    }

    public final void onFavoritePromocode(int i, boolean z) {
        lp0 lp0Var = this.searchInteractor;
        t42 t42Var = lp0Var.a;
        long j = i;
        disposeOnDestroy(yb8.g(new h08(t42Var.f(new h63(z, j)).d(t42Var.b(j)), new wo0(new cp0(lp0Var, i))).i(ne7.c).f(rj.a()), null, new c(z, i, this), 1), "onFavoritePromocode");
    }

    @Override // defpackage.bv7
    public void onFavouriteClick(int i, boolean z) {
        lp0 lp0Var = this.searchInteractor;
        disposeOnDestroy(yb8.f(new e08(lp0Var.b.t(i, z).d(lp0Var.c.j(i)), new vo0(new ep0(lp0Var, i))).i(ne7.c).f(rj.a()), null, new d(z), 1), "onFavouriteClick");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ih5
    public void onFirstViewAttach() throws Exception {
        gg3 sh3Var;
        super.onFirstViewAttach();
        BonusesSearchView bonusesSearchView = (BonusesSearchView) getViewState();
        if (bonusesSearchView != null) {
            bonusesSearchView.setSearchView();
        }
        gg3<String> gg3Var = this.queryObservable;
        gg3Var.getClass();
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.MILLISECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        ng3 ng3Var = new ng3(new lg3(gg3Var, he7Var), new nl0(e.f, 1));
        l3 l3Var = new l3(new f(), 2);
        int i = gg3.b;
        nq5.b(i, "bufferSize");
        if (ng3Var instanceof kd7) {
            T tCall = ((kd7) ng3Var).call();
            sh3Var = tCall == 0 ? rg3.c : new nh3.a(tCall, l3Var);
        } else {
            sh3Var = new sh3(ng3Var, l3Var, i);
        }
        disposeOnDestroy(yb8.i(sh3Var.h(ne7.c).c(rj.a()), null, 7), "queryObservable");
    }

    @Override // defpackage.iv7
    public void onMoreClick() {
        uf3 uf3Var = this.flowRouter;
        String strJ = this.querySubject.j();
        if (strJ == null) {
            strJ = "";
        }
        uf3Var.j(new th7(strJ, 0, 5, false));
    }

    @Override // defpackage.bv7
    public void onOrdClick(b06 b06Var) {
        b06Var.getClass();
        BonusesSearchView bonusesSearchView = (BonusesSearchView) getViewState();
        if (bonusesSearchView != null) {
            bonusesSearchView.showOrdBottomSheet(b06Var);
        }
    }

    public final void onPromocodeClicked(int i) {
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i, sq0.COUPON_SEARCH, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    @Override // defpackage.bv7
    public void onShopClick(int i) {
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i, sq0.ONLINE_SHOP, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    public final void onTextChanged(String str) {
        if (str != null) {
            this.querySubject.onNext(str);
        }
    }
}
