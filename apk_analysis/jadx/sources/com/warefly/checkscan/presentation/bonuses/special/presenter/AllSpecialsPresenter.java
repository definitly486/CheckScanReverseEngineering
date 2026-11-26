package com.warefly.checkscan.presentation.bonuses.special.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsPresenter;
import defpackage.a57;
import defpackage.b06;
import defpackage.bm0;
import defpackage.fc0;
import defpackage.gh4;
import defpackage.h6;
import defpackage.hc0;
import defpackage.j59;
import defpackage.jc0;
import defpackage.k58;
import defpackage.kd;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.mc0;
import defpackage.me0;
import defpackage.mo7;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.rj;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.x07;
import defpackage.yb8;
import defpackage.zk1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AllSpecialsPresenter extends BasePresenter<AllSpecialsView> implements k58.a {
    private final bm0 blockInteractor;
    private final uf3 flowRouter;
    private final mo7 sendBannerWatchUseCase;

    public static final class a extends gh4 implements nl3<a57<List<? extends jc0>>, List<? extends hc0.b>> {
        public static final a f = new a(1);

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

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            AllSpecialsView allSpecialsView = (AllSpecialsView) AllSpecialsPresenter.this.getViewState();
            if (allSpecialsView != null) {
                allSpecialsView.showCouldntLoadPage(true);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<List<? extends hc0.b>, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends hc0.b> list) {
            List<? extends hc0.b> list2 = list;
            AllSpecialsView allSpecialsView = (AllSpecialsView) AllSpecialsPresenter.this.getViewState();
            if (allSpecialsView != null) {
                list2.getClass();
                List<? extends hc0.b> list3 = list2;
                ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
                Iterator<T> it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(new mc0((hc0.b) it.next()));
                }
                allSpecialsView.showSpecials(arrayList);
            }
            return j59.a;
        }
    }

    public AllSpecialsPresenter(uf3 uf3Var, bm0 bm0Var, mo7 mo7Var) {
        uf3Var.getClass();
        bm0Var.getClass();
        mo7Var.getClass();
        this.flowRouter = uf3Var;
        this.blockInteractor = bm0Var;
        this.sendBannerWatchUseCase = mo7Var;
    }

    private final void loadSpecials() {
        AllSpecialsView allSpecialsView = (AllSpecialsView) getViewState();
        if (allSpecialsView != null) {
            allSpecialsView.showLoadingPage(true);
        }
        bm0 bm0Var = this.blockInteractor;
        mz7 mz7VarB = bm0Var.a.b(fc0.PROMO, bm0Var.e, null);
        bm0.h hVar = new bm0.h(a.f);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new p08(mz7VarB, hVar).i(ne7.c).f(rj.a()), new h6() { // from class: sc
            @Override // defpackage.h6
            public final void run() {
                AllSpecialsPresenter.loadSpecials$lambda$0(this.a);
            }
        }), new b(), new c()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadSpecials$lambda$0(AllSpecialsPresenter allSpecialsPresenter) {
        AllSpecialsView allSpecialsView = (AllSpecialsView) allSpecialsPresenter.getViewState();
        if (allSpecialsView != null) {
            allSpecialsView.showLoadingPage(false);
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void onBannerShown(int i) {
        new kd.e.c.g.b(i).c();
        this.sendBannerWatchUseCase.a(i);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadSpecials();
    }

    public final void onRefresh() {
        loadSpecials();
    }

    @Override // k58.a
    public void onSpecialAdClicked(b06 b06Var) {
        String str;
        b06Var.getClass();
        if (b06Var.d == null || b06Var.e == null || (str = b06Var.c) == null) {
            return;
        }
        new kd.e0.f(str).a();
        AllSpecialsView allSpecialsView = (AllSpecialsView) getViewState();
        if (allSpecialsView != null) {
            allSpecialsView.showAdInfoDialog(b06Var);
        }
    }

    @Override // k58.a
    public void onSpecialClicked(hc0.b bVar) {
        String str;
        bVar.getClass();
        b06 b06Var = bVar.c;
        if (b06Var != null && (str = b06Var.c) != null) {
            new kd.e0.e(str).a();
        }
        new kd.e.c.g.a(bVar.e).c();
        AllSpecialsView allSpecialsView = (AllSpecialsView) getViewState();
        if (allSpecialsView != null) {
            allSpecialsView.openUrl(bVar.b);
        }
    }
}
