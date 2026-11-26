package com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.c4;
import defpackage.ct6;
import defpackage.du4;
import defpackage.fl3;
import defpackage.gh4;
import defpackage.he7;
import defpackage.hi7;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jh2;
import defpackage.l17;
import defpackage.mz7;
import defpackage.n00;
import defpackage.n61;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.o17;
import defpackage.p08;
import defpackage.p61;
import defpackage.q61;
import defpackage.rj;
import defpackage.s4;
import defpackage.ta8;
import defpackage.tq5;
import defpackage.uf3;
import defpackage.y3;
import defpackage.yb8;
import defpackage.z79;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ChooseRegionPresenter extends BasePresenter<ChooseRegionView> {
    private final c4 accountInteractor;
    private final uf3 flowRouter;
    private final fl3 fromCome;
    private final p61 interactor;
    private final jf6 preferences;
    private final ct6<String> querySubject;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[fl3.values().length];
            try {
                iArr[fl3.FailClarification.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fl3.Location.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public static final b f = new b(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<z79.a, j59> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final j59 invoke(z79.a aVar) {
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<l17, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(l17 l17Var) {
            l17 l17Var2 = l17Var;
            ChooseRegionView chooseRegionView = (ChooseRegionView) ChooseRegionPresenter.this.getViewState();
            if (chooseRegionView != null) {
                l17Var2.getClass();
                chooseRegionView.showSelectedRegion(l17Var2);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<du4, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(du4 du4Var) {
            ChooseRegionPresenter.this.updateNearestRegions(du4Var);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<String, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            if (str2 != null) {
                if (ta8.M(str2)) {
                    str2 = null;
                }
                if (str2 != null) {
                    ChooseRegionPresenter.this.queryRegion(str2);
                }
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<List<? extends l17>, j59> {
        public g() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends l17> list) {
            List<? extends l17> list2 = list;
            ChooseRegionView chooseRegionView = (ChooseRegionView) ChooseRegionPresenter.this.getViewState();
            if (chooseRegionView != 0) {
                list2.getClass();
                chooseRegionView.showSuggestions(list2);
            }
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<List<? extends l17>, j59> {
        public h() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends l17> list) {
            List<? extends l17> list2 = list;
            ChooseRegionView chooseRegionView = (ChooseRegionView) ChooseRegionPresenter.this.getViewState();
            if (chooseRegionView != 0) {
                list2.getClass();
                chooseRegionView.showSuggestions(list2);
            }
            return j59.a;
        }
    }

    public ChooseRegionPresenter(uf3 uf3Var, p61 p61Var, c4 c4Var, jf6 jf6Var, fl3 fl3Var) {
        uf3Var.getClass();
        p61Var.getClass();
        c4Var.getClass();
        jf6Var.getClass();
        fl3Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = p61Var;
        this.accountInteractor = c4Var;
        this.preferences = jf6Var;
        this.fromCome = fl3Var;
        this.querySubject = new ct6<>();
    }

    private final void changeCity(String str) {
        c4 c4Var = this.accountInteractor;
        c4Var.getClass();
        str.getClass();
        BasePresenter.disposeOnTermination$default(this, yb8.d(new p08(c4Var.b.j(str), new y3(new s4(c4Var, str), 0)).i(ne7.c).f(rj.a()), b.f, c.f), null, 1, null);
    }

    private final void exitFromScreen() {
        int i = a.a[this.fromCome.ordinal()];
        if (i == 1 || i == 2) {
            this.flowRouter.j(hi7.a);
        } else {
            this.flowRouter.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void queryRegion(String str) {
        p61 p61Var = this.interactor;
        p61Var.getClass();
        str.getClass();
        o17 o17Var = p61Var.a;
        jf6 jf6Var = p61Var.c;
        BasePresenter.disposeOnDestroy$default(this, yb8.f(o17Var.b(str, new du4(jf6Var.c(), jf6Var.l(), (String) null, (String) null, (String) null, 28, (jh2) null), 10).i(ne7.c).f(rj.a()), null, new g(), 1), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateNearestRegions(du4 du4Var) {
        p61 p61Var = this.interactor;
        jf6 jf6Var = p61Var.c;
        mz7 mz7VarB = p61Var.a.b("", new du4(jf6Var.c(), jf6Var.l(), (String) null, (String) null, (String) null, 28, (jh2) null), 30);
        n61 n61Var = new n61(new q61(p61Var, 0));
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.f(new p08(mz7VarB, n61Var).i(ne7.c).f(rj.a()), null, new h(), 1), null, 1, null);
    }

    public static /* synthetic */ void updateNearestRegions$default(ChooseRegionPresenter chooseRegionPresenter, du4 du4Var, int i, Object obj) {
        if ((i & 1) != 0) {
            du4Var = null;
        }
        chooseRegionPresenter.updateNearestRegions(du4Var);
    }

    public final void onBackPressed() {
        if (a.a[this.fromCome.ordinal()] != 1) {
            this.flowRouter.c();
        } else {
            this.preferences.a0();
            this.flowRouter.g(com.warefly.checkscan.presentation.e.a);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        ChooseRegionView chooseRegionView;
        super.onFirstViewAttach();
        ct6<l17> ct6Var = this.interactor.i;
        he7 he7Var = ne7.c;
        BasePresenter.disposeOnDestroy$default(this, yb8.h(ct6Var.g(he7Var).e(rj.a()), null, new d(), 3), null, 1, null);
        BasePresenter.disposeOnDestroy$default(this, yb8.h(((tq5) this.interactor.h.getValue()).g(he7Var).e(rj.a()), null, new e(), 3), null, 1, null);
        jf6 jf6Var = this.interactor.c;
        l17 l17Var = new l17(jf6Var.O0(), jf6Var.h1());
        if (l17Var.a() != 0 && (chooseRegionView = (ChooseRegionView) getViewState()) != null) {
            chooseRegionView.showSelectedRegion(l17Var);
        }
        updateNearestRegions$default(this, null, 1, null);
        BasePresenter.disposeOnDestroy$default(this, yb8.i(this.querySubject.h(n00.LATEST), new f(), 3), null, 1, null);
    }

    public final void onQueryChanged(String str) {
        str.getClass();
        this.querySubject.onNext(str);
    }

    public final void onRegionSelected(l17 l17Var) {
        l17Var.getClass();
        changeCity(String.valueOf(l17Var.a()));
        this.interactor.b(l17Var);
        this.flowRouter.k(l17Var.b(), "PERSONAL_DATA_CITY_CHANGED_KEY");
        exitFromScreen();
    }
}
