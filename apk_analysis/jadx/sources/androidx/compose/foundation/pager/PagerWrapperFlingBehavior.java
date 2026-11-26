package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r57;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
final class PagerWrapperFlingBehavior implements FlingBehavior {
    private final TargetedFlingBehavior originalFlingBehavior;
    private final PagerState pagerState;

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.pager.PagerWrapperFlingBehavior", f = "LazyLayoutPager.kt", l = {488}, m = "performFling", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PagerWrapperFlingBehavior.this.performFling(null, 0.0f, this);
        }
    }

    public PagerWrapperFlingBehavior(TargetedFlingBehavior targetedFlingBehavior, PagerState pagerState) {
        this.originalFlingBehavior = targetedFlingBehavior;
        this.pagerState = pagerState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 performFling$lambda$0$0(PagerWrapperFlingBehavior pagerWrapperFlingBehavior, ScrollScope scrollScope, float f) {
        pagerWrapperFlingBehavior.pagerState.updateTargetPage(scrollScope, pagerWrapperFlingBehavior.pagerState.getCurrentPage() + w65.b(pagerWrapperFlingBehavior.pagerState.getPageSizeWithSpacing$foundation() != 0 ? f / pagerWrapperFlingBehavior.pagerState.getPageSizeWithSpacing$foundation() : 0.0f));
        return j59.a;
    }

    public final TargetedFlingBehavior getOriginalFlingBehavior() {
        return this.originalFlingBehavior;
    }

    public final PagerState getPagerState() {
        return this.pagerState;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public Object performFling(final ScrollScope scrollScope, float f, e02<? super Float> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objPerformFling = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objPerformFling);
            TargetedFlingBehavior targetedFlingBehavior = this.originalFlingBehavior;
            nl3<? super Float, j59> nl3Var = new nl3() { // from class: androidx.compose.foundation.pager.g
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return PagerWrapperFlingBehavior.performFling$lambda$0$0(this.b, scrollScope, ((Float) obj).floatValue());
                }
            };
            anonymousClass1.label = 1;
            objPerformFling = targetedFlingBehavior.performFling(scrollScope, f, nl3Var, anonymousClass1);
            if (objPerformFling == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objPerformFling);
        }
        float fFloatValue = ((Number) objPerformFling).floatValue();
        if (this.pagerState.getCurrentPageOffsetFraction() != 0.0f && Math.abs(this.pagerState.getCurrentPageOffsetFraction()) < 0.001d) {
            PagerState pagerState = this.pagerState;
            PagerState.requestScrollToPage$default(pagerState, pagerState.getCurrentPage(), 0.0f, 2, null);
        } else {
            new Float(this.pagerState.getCurrentPageOffsetFraction());
        }
        return new Float(fFloatValue);
    }
}
