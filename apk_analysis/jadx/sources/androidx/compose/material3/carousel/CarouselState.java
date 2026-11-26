package androidx.compose.material3.carousel;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k51;
import defpackage.kx6;
import defpackage.l51;
import defpackage.ll3;
import defpackage.sf;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class CarouselState implements ScrollableState {
    private CarouselPagerState pagerState;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final Saver<CarouselState, ?> Saver = ListSaverKt.listSaver(new l51(), new sf(1));

    public /* synthetic */ CarouselState(int i, float f, ll3 ll3Var, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0.0f : f, ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List Saver$lambda$1(SaverScope saverScope, CarouselState carouselState) {
        return u96.i(Integer.valueOf(carouselState.pagerState.getCurrentPage()), Float.valueOf(carouselState.pagerState.getCurrentPageOffsetFraction()), Integer.valueOf(carouselState.pagerState.getPageCount()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CarouselState Saver$lambda$3(List list) {
        Object obj = list.get(0);
        obj.getClass();
        int iIntValue = ((Integer) obj).intValue();
        Object obj2 = list.get(1);
        obj2.getClass();
        return new CarouselState(iIntValue, ((Float) obj2).floatValue(), new k51(list, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Saver$lambda$3$lambda$2(List list) {
        Object obj = list.get(2);
        obj.getClass();
        return ((Integer) obj).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateScrollToItem$default(CarouselState carouselState, int i, AnimationSpec animationSpec, e02 e02Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return carouselState.animateScrollToItem(i, animationSpec, e02Var);
    }

    public final Object animateScrollToItem(int i, AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        CarouselPagerState carouselPagerState = this.pagerState;
        if ((i == carouselPagerState.getCurrentPage() && carouselPagerState.getCurrentPageOffsetFraction() == 0.0f) || carouselPagerState.getPageCount() == 0) {
            return j59.a;
        }
        Object objScroll$default = ScrollableState.scroll$default(carouselPagerState, null, new CarouselState$animateScrollToItem$2$1(carouselPagerState, carouselPagerState.getPageCount() > 0 ? kx6.f(i, 0, carouselPagerState.getPageCount() - 1) : 0, animationSpec, null), e02Var, 1, null);
        return objScroll$default == a32.COROUTINE_SUSPENDED ? objScroll$default : j59.a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f) {
        return this.pagerState.dispatchRawDelta(f);
    }

    public final int getCurrentItem() {
        return this.pagerState.getCurrentPage();
    }

    public final CarouselPagerState getPagerState$material3() {
        return this.pagerState;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.pagerState.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, bm3<? super ScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objScroll = this.pagerState.scroll(mutatePriority, bm3Var, e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    public final Object scrollToItem(int i, e02<? super j59> e02Var) {
        Object objScrollToPage = this.pagerState.scrollToPage(i, 0.0f, e02Var);
        return objScrollToPage == a32.COROUTINE_SUSPENDED ? objScrollToPage : j59.a;
    }

    public final void setPagerState$material3(CarouselPagerState carouselPagerState) {
        this.pagerState = carouselPagerState;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<CarouselState, ?> getSaver() {
            return CarouselState.Saver;
        }

        private Companion() {
        }
    }

    public CarouselState(int i, float f, ll3<Integer> ll3Var) {
        this.pagerState = new CarouselPagerState(i, f, ll3Var);
    }
}
