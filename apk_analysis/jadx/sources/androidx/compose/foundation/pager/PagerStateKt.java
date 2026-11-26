package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.o07;
import defpackage.ve;
import defpackage.z22;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PagerStateKt {
    private static final float DefaultPositionThreshold = Dp.m9042constructorimpl(56.0f);
    private static final PagerMeasureResult EmptyLayoutInfo;
    private static final int MaxPagesForAnimateScroll = 3;
    public static final int PagesToPrefetch = 1;
    private static final PagerStateKt$UnitDensity$1 UnitDensity;

    /* JADX WARN: Type inference failed for: r22v0, types: [androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1, androidx.compose.ui.unit.Density] */
    static {
        ?? r22 = new Density() { // from class: androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1
            private final float density = 1.0f;
            private final float fontScale = 1.0f;

            @Override // androidx.compose.ui.unit.Density
            public float getDensity() {
                return this.density;
            }

            @Override // androidx.compose.ui.unit.FontScaling
            public float getFontScale() {
                return this.fontScale;
            }
        };
        UnitDensity = r22;
        EmptyLayoutInfo = new PagerMeasureResult(kx2.b, 0, 0, 0, Orientation.Horizontal, 0, 0, false, 0, null, null, 0.0f, 0, false, SnapPosition.Start.INSTANCE, new MeasureResult() { // from class: androidx.compose.foundation.pager.PagerStateKt$EmptyLayoutInfo$1
            private final Map<AlignmentLine, Integer> alignmentLines = mx2.b;
            private final int height;
            private final int width;

            public static /* synthetic */ void getAlignmentLines$annotations() {
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Map<AlignmentLine, Integer> getAlignmentLines() {
                return this.alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getHeight() {
                return this.height;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getWidth() {
                return this.width;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
            }
        }, false, null, null, z22.a(gx2.b), r22, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), 393216, null);
    }

    public static final PagerState PagerState(int i, float f, ll3<Integer> ll3Var) {
        return new DefaultPagerState(i, f, ll3Var);
    }

    public static /* synthetic */ PagerState PagerState$default(int i, float f, ll3 ll3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        return PagerState(i, f, ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object animateScrollToPage(LazyLayoutScrollScope lazyLayoutScrollScope, int i, float f, AnimationSpec<Float> animationSpec, bm3<? super ScrollScope, ? super Integer, j59> bm3Var, e02<? super j59> e02Var) {
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
        Object objAnimate$default = SuspendAnimationKt.animate$default(0.0f, LazyLayoutScrollScope.calculateDistanceTo$default(lazyLayoutScrollScope, i, 0, 2, null) + f, 0.0f, animationSpec, new ve(new o07(), lazyLayoutScrollScope), e02Var, 4, null);
        return objAnimate$default == a32.COROUTINE_SUSPENDED ? objAnimate$default : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateScrollToPage$lambda$2(o07 o07Var, LazyLayoutScrollScope lazyLayoutScrollScope, float f, float f2) {
        o07Var.b += lazyLayoutScrollScope.scrollBy(f - o07Var.b);
        return j59.a;
    }

    public static final Object animateToNextPage(PagerState pagerState, e02<? super j59> e02Var) {
        Object objAnimateScrollToPage$default;
        return (pagerState.getCurrentPage() + 1 >= pagerState.getPageCount() || (objAnimateScrollToPage$default = PagerState.animateScrollToPage$default(pagerState, pagerState.getCurrentPage() + 1, 0.0f, null, e02Var, 6, null)) != a32.COROUTINE_SUSPENDED) ? j59.a : objAnimateScrollToPage$default;
    }

    public static final Object animateToPreviousPage(PagerState pagerState, e02<? super j59> e02Var) {
        Object objAnimateScrollToPage$default;
        return (pagerState.getCurrentPage() + (-1) < 0 || (objAnimateScrollToPage$default = PagerState.animateScrollToPage$default(pagerState, pagerState.getCurrentPage() + (-1), 0.0f, null, e02Var, 6, null)) != a32.COROUTINE_SUSPENDED) ? j59.a : objAnimateScrollToPage$default;
    }

    public static final long calculateNewMaxScrollOffset(PagerLayoutInfo pagerLayoutInfo, int i) {
        long pageSize = (((((long) i) * ((long) (pagerLayoutInfo.getPageSize() + pagerLayoutInfo.getPageSpacing()))) + ((long) pagerLayoutInfo.getBeforeContentPadding())) + ((long) pagerLayoutInfo.getAfterContentPadding())) - ((long) pagerLayoutInfo.getPageSpacing());
        int iMo2300getViewportSizeYbymL2g = (int) (pagerLayoutInfo.getOrientation() == Orientation.Horizontal ? pagerLayoutInfo.mo2300getViewportSizeYbymL2g() >> 32 : pagerLayoutInfo.mo2300getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        long jF = pageSize - ((long) (iMo2300getViewportSizeYbymL2g - kx6.f(pagerLayoutInfo.getSnapPosition().position(iMo2300getViewportSizeYbymL2g, pagerLayoutInfo.getPageSize(), pagerLayoutInfo.getBeforeContentPadding(), pagerLayoutInfo.getAfterContentPadding(), i - 1, i), 0, iMo2300getViewportSizeYbymL2g)));
        if (jF < 0) {
            return 0L;
        }
        return jF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long calculateNewMinScrollOffset(PagerMeasureResult pagerMeasureResult, int i) {
        int iMo2300getViewportSizeYbymL2g = (int) (pagerMeasureResult.getOrientation() == Orientation.Horizontal ? pagerMeasureResult.mo2300getViewportSizeYbymL2g() >> 32 : pagerMeasureResult.mo2300getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return kx6.f(pagerMeasureResult.getSnapPosition().position(iMo2300getViewportSizeYbymL2g, pagerMeasureResult.getPageSize(), pagerMeasureResult.getBeforeContentPadding(), pagerMeasureResult.getAfterContentPadding(), 0, i), 0, iMo2300getViewportSizeYbymL2g);
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    public static final float getDefaultPositionThreshold() {
        return DefaultPositionThreshold;
    }

    public static final PagerMeasureResult getEmptyLayoutInfo() {
        return EmptyLayoutInfo;
    }

    public static final PagerState rememberPagerState(final int i, final float f, final ll3<Integer> ll3Var, Composer composer, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            f = 0.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1210768637, i2, -1, "androidx.compose.foundation.pager.rememberPagerState (PagerState.kt:93)");
        }
        Object[] objArr = new Object[0];
        Saver<DefaultPagerState, ?> saver = DefaultPagerState.Companion.getSaver();
        boolean z = true;
        boolean z2 = ((((i2 & 14) ^ 6) > 4 && composer.changed(i)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.changed(f)) || (i2 & 48) == 32);
        if ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !composer.changed(ll3Var)) && (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objRememberedValue = composer.rememberedValue();
        if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: i26
                @Override // defpackage.ll3
                public final Object invoke() {
                    return PagerStateKt.rememberPagerState$lambda$0$0(i, f, ll3Var);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        DefaultPagerState defaultPagerState = (DefaultPagerState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composer, 0);
        defaultPagerState.getPageCountState().setValue(ll3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultPagerState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DefaultPagerState rememberPagerState$lambda$0$0(int i, float f, ll3 ll3Var) {
        return new DefaultPagerState(i, f, ll3Var);
    }
}
