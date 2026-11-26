package com.warefly.checkscan.presentation.queue.afterScanSplash.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.b06;
import defpackage.b68;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.gy6;
import defpackage.hc0;
import defpackage.hd3;
import defpackage.hv6;
import defpackage.ic8;
import defpackage.id3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.kx2;
import defpackage.mo7;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s47;
import defpackage.ta8;
import defpackage.tb7;
import defpackage.ud;
import defpackage.uf3;
import defpackage.ug1;
import defpackage.vp3;
import defpackage.wc8;
import defpackage.y22;
import defpackage.yg1;
import defpackage.z68;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingSplashPresenter extends BasePresenter<com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView> {
    public static final a Companion = new a();
    private static final long SPLASH_DURATION = 3;
    private final y22 appCoroutineScope;
    private final b68 bannersAfterScanInteractor;
    private final yg1 chequeRequestQueueInteractor;
    private boolean firstCheckScanned;
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;
    private final s47 resourceProvider;
    private final mo7 sendBannerWatchUseCase;
    private final hc0.c splash;
    private final ic8 subscriptionInteractor;

    public static final class a {
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithSplash$1", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return LoadingSplashPresenter.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((b) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            LoadingSplashPresenter loadingSplashPresenter = LoadingSplashPresenter.this;
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.setSplashLoadingInvisible(false);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView2 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView2 != null) {
                loadingSplashView2.setSplashFinishedInvisible(true);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView3 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView3 != null) {
                loadingSplashView3.showCloseButton(false);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView4 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView4 != null) {
                loadingSplashView4.startProgressAnimation(3000L);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithSplash$2", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements dm3<id3<? super Long>, Throwable, e02<? super j59>, Object> {
        public c(e02<? super c> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super Long> id3Var, Throwable th, e02<? super j59> e02Var) {
            return LoadingSplashPresenter.this.new c(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            LoadingSplashPresenter loadingSplashPresenter = LoadingSplashPresenter.this;
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView2 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView2 != null) {
                loadingSplashView2.setSplashLoadingInvisible(true);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView3 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView3 != null) {
                loadingSplashView3.setSplashFinishedInvisible(false);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView4 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView4 != null) {
                loadingSplashView4.showCloseButton(true);
            }
            wc8 wc8Var = (wc8) loadingSplashPresenter.subscriptionInteractor.f.b.getValue();
            if (wc8Var != null && (loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState()) != null) {
                loadingSplashView.showSubscriptionSplash(wc8Var);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithSplash$3", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<Long, e02<? super j59>, Object> {
        public /* synthetic */ long l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = LoadingSplashPresenter.this.new d(e02Var);
            dVar.l = ((Number) obj).longValue();
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Long l, e02<? super j59> e02Var) {
            return ((d) create(Long.valueOf(l.longValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            long j = this.l;
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) LoadingSplashPresenter.this.getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.setSecondsLeft(j);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithoutSplash$1", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
        public e(e02<? super e> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return LoadingSplashPresenter.this.new e(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
            return ((e) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) LoadingSplashPresenter.this.getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.startProgressAnimationWithoutSplash(3000L);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithoutSplash$2", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class f extends pg8 implements dm3<id3<? super Long>, Throwable, e02<? super j59>, Object> {
        public f(e02<? super f> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super Long> id3Var, Throwable th, e02<? super j59> e02Var) {
            return LoadingSplashPresenter.this.new f(e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            LoadingSplashPresenter loadingSplashPresenter = LoadingSplashPresenter.this;
            wc8 wc8Var = (wc8) loadingSplashPresenter.subscriptionInteractor.f.b.getValue();
            if (wc8Var != null) {
                com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
                if (loadingSplashView != null) {
                    loadingSplashView.showSubscriptionSplash(wc8Var);
                }
            } else {
                com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView2 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
                if (loadingSplashView2 != null) {
                    loadingSplashView2.showReceiptLoadedWithoutSplash();
                }
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView3 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView3 != null) {
                loadingSplashView3.showLoadingWithoutSplash(false);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithoutSplash$3", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class g extends pg8 implements bm3<Long, e02<? super j59>, Object> {
        public /* synthetic */ long l;

        public g(e02<? super g> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            g gVar = LoadingSplashPresenter.this.new g(e02Var);
            gVar.l = ((Number) obj).longValue();
            return gVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Long l, e02<? super j59> e02Var) {
            return ((g) create(Long.valueOf(l.longValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            long j = this.l;
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) LoadingSplashPresenter.this.getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.setSecondsLeftWithoutSplash(j);
            }
            return j59.a;
        }
    }

    public static final class h implements hd3<List<? extends hv6>> {
        public final /* synthetic */ gy6 b;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$h$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$onFirstViewAttach$$inlined$filter$1$2", f = "LoadingSplashPresenter.kt", l = {217}, m = "emit")
            public static final class C0168a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0168a(e02 e02Var) {
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
                C0168a c0168a;
                if (e02Var instanceof C0168a) {
                    c0168a = (C0168a) e02Var;
                    int i = c0168a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0168a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0168a = new C0168a(e02Var);
                    }
                } else {
                    c0168a = new C0168a(e02Var);
                }
                Object obj2 = c0168a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0168a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    if (!((List) obj).isEmpty()) {
                        c0168a.m = 1;
                        if (this.b.emit(obj, c0168a) == a32Var) {
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

        public h(gy6 gy6Var) {
            this.b = gy6Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.hd3
        public final Object collect(id3<? super List<? extends hv6>> id3Var, e02 e02Var) {
            Object objCollect = this.b.b.collect(new a(id3Var), (e02<? super j59>) e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    public static final class i implements hd3<List<? extends hv6>> {
        public final /* synthetic */ h b;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$i$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$onFirstViewAttach$$inlined$map$1$2", f = "LoadingSplashPresenter.kt", l = {217}, m = "emit")
            public static final class C0169a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0169a(e02 e02Var) {
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
                C0169a c0169a;
                if (e02Var instanceof C0169a) {
                    c0169a = (C0169a) e02Var;
                    int i = c0169a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0169a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0169a = new C0169a(e02Var);
                    }
                } else {
                    c0169a = new C0169a(e02Var);
                }
                Object obj2 = c0169a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0169a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList = new ArrayList();
                    for (T t : (List) obj) {
                        if (hashSet.add(((hv6) t).b())) {
                            arrayList.add(t);
                        }
                    }
                    c0169a.m = 1;
                    if (this.b.emit(arrayList, c0169a) == a32Var) {
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

        public i(h hVar) {
            this.b = hVar;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super List<? extends hv6>> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$onFirstViewAttach$1$1", f = "LoadingSplashPresenter.kt", l = {60, 63}, m = "invokeSuspend")
    public static final class j extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ hc0.c n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(hc0.c cVar, e02<? super j> e02Var) {
            super(2, e02Var);
            this.n = cVar;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return LoadingSplashPresenter.this.new j(this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((j) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        
            if (r5 == r0) goto L21;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.lang.Throwable {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.l
                com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter r2 = com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter.this
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1d
                if (r1 == r4) goto L19
                if (r1 != r3) goto L12
                defpackage.r57.b(r6)
                goto L68
            L12:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
                r5 = 0
                return r5
            L19:
                defpackage.r57.b(r6)
                goto L38
            L1d:
                defpackage.r57.b(r6)
                mo7 r6 = com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter.access$getSendBannerWatchUseCase$p(r2)
                hc0$c r1 = r5.n
                int r1 = r1.a
                r5.l = r4
                hc1 r6 = r6.a
                java.lang.Object r6 = r6.a(r1, r5)
                if (r6 != r0) goto L33
                goto L35
            L33:
                j59 r6 = defpackage.j59.a
            L35:
                if (r6 != r0) goto L38
                goto L67
            L38:
                b68 r6 = com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter.access$getBannersAfterScanInteractor$p(r2)
                nq1 r6 = r6.b()
                he7 r1 = defpackage.ne7.c
                rq1 r6 = r6.i(r1)
                r5.l = r3
                c31 r1 = new c31
                e02 r5 = defpackage.zya.b(r5)
                r1.<init>(r4, r5)
                r1.u()
                xi0 r5 = new xi0
                r5.<init>(r1)
                r6.b(r5)
                java.lang.Object r5 = r1.s()
                if (r5 != r0) goto L63
                goto L65
            L63:
                j59 r5 = defpackage.j59.a
            L65:
                if (r5 != r0) goto L68
            L67:
                return r0
            L68:
                j59 r5 = defpackage.j59.a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter.j.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$onFirstViewAttach$4", f = "LoadingSplashPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class k extends pg8 implements bm3<List<? extends hv6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public k(e02<? super k> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            k kVar = LoadingSplashPresenter.this.new k(e02Var);
            kVar.l = obj;
            return kVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends hv6> list, e02<? super j59> e02Var) {
            return ((k) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            boolean z = ((List) this.l).size() == 1;
            LoadingSplashPresenter loadingSplashPresenter = LoadingSplashPresenter.this;
            String string = loadingSplashPresenter.resourceProvider.getString(z ? R.string.banner_after_scan_loading : R.string.banner_after_scan_loadings);
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.setSplashLoadingTitle(string);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView2 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView2 != null) {
                loadingSplashView2.setWithoutSplashLoadingTitle(string);
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView3 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) loadingSplashPresenter.getViewState();
            if (loadingSplashView3 != null) {
                loadingSplashView3.setFinishedTitle(loadingSplashPresenter.resourceProvider.getString(z ? R.string.banner_after_scan_cheque_done : R.string.banner_after_scan_cheques_done));
            }
            loadingSplashPresenter.imitateLoading();
            return j59.a;
        }
    }

    public LoadingSplashPresenter(uf3 uf3Var, jf6 jf6Var, yg1 yg1Var, b68 b68Var, s47 s47Var, ic8 ic8Var, mo7 mo7Var, y22 y22Var) {
        uf3Var.getClass();
        jf6Var.getClass();
        yg1Var.getClass();
        b68Var.getClass();
        s47Var.getClass();
        ic8Var.getClass();
        mo7Var.getClass();
        y22Var.getClass();
        this.flowRouter = uf3Var;
        this.preferencesRepository = jf6Var;
        this.chequeRequestQueueInteractor = yg1Var;
        this.bannersAfterScanInteractor = b68Var;
        this.resourceProvider = s47Var;
        this.subscriptionInteractor = ic8Var;
        this.sendBannerWatchUseCase = mo7Var;
        this.appCoroutineScope = y22Var;
        this.splash = b68Var.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void imitateLoading() {
        Object value;
        z68 z68Var = this.chequeRequestQueueInteractor.g;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, kx2.b));
        if (this.splash != null) {
            imitateLoadingWithSplash();
        } else {
            imitateLoadingWithoutSplash();
        }
    }

    private final void imitateLoadingWithSplash() {
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
        if (loadingSplashView != null) {
            loadingSplashView.showLoadingWithSplash(true);
        }
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView2 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
        if (loadingSplashView2 != null) {
            loadingSplashView2.showLoadingWithoutSplash(false);
        }
        this.chequeRequestQueueInteractor.getClass();
        launchInPresenter(new df3(new be3(new ce3(new tb7(new ug1(2, null)), new b(null)), new c(null)), new d(null)));
    }

    private final void imitateLoadingWithoutSplash() {
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
        if (loadingSplashView != null) {
            loadingSplashView.showLoadingWithSplash(false);
        }
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView2 = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
        if (loadingSplashView2 != null) {
            loadingSplashView2.showLoadingWithoutSplash(true);
        }
        this.chequeRequestQueueInteractor.getClass();
        launchInPresenter(new df3(new be3(new ce3(new tb7(new ug1(2, null)), new e(null)), new f(null)), new g(null)));
    }

    private final void replacePlaceholder(String str) {
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView;
        if (this.preferencesRepository.c0().length() <= 0 || (loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState()) == null) {
            return;
        }
        loadingSplashView.openDeeplink(vp3.b(this.preferencesRepository.T0(), str, this.preferencesRepository.c0(), this.preferencesRepository.U0()));
    }

    private final void snapshotScannedCheques() {
        this.firstCheckScanned = this.preferencesRepository.f() == 0;
    }

    public final void checkCountScanCheque() {
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
        if (loadingSplashView != null) {
            loadingSplashView.skip();
        }
    }

    public final void finishScannerFlow() {
        uf3 uf3Var = this.flowRouter;
        com.warefly.checkscan.presentation.f fVar = new com.warefly.checkscan.presentation.f(Deeplink.Desktop.Cheques.c);
        uf3Var.getClass();
        uf3Var.c.g(fVar);
    }

    public final void onAccept() {
        b06 b06Var;
        String str;
        hc0.c cVar = this.splash;
        if (cVar != null) {
            new kd.g.a.d.C0256a(ud.c(cVar.a, "Accept")).c();
        }
        hc0.c cVar2 = this.splash;
        if (cVar2 != null && (b06Var = cVar2.g) != null && (str = b06Var.c) != null) {
            Map mapSingletonMap = Collections.singletonMap("Splash_".concat(str), new String());
            mapSingletonMap.getClass();
            new kd.e0.g("Ord", mapSingletonMap).a();
        }
        hc0.c cVar3 = this.splash;
        if (cVar3 != null) {
            String str2 = cVar3.e;
            if (ta8.D(str2, "{user_id}", false)) {
                replacePlaceholder(str2);
                return;
            }
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.openDeeplink(str2);
            }
        }
    }

    public final void onAdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        String str = b06Var.c;
        if (str == null || b06Var.d == null || b06Var.e == null) {
            return;
        }
        Map mapSingletonMap = Collections.singletonMap("Splash_".concat(str), "description");
        mapSingletonMap.getClass();
        new kd.e0.h("Ord", mapSingletonMap).a();
        com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
        if (loadingSplashView != null) {
            loadingSplashView.showAdInfoDialog(b06Var);
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        Object value;
        super.onDestroy();
        z68 z68Var = this.subscriptionInteractor.e;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, null));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        snapshotScannedCheques();
        hc0.c cVar = this.splash;
        if (cVar != null) {
            new kd.g.a.d.b(ud.c(cVar.a, "Shows")).c();
            com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView loadingSplashView = (com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView) getViewState();
            if (loadingSplashView != null) {
                loadingSplashView.showSplash(cVar);
            }
            av0.c(this.appCoroutineScope, null, null, new j(cVar, null), 3);
        }
        launchInPresenter(new df3(new i(new h(this.chequeRequestQueueInteractor.h)), new k(null)));
    }

    public final void onSkip() {
        b06 b06Var;
        String str;
        hc0.c cVar = this.splash;
        if (cVar != null && (b06Var = cVar.g) != null && (str = b06Var.c) != null) {
            Map mapSingletonMap = Collections.singletonMap("Splash_".concat(str), "skip");
            mapSingletonMap.getClass();
            new kd.e0.i("Ord", mapSingletonMap).a();
        }
        finishScannerFlow();
    }
}
