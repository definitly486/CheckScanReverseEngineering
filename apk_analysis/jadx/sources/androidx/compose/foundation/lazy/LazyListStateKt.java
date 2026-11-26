package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.DensityKt;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.gx2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.z22;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListStateKt {
    private static final LazyListMeasureResult EmptyLazyListMeasureResult;
    private static final int NumberOfItemsToTeleport = 100;

    static {
        MeasureResult measureResult = new MeasureResult() { // from class: androidx.compose.foundation.lazy.LazyListStateKt$EmptyLazyListMeasureResult$1
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
        };
        Orientation orientation = Orientation.Vertical;
        int i = 0;
        boolean z = false;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z2 = false;
        EmptyLazyListMeasureResult = new LazyListMeasureResult(null, i, z, f, measureResult, f2, z2, z22.a(gx2.b), DensityKt.Density$default(1.0f, 0.0f, 2, null), ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), kx2.b, 0, 0, 0, false, orientation, 0, 0, null);
    }

    public static final LazyListState rememberLazyListState(final int i, final int i2, final LazyListPrefetchStrategy lazyListPrefetchStrategy, Composer composer, int i3, int i4) {
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        boolean z = true;
        if ((i4 & 4) != 0) {
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = LazyListPrefetchStrategyKt.LazyListPrefetchStrategy$default(0, 1, null);
                composer.updateRememberedValue(objRememberedValue);
            }
            lazyListPrefetchStrategy = (LazyListPrefetchStrategy) objRememberedValue;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1287535208, i3, -1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:102)");
        }
        Object[] objArr = {lazyListPrefetchStrategy};
        Saver<LazyListState, ?> saverSaver$foundation = LazyListState.Companion.saver$foundation(lazyListPrefetchStrategy);
        boolean z2 = ((((i3 & 14) ^ 6) > 4 && composer.changed(i)) || (i3 & 6) == 4) | ((((i3 & 112) ^ 48) > 32 && composer.changed(i2)) || (i3 & 48) == 32);
        if ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !composer.changedInstance(lazyListPrefetchStrategy)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objRememberedValue2 = composer.rememberedValue();
        if (z3 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new ll3() { // from class: un4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return LazyListStateKt.rememberLazyListState$lambda$2$0(i, i2, lazyListPrefetchStrategy);
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saverSaver$foundation, (ll3) objRememberedValue2, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return lazyListState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListState rememberLazyListState$lambda$0$0(int i, int i2) {
        return new LazyListState(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListState rememberLazyListState$lambda$2$0(int i, int i2, LazyListPrefetchStrategy lazyListPrefetchStrategy) {
        return new LazyListState(i, i2, lazyListPrefetchStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListState rememberLazyListState$lambda$3$0(LazyLayoutCacheWindow lazyLayoutCacheWindow, int i, int i2) {
        return new LazyListState(lazyLayoutCacheWindow, i, i2);
    }

    public static final LazyListState rememberLazyListState(final LazyLayoutCacheWindow lazyLayoutCacheWindow, final int i, final int i2, Composer composer, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1588550476, i3, -1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:130)");
        }
        Object[] objArr = {lazyLayoutCacheWindow};
        Saver<LazyListState, ?> saverSaver$foundation = LazyListState.Companion.saver$foundation(lazyLayoutCacheWindow);
        boolean z = true;
        boolean z2 = ((((i3 & 14) ^ 6) > 4 && composer.changed(lazyLayoutCacheWindow)) || (i3 & 6) == 4) | ((((i3 & 112) ^ 48) > 32 && composer.changed(i)) || (i3 & 48) == 32);
        if ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !composer.changed(i2)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objRememberedValue = composer.rememberedValue();
        if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: vn4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return LazyListStateKt.rememberLazyListState$lambda$3$0(lazyLayoutCacheWindow, i, i2);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saverSaver$foundation, (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return lazyListState;
    }

    public static final LazyListState rememberLazyListState(final int i, final int i2, Composer composer, int i3, int i4) {
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1470655220, i3, -1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:78)");
        }
        Object[] objArr = new Object[0];
        Saver<LazyListState, ?> saver = LazyListState.Companion.getSaver();
        boolean z = true;
        boolean z2 = (((i3 & 14) ^ 6) > 4 && composer.changed(i)) || (i3 & 6) == 4;
        if ((((i3 & 112) ^ 48) <= 32 || !composer.changed(i2)) && (i3 & 48) != 32) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objRememberedValue = composer.rememberedValue();
        if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: tn4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return LazyListStateKt.rememberLazyListState$lambda$0$0(i, i2);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return lazyListState;
    }
}
