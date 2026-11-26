package com.warefly.checkscan.presentation.flows.desktop.presenter;

import android.os.Build;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.muxer.WebmConstants;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.aa7;
import defpackage.ah;
import defpackage.as5;
import defpackage.av0;
import defpackage.b06;
import defpackage.b36;
import defpackage.ba7;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.c4;
import defpackage.ca7;
import defpackage.ce3;
import defpackage.cf3;
import defpackage.cu0;
import defpackage.da7;
import defpackage.de3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.dr5;
import defpackage.e02;
import defpackage.e08;
import defpackage.e4;
import defpackage.ed3;
import defpackage.et6;
import defpackage.f4;
import defpackage.ff3;
import defpackage.g6;
import defpackage.gg3;
import defpackage.gh4;
import defpackage.gx2;
import defpackage.h08;
import defpackage.hc0;
import defpackage.he7;
import defpackage.hi0;
import defpackage.i4;
import defpackage.ic8;
import defpackage.id3;
import defpackage.ix;
import defpackage.j4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k3;
import defpackage.k8;
import defpackage.kd;
import defpackage.kd7;
import defpackage.kz;
import defpackage.ll3;
import defpackage.mh9;
import defpackage.mo7;
import defpackage.n00;
import defpackage.n4;
import defpackage.ne7;
import defpackage.nh9;
import defpackage.nl3;
import defpackage.np5;
import defpackage.nq5;
import defpackage.p08;
import defpackage.p51;
import defpackage.pg8;
import defpackage.pp5;
import defpackage.px;
import defpackage.py1;
import defpackage.qh7;
import defpackage.qm5;
import defpackage.r08;
import defpackage.r57;
import defpackage.ri8;
import defpackage.rj;
import defpackage.rm3;
import defpackage.sz7;
import defpackage.t99;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.tq5;
import defpackage.tr5;
import defpackage.ud3;
import defpackage.uf3;
import defpackage.v3;
import defpackage.vk1;
import defpackage.w3;
import defpackage.w68;
import defpackage.wh7;
import defpackage.x3;
import defpackage.x37;
import defpackage.y22;
import defpackage.y68;
import defpackage.yb8;
import defpackage.yr;
import defpackage.yx6;
import defpackage.yz7;
import defpackage.z3;
import defpackage.zl2;
import defpackage.zq5;
import defpackage.zr5;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes5.dex */
public final class DesktopPresenter extends BasePresenter<DesktopView> implements com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a {
    private final c4 accountInteractor;
    private final g6 accountState;
    private final kz avatarState;
    private final p51 cashbackInteractor;
    private final zl2 desktopInteractor;
    private final com.warefly.checkscan.presentation.flows.desktop.presenter.a desktopTabsState;
    private final uf3 flowRouter;
    private final y68<Boolean> internetConnected;
    private final pp5 notificationsInteractor;
    private final jf6 preferencesRepository;
    private final x37 resetOnboardingUseCase;
    private final mo7 sendBannerWatchUseCase;
    private final da7 sseInteractor;
    private final ic8 subscriptionInteractor;
    private final nh9 welcomeBannersInteractor;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[DesktopView.a.values().length];
            try {
                iArr[DesktopView.a.Notifications.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DesktopView.a.Profile.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements ll3<Boolean> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Boolean invoke() {
            jf6 jf6Var = DesktopPresenter.this.preferencesRepository;
            jf6Var.getClass();
            return Boolean.valueOf(jf6Var.Q0());
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$10", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<hc0.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = DesktopPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(hc0.a aVar, e02<? super j59> e02Var) {
            return ((c) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            hc0.a aVar = (hc0.a) this.l;
            DesktopView desktopView = (DesktopView) DesktopPresenter.this.getViewState();
            if (desktopView != null) {
                desktopView.showBottomBanner(aVar);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$11", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements dm3<id3<? super hc0.a>, Throwable, e02<? super j59>, Object> {
        @Override // defpackage.dm3
        public final Object invoke(id3<? super hc0.a> id3Var, Throwable th, e02<? super j59> e02Var) {
            return new d(3, e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            return j59.a;
        }
    }

    public static final /* synthetic */ class e extends k8 implements dm3<ed3, ri8, e02<? super b36<? extends ed3, ? extends ri8>>, Object> {
        public static final e c = new e(3, b36.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);

        @Override // defpackage.dm3
        public final Object invoke(ed3 ed3Var, ri8 ri8Var, e02<? super b36<? extends ed3, ? extends ri8>> e02Var) {
            return DesktopPresenter.onFirstViewAttach$lambda$0(ed3Var, ri8Var, e02Var);
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$15", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements bm3<b36<? extends ed3, ? extends ri8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public f(e02<? super f> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = DesktopPresenter.this.new f(e02Var);
            fVar.l = obj;
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(b36<? extends ed3, ? extends ri8> b36Var, e02<? super j59> e02Var) {
            return ((f) create(b36Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            DesktopView desktopView;
            DesktopView desktopView2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            b36 b36Var = (b36) this.l;
            ed3 ed3Var = (ed3) b36Var.b;
            ri8 ri8Var = (ri8) b36Var.c;
            DesktopPresenter desktopPresenter = DesktopPresenter.this;
            if (ed3Var == null || !ed3Var.d.contains(ri8Var)) {
                DesktopView desktopView3 = (DesktopView) desktopPresenter.getViewState();
                if (desktopView3 != null) {
                    desktopView3.hideFloatingButton();
                }
                if (desktopPresenter.preferencesRepository.Z0() && (desktopView = (DesktopView) desktopPresenter.getViewState()) != null) {
                    desktopView.showScanButton(desktopPresenter.showScanButtonInTab(ri8Var));
                }
            } else {
                DesktopView desktopView4 = (DesktopView) desktopPresenter.getViewState();
                if (desktopView4 != null) {
                    desktopView4.showFloatingButton(ed3Var);
                }
                if (desktopPresenter.preferencesRepository.Z0() && (desktopView2 = (DesktopView) desktopPresenter.getViewState()) != null) {
                    desktopView2.showScanButton(false);
                }
                String str = ed3Var.b;
                str.getClass();
                Map mapSingletonMap = Collections.singletonMap(str, "shows");
                mapSingletonMap.getClass();
                new kd.e.c.a.C0243a.C0244a.b(mapSingletonMap).c();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$16", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = DesktopPresenter.this.new g(e02Var);
            gVar.l = ((Boolean) obj).booleanValue();
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((g) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            DesktopView desktopView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (!this.l && (desktopView = (DesktopView) DesktopPresenter.this.getViewState()) != null) {
                desktopView.showNoInternetConnection(true);
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class h extends k8 implements dm3<Boolean, ri8, e02<? super b36<? extends Boolean, ? extends ri8>>, Object> {
        public static final h c = new h(3, b36.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);

        @Override // defpackage.dm3
        public final Object invoke(Boolean bool, ri8 ri8Var, e02<? super b36<? extends Boolean, ? extends ri8>> e02Var) {
            return DesktopPresenter.onFirstViewAttach$lambda$1(bool.booleanValue(), ri8Var, e02Var);
        }
    }

    public static final class i extends gh4 implements nl3<t99, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(t99 t99Var) {
            DesktopPresenter.this.desktopTabsState.e();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$20", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<b36<? extends Boolean, ? extends ri8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public j(e02<? super j> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            j jVar = DesktopPresenter.this.new j(e02Var);
            jVar.l = obj;
            return jVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(b36<? extends Boolean, ? extends ri8> b36Var, e02<? super j59> e02Var) {
            return ((j) create(b36Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            b36 b36Var = (b36) this.l;
            boolean zBooleanValue = ((Boolean) b36Var.b).booleanValue();
            ri8 ri8Var = (ri8) b36Var.c;
            boolean z = false;
            boolean z2 = ri8Var == ri8.Cheques;
            boolean z3 = ri8Var == ri8.Bonuses;
            boolean z4 = ri8Var == ri8.Tasks;
            if (zBooleanValue && (z3 || z4 || z2)) {
                z = true;
            }
            DesktopView desktopView = (DesktopView) DesktopPresenter.this.getViewState();
            if (desktopView != null) {
                desktopView.showUnreadNotificationsBadge(z);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$21", f = "DesktopPresenter.kt", l = {210}, m = "invokeSuspend")
    public static final class k extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public k(e02<? super k> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DesktopPresenter.this.new k(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((k) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                ic8 ic8Var = DesktopPresenter.this.subscriptionInteractor;
                this.l = 1;
                if (ic8Var.b(this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$22", f = "DesktopPresenter.kt", l = {WebmConstants.MkvEbmlElement.TRACK_NUMBER}, m = "invokeSuspend")
    public static final class l extends pg8 implements bm3<g6.a, e02<? super j59>, Object> {
        public int l;

        public l(e02<? super l> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DesktopPresenter.this.new l(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(g6.a aVar, e02<? super j59> e02Var) {
            return ((l) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            DesktopPresenter desktopPresenter = DesktopPresenter.this;
            if (i == 0) {
                r57.b(obj);
                desktopPresenter.desktopTabsState.e();
                this.l = 1;
                if (desktopPresenter.refreshAllTabs(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            if (desktopPresenter.getCurrentTab() == ri8.Bonuses) {
                desktopPresenter.setBonusesToolbar();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$2", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class m extends pg8 implements bm3<ri8, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public m(e02<? super m> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            m mVar = DesktopPresenter.this.new m(e02Var);
            mVar.l = obj;
            return mVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ri8 ri8Var, e02<? super j59> e02Var) {
            return ((m) create(ri8Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ri8 ri8Var = (ri8) this.l;
            DesktopPresenter desktopPresenter = DesktopPresenter.this;
            DesktopView desktopView = (DesktopView) desktopPresenter.getViewState();
            if (desktopView != null) {
                desktopView.showScanButton(desktopPresenter.showScanButtonInTab(ri8Var));
            }
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<Boolean, j59> {
        public n() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            DesktopView desktopView;
            Boolean bool2 = bool;
            bool2.getClass();
            if (bool2.booleanValue() && (desktopView = (DesktopView) DesktopPresenter.this.getViewState()) != null) {
                desktopView.showUpdateAvailable();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$4", f = "DesktopPresenter.kt", l = {105}, m = "invokeSuspend")
    public static final class o extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public o(e02<? super o> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DesktopPresenter.this.new o(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((o) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object objA;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                p51 p51Var = DesktopPresenter.this.cashbackInteractor;
                this.l = 1;
                if (p51Var.c.j()) {
                    objA = p51Var.b(this);
                    if (objA != a32Var) {
                        objA = j59.a;
                    }
                } else {
                    objA = p51Var.a(this);
                    if (objA != a32Var) {
                        objA = j59.a;
                    }
                }
                if (objA == a32Var) {
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

    public static final class p extends gh4 implements nl3<Throwable, j59> {
        public static final p f = new p(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$6", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class q extends pg8 implements bm3<String, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public q(e02<? super q> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            q qVar = DesktopPresenter.this.new q(e02Var);
            qVar.l = obj;
            return qVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(String str, e02<? super j59> e02Var) {
            return ((q) create(str, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            String str = (String) this.l;
            DesktopView desktopView = (DesktopView) DesktopPresenter.this.getViewState();
            if (desktopView != null) {
                desktopView.setAvatar(str);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$7", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class r extends pg8 implements bm3<ProfileBadgeView.b, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public r(e02<? super r> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            r rVar = DesktopPresenter.this.new r(e02Var);
            rVar.l = obj;
            return rVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ProfileBadgeView.b bVar, e02<? super j59> e02Var) {
            return ((r) create(bVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            ProfileBadgeView.b bVar = (ProfileBadgeView.b) this.l;
            DesktopView desktopView = (DesktopView) DesktopPresenter.this.getViewState();
            if (desktopView != null) {
                desktopView.setBadgeType(bVar);
            }
            return j59.a;
        }
    }

    public static final class s extends gh4 implements nl3<Boolean, j59> {
        public s() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            DesktopView desktopView;
            Boolean bool2 = bool;
            bool2.getClass();
            if (bool2.booleanValue() && (desktopView = (DesktopView) DesktopPresenter.this.getViewState()) != null) {
                desktopView.showCoinAnim();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$9", f = "DesktopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class t extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public t(e02<? super t> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            t tVar = DesktopPresenter.this.new t(e02Var);
            tVar.l = obj;
            return tVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((t) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            zl2.a aVar = (zl2.a) this.l;
            boolean z = aVar instanceof zl2.a.C0373a;
            DesktopPresenter desktopPresenter = DesktopPresenter.this;
            if (z) {
                DesktopView desktopView = (DesktopView) desktopPresenter.getViewState();
                if (desktopView != null) {
                    desktopView.openUrlInCustomTab(((zl2.a.C0373a) aVar).a);
                }
            } else if (aa4.e(aVar, zl2.a.b.a)) {
                DesktopView desktopView2 = (DesktopView) desktopPresenter.getViewState();
                if (desktopView2 != null) {
                    desktopView2.showNoInternetConnection(!((Boolean) desktopPresenter.internetConnected.getValue()).booleanValue());
                }
            } else if (aa4.e(aVar, zl2.a.f.a)) {
                desktopPresenter.desktopTabsState.e();
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFloatingClick$1", f = "DesktopPresenter.kt", l = {297, 299}, m = "invokeSuspend")
    public static final class u extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ ed3 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(ed3 ed3Var, e02<? super u> e02Var) {
            super(2, e02Var);
            this.n = ed3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DesktopPresenter.this.new u(this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((u) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
        
            if (r8.a(zl2.a.d.a, r7) == r0) goto L26;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r7.l
                r2 = 2
                r3 = 1
                com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter r4 = com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter.this
                if (r1 == 0) goto L1d
                if (r1 == r3) goto L19
                if (r1 != r2) goto L12
                defpackage.r57.b(r8)
                goto L66
            L12:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                r7 = 0
                return r7
            L19:
                defpackage.r57.b(r8)
                goto L4d
            L1d:
                defpackage.r57.b(r8)
                p51 r8 = com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter.access$getCashbackInteractor$p(r4)
                ed3 r1 = r7.n
                long r5 = r1.a
                r7.l = r3
                jf6 r1 = r8.c
                r1.o(r5)
                boolean r1 = r1.j()
                u51 r8 = r8.a
                if (r1 == 0) goto L41
                java.lang.Object r8 = r8.j(r5, r7)
                if (r8 != r0) goto L3e
                goto L4a
            L3e:
                j59 r8 = defpackage.j59.a
                goto L4a
            L41:
                java.lang.Object r8 = r8.k(r5, r7)
                if (r8 != r0) goto L48
                goto L4a
            L48:
                j59 r8 = defpackage.j59.a
            L4a:
                if (r8 != r0) goto L4d
                goto L65
            L4d:
                jf6 r8 = com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter.access$getPreferencesRepository$p(r4)
                boolean r8 = r8.S()
                if (r8 == 0) goto L66
                zl2 r8 = com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter.access$getDesktopInteractor$p(r4)
                r7.l = r2
                zl2$a$d r1 = zl2.a.d.a
                java.lang.Object r7 = r8.a(r1, r7)
                if (r7 != r0) goto L66
            L65:
                return r0
            L66:
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter.u.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onResume$1", f = "DesktopPresenter.kt", l = {413}, m = "invokeSuspend")
    public static final class v extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public v(e02<? super v> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DesktopPresenter.this.new v(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((v) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                ic8 ic8Var = DesktopPresenter.this.subscriptionInteractor;
                this.l = 1;
                if (ic8Var.b(this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onTryAgainSelectionOfTabs$1", f = "DesktopPresenter.kt", l = {PsExtractor.VIDEO_STREAM_MASK}, m = "invokeSuspend")
    public static final class w extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        public w(e02<? super w> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DesktopPresenter.this.new w(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((w) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.l = 1;
                if (DesktopPresenter.this.refreshAllTabs(this) == a32Var) {
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

    public DesktopPresenter(uf3 uf3Var, c4 c4Var, jf6 jf6Var, pp5 pp5Var, p51 p51Var, zl2 zl2Var, nh9 nh9Var, ic8 ic8Var, da7 da7Var, kz kzVar, g6 g6Var, qm5 qm5Var, Deeplink.Desktop desktop, x37 x37Var, mo7 mo7Var) {
        uf3Var.getClass();
        c4Var.getClass();
        jf6Var.getClass();
        pp5Var.getClass();
        p51Var.getClass();
        zl2Var.getClass();
        nh9Var.getClass();
        ic8Var.getClass();
        da7Var.getClass();
        kzVar.getClass();
        g6Var.getClass();
        qm5Var.getClass();
        desktop.getClass();
        x37Var.getClass();
        mo7Var.getClass();
        this.flowRouter = uf3Var;
        this.accountInteractor = c4Var;
        this.preferencesRepository = jf6Var;
        this.notificationsInteractor = pp5Var;
        this.cashbackInteractor = p51Var;
        this.desktopInteractor = zl2Var;
        this.welcomeBannersInteractor = nh9Var;
        this.subscriptionInteractor = ic8Var;
        this.sseInteractor = da7Var;
        this.avatarState = kzVar;
        this.accountState = g6Var;
        this.resetOnboardingUseCase = x37Var;
        this.sendBannerWatchUseCase = mo7Var;
        this.internetConnected = bf3.d(qm5Var.a(), getPresenterScope(), new w68(5000L, Long.MAX_VALUE), Boolean.TRUE);
        this.desktopTabsState = new com.warefly.checkscan.presentation.flows.desktop.presenter.a(desktop, this, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onFirstViewAttach$lambda$0(ed3 ed3Var, ri8 ri8Var, e02 e02Var) {
        return new b36(ed3Var, ri8Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object onFirstViewAttach$lambda$1(boolean z, ri8 ri8Var, e02 e02Var) {
        return new b36(Boolean.valueOf(z), ri8Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object refreshAllTabs(e02<? super j59> e02Var) {
        zl2 zl2Var = this.desktopInteractor;
        zl2.a[] aVarArr = (zl2.a[]) yr.G(new zl2.a[]{this.desktopTabsState.d(ri8.Bonuses) ? zl2.a.d.a : null, this.desktopTabsState.d(ri8.Cheques) ? zl2.a.g.a : null, this.desktopTabsState.d(ri8.Discount) ? zl2.a.i.a : null, this.desktopTabsState.d(ri8.Balance) ? zl2.a.c.a : null, this.desktopTabsState.d(ri8.Tasks) ? zl2.a.h.a : null, this.desktopTabsState.d(ri8.Games) ? zl2.a.e.a : null}).toArray(new zl2.a[0]);
        Object objB = zl2Var.b((zl2.a[]) Arrays.copyOf(aVarArr, aVarArr.length), e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    private final void requestPushPermission() {
        DesktopView desktopView;
        if (Build.VERSION.SDK_INT >= 33 && (desktopView = (DesktopView) getViewState()) != null) {
            desktopView.requestPushPermission();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean showScanButtonInTab(ri8 ri8Var) {
        if (ri8Var == ri8.Cheques || ri8Var == ri8.Bonuses) {
            return true;
        }
        ri8 ri8Var2 = ri8.Discount;
        if (ri8Var == ri8Var2 && this.preferencesRepository.G0()) {
            return true;
        }
        return ri8Var == ri8Var2 && this.preferencesRepository.Z();
    }

    public final void animCoinShowed() {
        this.cashbackInteractor.d.onNext(Boolean.FALSE);
    }

    public final ri8 getCurrentTab() {
        return (ri8) bf3.b(this.desktopTabsState.d).b.getValue();
    }

    public final void onBackFromTabClicked() {
        com.warefly.checkscan.presentation.flows.desktop.presenter.a aVar = this.desktopTabsState;
        DesktopPresenter desktopPresenter = aVar.b;
        Stack<ri8> stack = aVar.e;
        if (stack.size() > 1) {
            stack.pop();
            ri8 ri8VarPeek = stack.peek();
            ri8VarPeek.getClass();
            desktopPresenter.setBottomItem(ri8VarPeek);
            aVar.c(ri8VarPeek);
            desktopPresenter.setBottomNavigationTab(ri8VarPeek, null);
            return;
        }
        if (stack.size() == 1) {
            ri8 ri8VarPeek2 = stack.peek();
            ri8 ri8Var = ri8.Bonuses;
            if (ri8VarPeek2 != ri8Var) {
                stack.pop();
                aVar.b(ri8Var);
                return;
            }
        }
        desktopPresenter.onCloseDesktopTabs();
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void onCloseDesktopTabs() {
        this.flowRouter.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ih5
    public void onFirstViewAttach() throws Exception {
        tq5 zr5Var;
        super.onFirstViewAttach();
        yz7 yz7VarA = this.accountInteractor.a();
        he7 he7Var = ne7.c;
        BasePresenter.disposeOnDestroy$default(this, yb8.f(yz7VarA.i(he7Var).f(rj.a()), null, new i(), 1), null, 1, null);
        launchInPresenter(new df3(bf3.b(this.desktopTabsState.d), new m(null)));
        com.warefly.checkscan.presentation.flows.desktop.presenter.a aVar = this.desktopTabsState;
        Deeplink.Desktop desktop = aVar.a;
        ri8 ri8VarA = aVar.a(desktop);
        DesktopPresenter desktopPresenter = aVar.b;
        desktopPresenter.setBottomNavigationTabs(((Boolean) aVar.c.invoke()).booleanValue());
        desktopPresenter.setBottomNavigationTab(ri8VarA, desktop);
        aVar.c(ri8VarA);
        if (ri8VarA != ri8.Bonuses) {
            aVar.e.push(ri8VarA);
        }
        desktopPresenter.setBottomNavigationSelectedIcon(ri8VarA);
        if (desktop instanceof Deeplink.Desktop.Bonuses) {
            String str = ((Deeplink.Desktop.Bonuses) desktop).c;
            if (!ta8.M(str)) {
                desktopPresenter.openDesktopUrlDeeplinkInBrowser(str);
            }
        }
        disposeOnDestroy(yb8.f(new p08(this.accountInteractor.b.r(), new v3(i4.g)).i(he7Var).f(rj.a()), null, new n(), 1), "isNeedToUpdate");
        c4 c4Var = this.accountInteractor;
        int i2 = 0;
        r08 r08VarF = new e08(c4Var.b.f(), new k3(new e4(c4Var, 0), 0)).i(he7Var).f(rj.a());
        rm3.e eVar = rm3.d;
        rm3.l lVar = rm3.e;
        BasePresenter.disposeOnDestroy$default(this, r08VarF.g(eVar, lVar), null, 1, null);
        if (this.preferencesRepository.S0()) {
            av0.c(getPresenterScope(), null, null, new o(null), 3);
        }
        c4 c4Var2 = this.accountInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.g(new h08(c4Var2.b.i(), new z3(new f4(c4Var2, i2), i2)).i(he7Var).f(rj.a()), p.f, null, 2), null, 1, null);
        BasePresenter.disposeOnDestroy$default(this, yb8.g(this.cashbackInteractor.a.a().i(he7Var).f(rj.a()), null, null, 3), null, 1, null);
        disposeOnDestroy(yb8.g(this.accountInteractor.c().i(he7Var).f(rj.a()), null, null, 3), "updateAccountInfo");
        launchInPresenter(new df3(this.avatarState.a, new q(null)));
        launchInPresenter(new df3(bf3.b(this.subscriptionInteractor.c), new r(null)));
        BasePresenter.disposeOnDestroy$default(this, yb8.h(this.cashbackInteractor.d.g(he7Var).e(rj.a()), null, new s(), 3), null, 1, null);
        this.desktopInteractor.c(getPresenterScope(), new t(null));
        nh9 nh9Var = this.welcomeBannersInteractor;
        nh9Var.getClass();
        launchInPresenter(new de3(new df3(new tb7(new mh9(nh9Var, null)), new c(null)), new d(3, null)));
        launchInPresenter(new df3(new ff3(this.cashbackInteractor.f, new cf3(bf3.b(this.desktopTabsState.d)), e.c), new f(null)));
        requestPushPermission();
        launchInPresenter(new df3(this.internetConnected, new g(null)));
        c4 c4Var3 = this.accountInteractor;
        hi0 hi0VarA = c4Var3.j.a();
        hi0VarA.getClass();
        zq5 zq5Var = new zq5(hi0VarA);
        w3 w3Var = new w3(j4.g, 0);
        int i3 = gg3.b;
        nq5.b(i3, "bufferSize");
        if (zq5Var instanceof kd7) {
            T tCall = ((kd7) zq5Var).call();
            zr5Var = tCall == 0 ? dr5.b : new tr5.b(tCall, w3Var);
        } else {
            zr5Var = new zr5(zq5Var, w3Var, i3);
        }
        x3 x3Var = new x3(new n4(c4Var3, 0), 0);
        zr5Var.getClass();
        gg3<T> gg3VarH = new zq5(new as5(zr5Var, x3Var)).h(n00.LATEST);
        py1[] py1VarArr = yx6.a;
        px.h(new et6(gg3VarH, gx2.b, -2, cu0.SUSPEND), getPresenterScope());
        launchInPresenter(new df3(new ff3(bf3.b(this.notificationsInteractor.e), new cf3(bf3.b(this.desktopTabsState.d)), h.c), new j(null)));
        pp5 pp5Var = this.notificationsInteractor;
        BasePresenter.disposeOnDestroy$default(this, new sz7(pp5Var.a.b(), new vk1(new np5(pp5Var, 0), 3)).i(he7Var).f(rj.a()).g(eVar, lVar), null, 1, null);
        da7 da7Var = this.sseInteractor;
        px.h(ud3.b(new de3(new df3(new ce3(da7Var.a.c(), new aa7(da7Var, null)), new ba7(da7Var, null)), new ca7(3, null)), da7Var.f), getPresenterScope());
        av0.c(getPresenterScope(), null, null, new k(null), 3);
        launchInPresenter(new df3(this.accountState.b, new l(null)));
        this.resetOnboardingUseCase.a.a();
    }

    public final void onFloatingClick(ed3 ed3Var) {
        ed3Var.getClass();
        String str = ed3Var.b;
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap(str, "clicks");
        mapSingletonMap.getClass();
        new kd.e.c.a.C0243a.C0244a.C0245a(mapSingletonMap).c();
        this.cashbackInteractor.e.setValue(null);
        av0.c(getPresenterScope(), null, null, new u(ed3Var, null), 3);
        if (!ed3Var.e || this.preferencesRepository.G0()) {
            DesktopView desktopView = (DesktopView) getViewState();
            if (desktopView != null) {
                desktopView.openUrlInCustomTab(str);
                return;
            }
            return;
        }
        uf3 uf3Var = this.flowRouter;
        ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }

    public final void onMenuItemClicked(DesktopView.a aVar) {
        aVar.getClass();
        int i2 = a.a[aVar.ordinal()];
        if (i2 == 1) {
            kd.v.a.b.e.c();
            uf3 uf3Var = this.flowRouter;
            qh7 qh7Var = new qh7(ProfileReason.Notifications.b);
            uf3Var.getClass();
            uf3Var.c.d(qh7Var);
            return;
        }
        if (i2 != 2) {
            return;
        }
        kd.a.i.C0230a.e.a();
        if (this.preferencesRepository.G0()) {
            new kd.a.h.c().a();
            uf3 uf3Var2 = this.flowRouter;
            qh7 qh7Var2 = new qh7(ProfileReason.MainProfile.b);
            uf3Var2.getClass();
            uf3Var2.c.d(qh7Var2);
            return;
        }
        new kd.a.h.C0229a().a();
        uf3 uf3Var3 = this.flowRouter;
        ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
        uf3Var3.getClass();
        uf3Var3.c.d(ixVar);
    }

    public final void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showOrdAdDialog(b06Var);
        }
    }

    public final void onResume() {
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showTasksAnimatedBadge(this.preferencesRepository.l1());
        }
        av0.c(getPresenterScope(), null, null, new v(null), 3);
    }

    public final void onScanClicked() {
        uf3 uf3Var = this.flowRouter;
        wh7 wh7Var = new wh7(null, true, 0L, null, 29);
        uf3Var.getClass();
        uf3Var.c.d(wh7Var);
    }

    public final void onTabClicked(ri8 ri8Var) {
        ri8Var.getClass();
        com.warefly.checkscan.presentation.flows.desktop.presenter.a aVar = this.desktopTabsState;
        aVar.getClass();
        aVar.b(ri8Var);
    }

    public final void onTryAgainSelectionOfTabs() {
        av0.c(getPresenterScope(), null, null, new w(null), 3);
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showNoInternetConnection(!this.internetConnected.getValue().booleanValue());
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void openDesktopUrlDeeplinkInBrowser(String str) {
        str.getClass();
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.openUrl(str);
        }
    }

    public final void pushPermissionNotAllowed() {
        if (this.preferencesRepository.M()) {
            return;
        }
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showPushPermissionDialog();
        }
        this.preferencesRepository.i0();
    }

    public final void sendBannerWatched(int i2) {
        this.sendBannerWatchUseCase.a(i2);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setBonusesToolbar() {
        if (this.preferencesRepository.F()) {
            DesktopView desktopView = (DesktopView) getViewState();
            if (desktopView != null) {
                desktopView.showToolbar(false);
                return;
            }
            return;
        }
        DesktopView desktopView2 = (DesktopView) getViewState();
        if (desktopView2 != null) {
            desktopView2.setUpDefaultToolbar();
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setBottomItem(ri8 ri8Var) {
        ri8Var.getClass();
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.setBottomItem(ri8Var);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setBottomNavigationSelectedIcon(ri8 ri8Var) {
        ri8Var.getClass();
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.setBottomSelectedIcon(ri8Var);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setBottomNavigationTab(ri8 ri8Var, Deeplink.Desktop desktop) {
        ri8Var.getClass();
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.setTab(ri8Var, desktop);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setBottomNavigationTabs(boolean z) {
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.setBottomTabs(z);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setChequesToolbar() {
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.setUpChequesToolbar();
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setDiscountToolbar() {
        if (this.preferencesRepository.Z()) {
            DesktopView desktopView = (DesktopView) getViewState();
            if (desktopView != null) {
                desktopView.showToolbar(false);
                return;
            }
            return;
        }
        DesktopView desktopView2 = (DesktopView) getViewState();
        if (desktopView2 != null) {
            desktopView2.setUpDiscountToolbar();
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setGamesToolbar() {
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showToolbar(false);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void setTasksToolbar() {
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showToolbar(false);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.a.InterfaceC0163a
    public void showToolbar(boolean z) {
        DesktopView desktopView = (DesktopView) getViewState();
        if (desktopView != null) {
            desktopView.showToolbar(z);
        }
    }
}
