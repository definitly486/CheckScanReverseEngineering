package com.warefly.checkscan.presentation.onboardingCard.slides.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.onboardingCard.slides.view.OnboardingCardSlideView;
import defpackage.a32;
import defpackage.a41;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.f02;
import defpackage.gy6;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.kd;
import defpackage.pg8;
import defpackage.r57;
import defpackage.uw5;
import defpackage.zj3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnBoardingCardSlidePresenter extends BasePresenter<OnboardingCardSlideView> {
    private final uw5 onboardingCardSlidesInteractor;
    private final long slideId;

    public static final class a implements hd3<zj3> {
        public final /* synthetic */ gy6 b;
        public final /* synthetic */ OnBoardingCardSlidePresenter c;

        /* JADX INFO: renamed from: com.warefly.checkscan.presentation.onboardingCard.slides.presenter.OnBoardingCardSlidePresenter$a$a, reason: collision with other inner class name */
        public static final class C0166a<T> implements id3 {
            public final /* synthetic */ id3 b;
            public final /* synthetic */ OnBoardingCardSlidePresenter c;

            /* JADX INFO: renamed from: com.warefly.checkscan.presentation.onboardingCard.slides.presenter.OnBoardingCardSlidePresenter$a$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.onboardingCard.slides.presenter.OnBoardingCardSlidePresenter$onFirstViewAttach$$inlined$mapNotNull$1$2", f = "OnBoardingCardSlidePresenter.kt", l = {221}, m = "emit")
            public static final class C0167a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0167a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return C0166a.this.emit(null, this);
                }
            }

            public C0166a(id3 id3Var, OnBoardingCardSlidePresenter onBoardingCardSlidePresenter) {
                this.b = id3Var;
                this.c = onBoardingCardSlidePresenter;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0167a c0167a;
                if (e02Var instanceof C0167a) {
                    c0167a = (C0167a) e02Var;
                    int i = c0167a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0167a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0167a = new C0167a(e02Var);
                    }
                } else {
                    c0167a = new C0167a(e02Var);
                }
                Object obj2 = c0167a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0167a.m;
                zj3 zj3Var = null;
                if (i2 == 0) {
                    r57.b(obj2);
                    for (T t : (List) obj) {
                        if (((zj3) t).a == this.c.slideId) {
                            zj3Var = t;
                            break;
                        }
                    }
                    if (zj3Var != null) {
                        c0167a.m = 1;
                        if (this.b.emit(zj3Var, c0167a) == a32Var) {
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

        public a(gy6 gy6Var, OnBoardingCardSlidePresenter onBoardingCardSlidePresenter) {
            this.b = gy6Var;
            this.c = onBoardingCardSlidePresenter;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.hd3
        public final Object collect(id3<? super zj3> id3Var, e02 e02Var) {
            Object objCollect = this.b.b.collect(new C0166a(id3Var, this.c), (e02<? super j59>) e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.onboardingCard.slides.presenter.OnBoardingCardSlidePresenter$onFirstViewAttach$2", f = "OnBoardingCardSlidePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<zj3, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = OnBoardingCardSlidePresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zj3 zj3Var, e02<? super j59> e02Var) {
            return ((b) create(zj3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            zj3 zj3Var = (zj3) this.l;
            OnboardingCardSlideView onboardingCardSlideView = (OnboardingCardSlideView) OnBoardingCardSlidePresenter.this.getViewState();
            if (onboardingCardSlideView != null) {
                onboardingCardSlideView.showContent(zj3Var);
            }
            return j59.a;
        }
    }

    public OnBoardingCardSlidePresenter(long j, uw5 uw5Var) {
        uw5Var.getClass();
        this.slideId = j;
        this.onboardingCardSlidesInteractor = uw5Var;
    }

    public final void onButtonActionClick(a41 a41Var) {
        a41Var.getClass();
        uw5 uw5Var = this.onboardingCardSlidesInteractor;
        uw5Var.getClass();
        uw5Var.b.e(a41Var);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        kd.x.a.c.e.a();
        launchInPresenter(new df3(new a(bf3.b(this.onboardingCardSlidesInteractor.c), this), new b(null)));
    }
}
