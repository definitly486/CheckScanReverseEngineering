package com.warefly.checkscan.presentation.onboardingCard.presenter;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.onboardingCard.slides.view.OnBoardingCardSlideFragment;
import com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView;
import defpackage.a32;
import defpackage.a41;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.cf3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.ff3;
import defpackage.gy6;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.k8;
import defpackage.kd;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.m13;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.ta8;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uw5;
import defpackage.xg5;
import defpackage.zj3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnBoardingCardSlidesPresenter extends BasePresenter<OnboardingCardSlidesView> {
    private final xg5<Integer> currentSlideIndex;
    private final uf3 flowRouter;
    private final uw5 onboardingCardSlidesInteractor;

    public static final class a implements hd3<List<? extends OnBoardingCardSlideFragment>> {
        public final /* synthetic */ gy6 b;

        /* JADX INFO: renamed from: com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter$a$a, reason: collision with other inner class name */
        public static final class C0164a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter$a$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter$onFirstViewAttach$$inlined$map$1$2", f = "OnBoardingCardSlidesPresenter.kt", l = {217}, m = "emit")
            public static final class C0165a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0165a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return C0164a.this.emit(null, this);
                }
            }

            public C0164a(id3 id3Var) {
                this.b = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0165a c0165a;
                if (e02Var instanceof C0165a) {
                    c0165a = (C0165a) e02Var;
                    int i = c0165a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0165a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0165a = new C0165a(e02Var);
                    }
                } else {
                    c0165a = new C0165a(e02Var);
                }
                Object obj2 = c0165a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0165a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    List<zj3> list = (List) obj;
                    ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                    for (zj3 zj3Var : list) {
                        OnBoardingCardSlideFragment.a aVar = OnBoardingCardSlideFragment.h;
                        long j = zj3Var.a;
                        aVar.getClass();
                        OnBoardingCardSlideFragment onBoardingCardSlideFragment = new OnBoardingCardSlideFragment();
                        onBoardingCardSlideFragment.setArguments(BundleKt.bundleOf(new b36("SLIDE_KEY", Long.valueOf(j))));
                        arrayList.add(onBoardingCardSlideFragment);
                    }
                    c0165a.m = 1;
                    if (this.b.emit(arrayList, c0165a) == a32Var) {
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

        public a(gy6 gy6Var) {
            this.b = gy6Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.hd3
        public final Object collect(id3<? super List<? extends OnBoardingCardSlideFragment>> id3Var, e02 e02Var) {
            Object objCollect = this.b.b.collect(new C0164a(id3Var), (e02<? super j59>) e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter$onFirstViewAttach$2", f = "OnBoardingCardSlidesPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<List<? extends OnBoardingCardSlideFragment>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = OnBoardingCardSlidesPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends OnBoardingCardSlideFragment> list, e02<? super j59> e02Var) {
            return ((b) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<? extends Fragment> list = (List) this.l;
            OnboardingCardSlidesView onboardingCardSlidesView = (OnboardingCardSlidesView) OnBoardingCardSlidesPresenter.this.getViewState();
            if (onboardingCardSlidesView != null) {
                onboardingCardSlidesView.showFragments(list);
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class c extends k8 implements dm3<List<? extends OnBoardingCardSlideFragment>, Integer, e02<? super b36<? extends List<? extends OnBoardingCardSlideFragment>, ? extends Integer>>, Object> {
        public static final c c = new c(3, b36.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);

        @Override // defpackage.dm3
        public final Object invoke(List<? extends OnBoardingCardSlideFragment> list, Integer num, e02<? super b36<? extends List<? extends OnBoardingCardSlideFragment>, ? extends Integer>> e02Var) {
            return OnBoardingCardSlidesPresenter.onFirstViewAttach$lambda$2(list, num.intValue(), e02Var);
        }
    }

    public static final /* synthetic */ class d extends k8 implements bm3<b36<? extends List<? extends Fragment>, ? extends Integer>, e02<? super j59>, Object> {
        @Override // defpackage.bm3
        public final Object invoke(b36<? extends List<? extends Fragment>, ? extends Integer> b36Var, e02<? super j59> e02Var) {
            return OnBoardingCardSlidesPresenter.onFirstViewAttach$changeViewStateByPos((OnBoardingCardSlidesPresenter) this.receiver, b36Var, e02Var);
        }
    }

    public static final /* synthetic */ class e extends k8 implements bm3<a41, e02<? super j59>, Object> {
        @Override // defpackage.bm3
        public final Object invoke(a41 a41Var, e02<? super j59> e02Var) {
            return OnBoardingCardSlidesPresenter.onFirstViewAttach$handleEvent((OnBoardingCardSlidesPresenter) this.receiver, a41Var, e02Var);
        }
    }

    public OnBoardingCardSlidesPresenter(uw5 uw5Var, uf3 uf3Var) {
        uw5Var.getClass();
        uf3Var.getClass();
        this.onboardingCardSlidesInteractor = uw5Var;
        this.flowRouter = uf3Var;
        this.currentSlideIndex = px.a(null);
    }

    private final void changeViewStateByPos(b36<? extends List<? extends Fragment>, Integer> b36Var) {
        OnboardingCardSlidesView onboardingCardSlidesView;
        List list = (List) b36Var.b;
        int iIntValue = b36Var.c.intValue();
        OnboardingCardSlidesView onboardingCardSlidesView2 = (OnboardingCardSlidesView) getViewState();
        if (onboardingCardSlidesView2 != null) {
            onboardingCardSlidesView2.setLeftButtonVisible(iIntValue != 0);
        }
        if (!u96.f(list).c(iIntValue) || (onboardingCardSlidesView = (OnboardingCardSlidesView) getViewState()) == null) {
            return;
        }
        onboardingCardSlidesView.setSelectedSlide(iIntValue);
    }

    private final void handleEvent(a41 a41Var) {
        Integer value;
        Integer num;
        if (aa4.e(a41Var, a41.b.a)) {
            xg5<Integer> xg5Var = this.currentSlideIndex;
            do {
                value = xg5Var.getValue();
                num = value;
            } while (!xg5Var.a(value, num != null ? Integer.valueOf(num.intValue() + 1) : null));
            return;
        }
        if (a41Var instanceof a41.a) {
            String str = ((a41.a) a41Var).a;
            if (ta8.M(str)) {
                this.flowRouter.c();
                return;
            }
            kd.x.a.C0295a.e.a();
            OnboardingCardSlidesView onboardingCardSlidesView = (OnboardingCardSlidesView) getViewState();
            if (onboardingCardSlidesView != null) {
                onboardingCardSlidesView.openUrl(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onFirstViewAttach$changeViewStateByPos(OnBoardingCardSlidesPresenter onBoardingCardSlidesPresenter, b36 b36Var, e02 e02Var) {
        onBoardingCardSlidesPresenter.changeViewStateByPos(b36Var);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onFirstViewAttach$handleEvent(OnBoardingCardSlidesPresenter onBoardingCardSlidesPresenter, a41 a41Var, e02 e02Var) {
        onBoardingCardSlidesPresenter.handleEvent(a41Var);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object onFirstViewAttach$lambda$2(List list, int i, e02 e02Var) {
        return new b36(list, new Integer(i));
    }

    public final void onButtonLeftClick() {
        Integer value;
        Integer num;
        xg5<Integer> xg5Var = this.currentSlideIndex;
        do {
            value = xg5Var.getValue();
            num = value;
        } while (!xg5Var.a(value, num != null ? Integer.valueOf(num.intValue() - 1) : null));
    }

    public final void onButtonRightClick() {
        kd.x.a.b.e.a();
        this.flowRouter.c();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        this.onboardingCardSlidesInteractor.c.k(null, kx2.b);
        super.onDestroy();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(new ff3(new df3(new a(bf3.b(this.onboardingCardSlidesInteractor.c)), new b(null)), new cf3(this.currentSlideIndex), c.c), new d(2, this, OnBoardingCardSlidesPresenter.class, "changeViewStateByPos", "changeViewStateByPos(Lkotlin/Pair;)V", 4)));
        launchInPresenter(new df3(bf3.a(this.onboardingCardSlidesInteractor.b), new e(2, this, OnBoardingCardSlidesPresenter.class, "handleEvent", "handleEvent(Lcom/warefly/checkscan/presentation/onboardingCard/models/CardSlideEvent;)V", 4)));
        launchInPresenter(m13.c(this.onboardingCardSlidesInteractor.a.a(), "removeOnboarding", null, 2));
    }

    public final void onSlideSelected(int i) {
        this.currentSlideIndex.setValue(Integer.valueOf(i));
    }
}
