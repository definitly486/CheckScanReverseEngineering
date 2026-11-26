package androidx.compose.material3.carousel;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.pager.PagerScrollScopeKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.carousel.CarouselState$animateScrollToItem$2$1", f = "CarouselState.kt", l = {111}, m = "invokeSuspend")
public final class CarouselState$animateScrollToItem$2$1 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ int $targetPage;
    final /* synthetic */ CarouselPagerState $this_with;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarouselState$animateScrollToItem$2$1(CarouselPagerState carouselPagerState, int i, AnimationSpec<Float> animationSpec, e02<? super CarouselState$animateScrollToItem$2$1> e02Var) {
        super(2, e02Var);
        this.$this_with = carouselPagerState;
        this.$targetPage = i;
        this.$animationSpec = animationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(CarouselPagerState carouselPagerState, ScrollScope scrollScope, int i) {
        carouselPagerState.updateTargetPage(scrollScope, i);
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CarouselState$animateScrollToItem$2$1 carouselState$animateScrollToItem$2$1 = new CarouselState$animateScrollToItem$2$1(this.$this_with, this.$targetPage, this.$animationSpec, e02Var);
        carouselState$animateScrollToItem$2$1.L$0 = obj;
        return carouselState$animateScrollToItem$2$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
        return ((CarouselState$animateScrollToItem$2$1) create(scrollScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            LazyLayoutScrollScope LazyLayoutScrollScope = PagerScrollScopeKt.LazyLayoutScrollScope(this.$this_with, (ScrollScope) this.L$0);
            final CarouselPagerState carouselPagerState = this.$this_with;
            int i2 = this.$targetPage;
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            bm3 bm3Var = new bm3() { // from class: androidx.compose.material3.carousel.c
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return CarouselState$animateScrollToItem$2$1.invokeSuspend$lambda$0(carouselPagerState, (ScrollScope) obj2, iIntValue);
                }
            };
            this.label = 1;
            if (CarouselStateKt.animateScrollToPage(LazyLayoutScrollScope, carouselPagerState, i2, 0.0f, animationSpec, bm3Var, this) == a32Var) {
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
