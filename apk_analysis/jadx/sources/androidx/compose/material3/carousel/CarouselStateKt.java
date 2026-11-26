package androidx.compose.material3.carousel;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.carousel.CarouselStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o07;

/* JADX INFO: loaded from: classes2.dex */
public final class CarouselStateKt {
    public static final float MaxPageOffset = 0.5f;
    private static final int MaxPagesForAnimateScroll = 3;
    public static final float MinPageOffset = -0.5f;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object animateScrollToPage(final LazyLayoutScrollScope lazyLayoutScrollScope, PagerState pagerState, int i, float f, AnimationSpec<Float> animationSpec, bm3<? super ScrollScope, ? super Integer, j59> bm3Var, e02<? super j59> e02Var) {
        int firstVisibleItemIndex;
        bm3Var.invoke(lazyLayoutScrollScope, new Integer(i));
        boolean z = i > lazyLayoutScrollScope.getFirstVisibleItemIndex();
        int lastVisibleItemIndex = (lazyLayoutScrollScope.getLastVisibleItemIndex() - lazyLayoutScrollScope.getFirstVisibleItemIndex()) + 1;
        if (((z && i > lazyLayoutScrollScope.getLastVisibleItemIndex()) || (!z && i < lazyLayoutScrollScope.getFirstVisibleItemIndex())) && Math.abs(i - lazyLayoutScrollScope.getFirstVisibleItemIndex()) >= 3) {
            if (z) {
                firstVisibleItemIndex = i - lastVisibleItemIndex;
                int firstVisibleItemIndex2 = lazyLayoutScrollScope.getFirstVisibleItemIndex();
                if (firstVisibleItemIndex < firstVisibleItemIndex2) {
                    firstVisibleItemIndex = firstVisibleItemIndex2;
                }
            } else {
                int i2 = lastVisibleItemIndex + i;
                firstVisibleItemIndex = lazyLayoutScrollScope.getFirstVisibleItemIndex();
                if (i2 <= firstVisibleItemIndex) {
                    firstVisibleItemIndex = i2;
                }
            }
            lazyLayoutScrollScope.snapToItem(firstVisibleItemIndex, 0);
        }
        float fCalculateScrollDistanceTo = calculateScrollDistanceTo(pagerState, pagerState.getCurrentPage(), i) + f;
        final o07 o07Var = new o07();
        Object objAnimate$default = SuspendAnimationKt.animate$default(0.0f, fCalculateScrollDistanceTo, 0.0f, animationSpec, new bm3() { // from class: n51
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return CarouselStateKt.animateScrollToPage$lambda$3(o07Var, lazyLayoutScrollScope, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
            }
        }, e02Var, 4, null);
        return objAnimate$default == a32.COROUTINE_SUSPENDED ? objAnimate$default : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateScrollToPage$lambda$3(o07 o07Var, LazyLayoutScrollScope lazyLayoutScrollScope, float f, float f2) {
        o07Var.b += lazyLayoutScrollScope.scrollBy(f - o07Var.b);
        return j59.a;
    }

    private static final float calculateScrollDistanceTo(PagerState pagerState, int i, int i2) {
        int iMo2300getViewportSizeYbymL2g = (int) (pagerState.getLayoutInfo().getOrientation() == Orientation.Horizontal ? pagerState.getLayoutInfo().mo2300getViewportSizeYbymL2g() >> 32 : pagerState.getLayoutInfo().mo2300getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return ((i2 - i) * (pagerState.getLayoutInfo().getPageSize() + pagerState.getLayoutInfo().getPageSpacing())) + (pagerState.getLayoutInfo().getSnapPosition().position(iMo2300getViewportSizeYbymL2g, pagerState.getLayoutInfo().getPageSize(), pagerState.getLayoutInfo().getBeforeContentPadding(), pagerState.getLayoutInfo().getAfterContentPadding(), i, pagerState.getPageCount()) - pagerState.getLayoutInfo().getSnapPosition().position(iMo2300getViewportSizeYbymL2g, pagerState.getLayoutInfo().getPageSize(), pagerState.getLayoutInfo().getBeforeContentPadding(), pagerState.getLayoutInfo().getAfterContentPadding(), i2, pagerState.getPageCount()));
    }

    public static final CarouselState rememberCarouselState(final int i, final ll3<Integer> ll3Var, Composer composer, int i2, int i3) {
        boolean z = true;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-217285684, i2, -1, "androidx.compose.material3.carousel.rememberCarouselState (CarouselState.kt:151)");
        }
        Object[] objArr = new Object[0];
        Saver<CarouselState, ?> saver = CarouselState.Companion.getSaver();
        boolean z2 = (((i2 & 14) ^ 6) > 4 && composer.changed(i)) || (i2 & 6) == 4;
        if ((((i2 & 112) ^ 48) <= 32 || !composer.changed(ll3Var)) && (i2 & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objRememberedValue = composer.rememberedValue();
        if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: m51
                @Override // defpackage.ll3
                public final Object invoke() {
                    return CarouselStateKt.rememberCarouselState$lambda$1$lambda$0(i, ll3Var);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        CarouselState carouselState = (CarouselState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composer, 0);
        carouselState.getPagerState$material3().getPageCountState().setValue(ll3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return carouselState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CarouselState rememberCarouselState$lambda$1$lambda$0(int i, ll3 ll3Var) {
        return new CarouselState(i, 0.0f, ll3Var);
    }
}
