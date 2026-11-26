package com.warefly.checkscan.presentation.bonuses.main.presenter;

import android.net.Uri;
import android.util.Log;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b06;
import defpackage.b7;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.bo0;
import defpackage.cg7;
import defpackage.cu0;
import defpackage.d7;
import defpackage.df3;
import defpackage.dw0;
import defpackage.e02;
import defpackage.es3;
import defpackage.fs3;
import defpackage.gx2;
import defpackage.h73;
import defpackage.hd3;
import defpackage.i57;
import defpackage.i73;
import defpackage.ic8;
import defpackage.ix;
import defpackage.j59;
import defpackage.j6;
import defpackage.j91;
import defpackage.jf6;
import defpackage.jn0;
import defpackage.jr0;
import defpackage.jv7;
import defpackage.k6;
import defpackage.kd;
import defpackage.km0;
import defpackage.kn0;
import defpackage.kn1;
import defpackage.kz;
import defpackage.l58;
import defpackage.lm0;
import defpackage.ln0;
import defpackage.m13;
import defpackage.m6;
import defpackage.m81;
import defpackage.me0;
import defpackage.mo7;
import defpackage.mr0;
import defpackage.o58;
import defpackage.o6;
import defpackage.ov0;
import defpackage.pg8;
import defpackage.po0;
import defpackage.pp0;
import defpackage.pp5;
import defpackage.pw8;
import defpackage.px;
import defpackage.pz3;
import defpackage.q6;
import defpackage.qf7;
import defpackage.qh7;
import defpackage.qn1;
import defpackage.qp0;
import defpackage.r57;
import defpackage.r88;
import defpackage.rc8;
import defpackage.rd3;
import defpackage.rw8;
import defpackage.s39;
import defpackage.s57;
import defpackage.s68;
import defpackage.se3;
import defpackage.sf7;
import defpackage.sq0;
import defpackage.sv7;
import defpackage.t57;
import defpackage.tb7;
import defpackage.ti7;
import defpackage.to0;
import defpackage.ud;
import defpackage.uf3;
import defpackage.uu5;
import defpackage.v58;
import defpackage.wl0;
import defpackage.xg5;
import defpackage.y22;
import defpackage.z44;
import defpackage.z68;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesMainNewPresenter extends BasePresenter<BonusesMainNewView> implements m81, ov0.a, jv7, l58.c, pw8.b, dw0.a, rw8, es3.a, po0.a, b7.a, r88.a, mr0.a, uu5.a, z44 {
    private final k6 activateAccountPromocodeUseCase;
    private final kz avatarState;
    private final wl0 bonusBlockInteractor;
    private final qp0 bonusesAutoScrollState;
    private final zl2 desktopInteractor;
    private final i73 fetchHidableBannerLinkUseCase;
    private final uf3 flowRouter;
    private final pp5 notificationsInteractor;
    private final jf6 preferencesRepository;
    private final xg5<ti7> scrollDirection;
    private final mo7 sendBannerWatchUseCase;
    private String stepActionAfterSignUp;
    private final ic8 subscriptionInteractor;

    public static final class a {
        public a() {
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$1", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = BonusesMainNewPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((b) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.d) {
                BonusesMainNewPresenter bonusesMainNewPresenter = BonusesMainNewPresenter.this;
                wl0 wl0Var = bonusesMainNewPresenter.bonusBlockInteractor;
                y22 presenterScope = bonusesMainNewPresenter.getPresenterScope();
                wl0Var.getClass();
                presenterScope.getClass();
                px.h(wl0Var.k(false), presenterScope);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$2", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<List<? extends pz3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = BonusesMainNewPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends pz3> list, e02<? super j59> e02Var) {
            return ((c) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<? extends pz3> list = (List) this.l;
            BonusesMainNewPresenter bonusesMainNewPresenter = BonusesMainNewPresenter.this;
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) bonusesMainNewPresenter.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.showContent(list);
            }
            List<? extends pz3> list2 = list;
            boolean z = list2 instanceof Collection;
            if (!z || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    if (((pz3) it.next()) instanceof v58) {
                        qp0 qp0Var = bonusesMainNewPresenter.bonusesAutoScrollState;
                        s68 s68Var = qp0Var.i;
                        if ((s68Var == null || s68Var.isActive()) && qp0Var.i != null) {
                            break;
                        }
                        qp0Var.i = av0.c(qp0Var.g, qp0Var.h, null, new pp0(qp0Var, null), 2);
                        break;
                    }
                }
            }
            if (!z || !list2.isEmpty()) {
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    if (((pz3) it2.next()) instanceof jr0) {
                        kd.a.j.f.e.a();
                        break;
                    }
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$3", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<ti7, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = BonusesMainNewPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ti7 ti7Var, e02<? super j59> e02Var) {
            return ((d) create(ti7Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ti7 ti7Var = (ti7) this.l;
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) BonusesMainNewPresenter.this.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.changeSearchVisibility(ti7Var == ti7.Up);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$4", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            e eVar = BonusesMainNewPresenter.this.new e(e02Var);
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
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) BonusesMainNewPresenter.this.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.showUnreadNotificationsBadge(z);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$5", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<ProfileBadgeView.b, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = BonusesMainNewPresenter.this.new f(e02Var);
            fVar.l = obj;
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ProfileBadgeView.b bVar, e02<? super j59> e02Var) {
            return ((f) create(bVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ProfileBadgeView.b bVar = (ProfileBadgeView.b) this.l;
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) BonusesMainNewPresenter.this.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.setBadgeType(bVar);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$6", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<String, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = BonusesMainNewPresenter.this.new g(e02Var);
            gVar.l = obj;
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(String str, e02<? super j59> e02Var) {
            return ((g) create(str, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            String str = (String) this.l;
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) BonusesMainNewPresenter.this.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.setAvatar(str);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onGroupShopRectangleFavoriteClick$1", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class h extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new h(2, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((h) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onHidePromoBanner$1", f = "BonusesMainNewPresenter.kt", l = {223}, m = "invokeSuspend")
    public static final class i extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ BonusesMainNewPresenter m;
        public final /* synthetic */ int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(int i, e02 e02Var, BonusesMainNewPresenter bonusesMainNewPresenter) {
            super(2, e02Var);
            this.m = bonusesMainNewPresenter;
            this.n = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new i(this.n, e02Var, this.m);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((i) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            ArrayList arrayList;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                wl0 wl0Var = this.m.bonusBlockInteractor;
                this.l = 1;
                z68 z68Var = wl0Var.g;
                do {
                    value = z68Var.getValue();
                    arrayList = new ArrayList();
                    for (Object obj2 : (List) value) {
                        if (!(((pz3) obj2) instanceof to0)) {
                            arrayList.add(obj2);
                        }
                    }
                } while (!z68Var.a(value, arrayList));
                Object objF = wl0Var.a.f(this.n, this);
                if (objF != a32.COROUTINE_SUSPENDED) {
                    objF = j59.a;
                }
                if (objF == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onOpenPromoLink$1", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ int m;
        public final /* synthetic */ BonusesMainNewPresenter n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(int i, e02 e02Var, BonusesMainNewPresenter bonusesMainNewPresenter) {
            super(2, e02Var);
            this.m = i;
            this.n = bonusesMainNewPresenter;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            j jVar = new j(this.m, e02Var, this.n);
            jVar.l = obj;
            return jVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((j) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (i57Var instanceof i57.c) {
                new kd.m.b.a(this.m).c();
                BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) this.n.getViewState();
                if (bonusesMainNewView != null) {
                    bonusesMainNewView.openUrl((String) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onPromocodeButtonActivate$1", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class k extends pg8 implements bm3<i57<? extends o6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public k(e02<? super k> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            k kVar = BonusesMainNewPresenter.this.new k(e02Var);
            kVar.l = obj;
            return kVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends o6> i57Var, e02<? super j59> e02Var) {
            return ((k) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            BonusesMainNewPresenter bonusesMainNewPresenter = BonusesMainNewPresenter.this;
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) bonusesMainNewPresenter.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.dismissLoadingDialog();
            }
            if (i57Var instanceof i57.a) {
                BonusesMainNewView bonusesMainNewView2 = (BonusesMainNewView) bonusesMainNewPresenter.getViewState();
                if (bonusesMainNewView2 != null) {
                    bonusesMainNewView2.showPromocodeErrorBottomSheet(null);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                BonusesMainNewView bonusesMainNewView3 = (BonusesMainNewView) bonusesMainNewPresenter.getViewState();
                if (bonusesMainNewView3 != null) {
                    bonusesMainNewView3.showLoadingDialog();
                }
            } else if (i57Var instanceof i57.c) {
                bonusesMainNewPresenter.handlePromocodeActivationResult((o6) ((i57.c) i57Var).a);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onResume$1", f = "BonusesMainNewPresenter.kt", l = {320}, m = "invokeSuspend")
    public static final class l extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public l(e02<? super l> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return BonusesMainNewPresenter.this.new l(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((l) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object objI;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                wl0 wl0Var = BonusesMainNewPresenter.this.bonusBlockInteractor;
                this.l = 1;
                Iterable iterable = (Iterable) wl0Var.g.getValue();
                if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
                    objI = j59.a;
                } else {
                    Iterator it = iterable.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            pz3 pz3Var = (pz3) it.next();
                            if ((pz3Var instanceof d7) || (pz3Var instanceof rc8)) {
                                objI = wl0Var.i(new ArrayList(), this);
                                if (objI != a32.COROUTINE_SUSPENDED) {
                                    objI = j59.a;
                                }
                            }
                        } else {
                            objI = j59.a;
                        }
                    }
                }
                if (objI == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onStepActionClicked$1$1", f = "BonusesMainNewPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class m extends pg8 implements bm3<j59, e02<? super j59>, Object> {
        public final /* synthetic */ String l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(String str, e02<? super m> e02Var) {
            super(2, e02Var);
            this.l = str;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new m(this.l, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
            return ((m) create(j59Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            Log.i("StepEarningBlock", "block is clicked: " + this.l);
            return j59.a;
        }
    }

    public BonusesMainNewPresenter(wl0 wl0Var, uf3 uf3Var, zl2 zl2Var, jf6 jf6Var, i73 i73Var, k6 k6Var, mo7 mo7Var, pp5 pp5Var, ic8 ic8Var, kz kzVar) {
        wl0Var.getClass();
        uf3Var.getClass();
        zl2Var.getClass();
        jf6Var.getClass();
        i73Var.getClass();
        k6Var.getClass();
        mo7Var.getClass();
        pp5Var.getClass();
        ic8Var.getClass();
        kzVar.getClass();
        this.bonusBlockInteractor = wl0Var;
        this.flowRouter = uf3Var;
        this.desktopInteractor = zl2Var;
        this.preferencesRepository = jf6Var;
        this.fetchHidableBannerLinkUseCase = i73Var;
        this.activateAccountPromocodeUseCase = k6Var;
        this.sendBannerWatchUseCase = mo7Var;
        this.notificationsInteractor = pp5Var;
        this.subscriptionInteractor = ic8Var;
        this.avatarState = kzVar;
        this.bonusesAutoScrollState = new qp0(new a());
        this.scrollDirection = px.a(ti7.Up);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j59 handlePromocodeActivationResult(o6 o6Var) {
        if (o6Var instanceof q6) {
            wl0 wl0Var = this.bonusBlockInteractor;
            y22 presenterScope = getPresenterScope();
            wl0Var.getClass();
            presenterScope.getClass();
            px.h(wl0Var.k(false), presenterScope);
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.showPromocodeSuccessBottomSheet((q6) o6Var);
                return j59.a;
            }
        } else {
            if (!(o6Var instanceof m6)) {
                me0.e();
                return null;
            }
            BonusesMainNewView bonusesMainNewView2 = (BonusesMainNewView) getViewState();
            if (bonusesMainNewView2 != null) {
                bonusesMainNewView2.showPromocodeErrorBottomSheet((m6) o6Var);
                return j59.a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFirstViewAttach$lambda$1(BonusesMainNewPresenter bonusesMainNewPresenter, Object obj) {
        BonusesMainNewView bonusesMainNewView;
        obj.getClass();
        String str = bonusesMainNewPresenter.stepActionAfterSignUp;
        if (str != null && (bonusesMainNewView = (BonusesMainNewView) bonusesMainNewPresenter.getViewState()) != null) {
            bonusesMainNewView.openUrlInCustomTab(str);
        }
        bonusesMainNewPresenter.stepActionAfterSignUp = null;
    }

    private final void updateToolbar() {
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.showToolbar(this.preferencesRepository.F());
        }
    }

    public final void changePosSpecialByUser(int i2) {
        qp0 qp0Var = this.bonusesAutoScrollState;
        if (i2 >= 0) {
            qp0Var.f.set(i2);
        } else {
            qp0Var.getClass();
        }
    }

    @Override // defpackage.z44
    public void enableScroll(boolean z) {
        this.bonusesAutoScrollState.b.set(z);
    }

    public final int getCurrentSpecialPos() {
        return this.bonusesAutoScrollState.f.get();
    }

    @Override // b7.a
    public void onActiveSubscriptionBannerClicked(String str) {
        str.getClass();
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.openCustomTab(str);
        }
    }

    @Override // ov0.a
    public void onButtonChipItemClick(String str) {
        str.getClass();
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.openDeeplink(str);
        }
    }

    @Override // dw0.a
    public void onButtonSeeAllClick(int i2) {
        kd.o.e.a();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.CATEGORIES, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    @Override // defpackage.m81
    public void onCategoryClick(String str, int i2) {
        str.getClass();
        new kd.e.c.b.C0246b(ud.c(i2, "Category_from_the_main")).c();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.CATEGORY_FLOW, str);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    public final void onChooseRegion() {
        this.flowRouter.j(new cg7(0));
    }

    public final void onContentScrolled(int i2) {
        if (i2 < -20) {
            this.scrollDirection.setValue(ti7.Up);
        } else if (i2 > 20) {
            this.scrollDirection.setValue(ti7.Down);
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        super.onDestroy();
        s68 s68Var = this.bonusesAutoScrollState.i;
        if (s68Var != null) {
            s68Var.cancel(null);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        wl0 wl0Var = this.bonusBlockInteractor;
        y22 presenterScope = getPresenterScope();
        wl0Var.getClass();
        presenterScope.getClass();
        df3 df3VarK = wl0Var.k(true);
        km0 km0Var = new km0(wl0Var, null);
        int i2 = se3.a;
        px.h(new df3(new j91(km0Var, df3VarK, gx2.b, -2, cu0.SUSPEND), new lm0(wl0Var, null)), presenterScope);
        bo0 bo0Var = wl0Var.d;
        px.h(new df3(bo0Var.a, new jn0(wl0Var, presenterScope, null)), presenterScope);
        this.desktopInteractor.c(getPresenterScope(), new b(null));
        launchInPresenter(m13.c(new df3(this.bonusBlockInteractor.h, new c(null)), null, null, 3));
        if (this.preferencesRepository.F()) {
            launchInPresenter(new df3(bf3.b(this.notificationsInteractor.e), new e(null)));
            launchInPresenter(new df3(bf3.b(this.subscriptionInteractor.c), new f(null)));
            launchInPresenter(new df3(this.avatarState.a, new g(null)));
        } else {
            launchInPresenter(new df3(s39.b(this.scrollDirection, 500L), new d(null)));
        }
        updateToolbar();
        this.flowRouter.l(new t57() { // from class: cr0
            @Override // defpackage.t57
            public final void onResult(Object obj) {
                BonusesMainNewPresenter.onFirstViewAttach$lambda$1(this.a, obj);
            }
        });
    }

    @Override // es3.a
    public void onGroupShopRectangleAllClick(int i2, String str) {
        str.getClass();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.SELECTION_FLOW, str);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    @Override // es3.a
    public void onGroupShopRectangleFavoriteClick(int i2, int i3) {
        Object next;
        Object next2;
        hd3 rd3Var;
        wl0 wl0Var = this.bonusBlockInteractor;
        ArrayList arrayListV0 = qn1.v0((Collection) wl0Var.g.getValue());
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListV0) {
            if (obj instanceof fs3) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((fs3) next).a != i2);
        fs3 fs3Var = (fs3) next;
        if (fs3Var == null) {
            rd3Var = new rd3(Boolean.FALSE);
        } else {
            Iterator<T> it2 = fs3Var.e.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (((sv7.c) next2).a != i3);
            sv7.c cVar = (sv7.c) next2;
            rd3Var = cVar == null ? new rd3(Boolean.FALSE) : new df3(wl0Var.a.a(i3, !cVar.b), new kn0(wl0Var, i3, null));
        }
        launchInPresenter(m13.c(new df3(rd3Var, new h(2, null)), null, null, 3));
    }

    @Override // es3.a
    public void onGroupShopRectangleItemClick(int i2) {
        new kd.e.d.g.a(i2).a();
        kd.e.d.g.b.e.a();
        new kd.e.a.C0234a.f.C0239a(i2).a();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.ONLINE_SHOP, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    @Override // defpackage.rw8
    public void onHelperTitleWithYellowButtonClick(sq0 sq0Var) {
        sq0Var.getClass();
        kd.c0.e.a();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(0, sq0.HOW_GET_CASHBACK_SLIDES, 3);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    public final void onHiddenChanged(boolean z) {
        this.bonusesAutoScrollState.d.set(z);
        if (z) {
            return;
        }
        updateToolbar();
    }

    @Override // po0.a
    public void onHidePromoBanner(int i2) {
        new kd.m.b.C0276b(i2).c();
        av0.c(getPresenterScope(), null, null, new i(i2, null, this), 3);
    }

    public final void onNotificationsClicked() {
        kd.v.a.b.e.c();
        uf3 uf3Var = this.flowRouter;
        qh7 qh7Var = new qh7(ProfileReason.Notifications.b);
        uf3Var.getClass();
        uf3Var.c.d(qh7Var);
    }

    @Override // uu5.a
    public void onOfflineOnlineShopClick(String str) {
        str.getClass();
        String host = Uri.parse(str).getHost();
        if (host != null) {
            int iHashCode = host.hashCode();
            if (iHashCode != -2092803004) {
                if (iHashCode == 1911518694 && host.equals("online-shops-categories")) {
                    new kd.e.c.C0248e("Online block").c();
                }
            } else if (host.equals("goods-showcase")) {
                new kd.e.c.d("Offline block").c();
            }
        }
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.openDeeplink(str);
        }
    }

    @Override // po0.a
    public void onOpenPromoLink(int i2) {
        i73 i73Var = this.fetchHidableBannerLinkUseCase;
        i73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new h73(i73Var, i2, null))), new j(i2, null, this)));
    }

    @Override // po0.a
    public void onOrdPromoClicked(b06 b06Var) {
        b06Var.getClass();
        String str = b06Var.c;
        if (str != null) {
            Map mapSingletonMap = Collections.singletonMap("AlfaCredit_".concat(str), new String());
            mapSingletonMap.getClass();
            new kd.e0.a("Ord", mapSingletonMap).a();
        }
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.showOrdDialog(b06Var);
        }
    }

    public final void onPause() {
        this.bonusesAutoScrollState.c.set(false);
    }

    @Override // defpackage.jv7
    public void onPreviewFavoriteClick(int i2) {
        Object next;
        wl0 wl0Var = this.bonusBlockInteractor;
        Iterable iterable = (Iterable) wl0Var.g.getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj instanceof sv7) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((sv7) next).a != i2);
        sv7 sv7Var = (sv7) next;
        launchInPresenter(m13.c(sv7Var == null ? new rd3(Boolean.FALSE) : new df3(wl0Var.a.a(i2, !sv7Var.b), new ln0(wl0Var, i2, null)), null, null, 3));
    }

    @Override // defpackage.jv7
    public void onPreviewShopClick(int i2) {
        new kd.e.d.g.a(i2).a();
        kd.e.d.g.b.e.a();
        new kd.e.a.C0234a.f.C0239a(i2).a();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0.ONLINE_SHOP, 1);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    public final void onProfileClicked() {
        kd.a.i.C0230a.e.a();
        if (this.preferencesRepository.G0()) {
            new kd.a.h.c().a();
            uf3 uf3Var = this.flowRouter;
            qh7 qh7Var = new qh7(ProfileReason.MainProfile.b);
            uf3Var.getClass();
            uf3Var.c.d(qh7Var);
            return;
        }
        new kd.a.h.C0229a().a();
        uf3 uf3Var2 = this.flowRouter;
        String str = null;
        ix ixVar = new ix(new AuthReason.Login(str, str, 7));
        uf3Var2.getClass();
        uf3Var2.c.d(ixVar);
    }

    @Override // mr0.a
    public void onPromocodeButtonActivate(String str) {
        str.getClass();
        new kd.a.j.C0231a(str).a();
        k6 k6Var = this.activateAccountPromocodeUseCase;
        k6Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new j6(k6Var, str, "BONUSES", null))), new k(null)));
    }

    @Override // mr0.a
    public void onPromocodeTextChanged(String str) {
        Object value;
        ArrayList arrayList;
        str.getClass();
        kd.a.j.c.e.a();
        wl0 wl0Var = this.bonusBlockInteractor;
        wl0Var.getClass();
        z68 z68Var = wl0Var.g;
        do {
            value = z68Var.getValue();
            List<pz3> list = (List) value;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (pz3 jr0Var : list) {
                if (jr0Var instanceof jr0) {
                    jr0 jr0Var2 = (jr0) jr0Var;
                    String str2 = jr0Var2.a;
                    String str3 = jr0Var2.b;
                    String str4 = jr0Var2.c;
                    str2.getClass();
                    jr0Var = new jr0(str2, str3, str4, str);
                }
                arrayList.add(jr0Var);
            }
        } while (!z68Var.a(value, arrayList));
    }

    public final void onResume() {
        updateToolbar();
        this.bonusesAutoScrollState.c.set(true);
        av0.c(getPresenterScope(), null, null, new l(null), 3);
    }

    public final void onSearchClick() {
        this.flowRouter.j(new sf7(new String()));
    }

    @Override // l58.c
    public void onSpecialItemClick(o58 o58Var) {
        o58Var.getClass();
        new kd.e.c.g.a(o58Var.d).c();
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.openDeeplink(o58Var.b);
        }
    }

    @Override // l58.c
    public void onSpecialItemOrdClick(b06 b06Var) {
        b06Var.getClass();
        String str = b06Var.c;
        if (str != null) {
            new kd.e0.e(str).a();
        }
        BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
        if (bonusesMainNewView != null) {
            bonusesMainNewView.showOrdDialog(b06Var);
        }
    }

    public final void onSpecialShown(int i2) {
        new kd.e.c.g.b(i2).c();
        this.sendBannerWatchUseCase.a(i2);
    }

    @Override // r88.a
    public void onStepActionClicked(boolean z, String str, String str2) {
        str.getClass();
        String str3 = null;
        if (this.preferencesRepository.G0() || !z) {
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.openDeeplink(str);
            }
        } else {
            this.stepActionAfterSignUp = str;
            uf3 uf3Var = this.flowRouter;
            ix ixVar = new ix(new AuthReason.Login(str3, str3, 7));
            uf3Var.getClass();
            uf3Var.c.d(ixVar);
        }
        if (str2 != null) {
            wl0 wl0Var = this.bonusBlockInteractor;
            wl0Var.getClass();
            launchInGlobal(m13.c(new df3(wl0Var.a.b(str2), new m(str, null)), null, null, 3));
        }
    }

    @Override // defpackage.rw8
    public void onSubTitleWithYellowButtonClick(sq0 sq0Var, int i2, String str) {
        sq0Var.getClass();
        str.getClass();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0Var, str);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    @Override // pw8.b
    public void onTitleWithButtonClick(int i2, sq0 sq0Var, String str) {
        sq0Var.getClass();
        str.getClass();
        uf3 uf3Var = this.flowRouter;
        qf7 qf7Var = new qf7(i2, sq0Var, str);
        uf3Var.getClass();
        uf3Var.c.d(qf7Var);
    }

    public final void sendPromoBannerShownEvent(int i2) {
        new kd.m.b.c(i2).c();
        this.sendBannerWatchUseCase.a(i2);
    }

    @Override // mr0.a
    public void sendPromocodeStartInteraction() {
        kd.a.j.i.e.a();
    }

    public final void setScrollState(boolean z) {
        this.bonusesAutoScrollState.e.set(!z);
    }
}
