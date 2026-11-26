package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.af4;
import defpackage.cp;
import defpackage.ho4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.zr6;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridItemProviderKt {
    public static final ll3<LazyStaggeredGridItemProvider> rememberStaggeredGridItemProviderLambda(LazyStaggeredGridState lazyStaggeredGridState, nl3<? super LazyStaggeredGridScope, j59> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(690901732, i, -1, "androidx.compose.foundation.lazy.staggeredgrid.rememberStaggeredGridItemProviderLambda (LazyStaggeredGridItemProvider.kt:37)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, (i >> 3) & 14);
        int i2 = 0;
        int i3 = 1;
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(lazyStaggeredGridState)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            final State stateDerivedStateOf = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new ho4(i2, SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new cp(stateRememberUpdatedState, i3)), lazyStaggeredGridState));
            objRememberedValue = new zr6(stateDerivedStateOf) { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$1
                @Override // defpackage.zr6, defpackage.af4
                public Object get() {
                    return ((State) this.receiver).getValue();
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        af4 af4Var = (af4) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return af4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyStaggeredGridIntervalContent rememberStaggeredGridItemProviderLambda$lambda$0$0(State state) {
        return new LazyStaggeredGridIntervalContent((nl3) state.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyStaggeredGridItemProviderImpl rememberStaggeredGridItemProviderLambda$lambda$0$1(State state, LazyStaggeredGridState lazyStaggeredGridState) {
        LazyStaggeredGridIntervalContent lazyStaggeredGridIntervalContent = (LazyStaggeredGridIntervalContent) state.getValue();
        return new LazyStaggeredGridItemProviderImpl(lazyStaggeredGridState, lazyStaggeredGridIntervalContent, new NearestRangeKeyIndexMap(lazyStaggeredGridState.getNearestRange$foundation(), lazyStaggeredGridIntervalContent));
    }
}
