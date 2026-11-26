package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.af4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.w21;
import defpackage.x21;
import defpackage.zr6;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridItemProviderKt {
    public static final ll3<LazyGridItemProvider> rememberLazyGridItemProviderLambda(LazyGridState lazyGridState, nl3<? super LazyGridScope, j59> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1898306282, i, -1, "androidx.compose.foundation.lazy.grid.rememberLazyGridItemProviderLambda (LazyGridItemProvider.kt:40)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, (i >> 3) & 14);
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(lazyGridState)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            int i2 = 2;
            final State stateDerivedStateOf = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new x21(i2, SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new w21(stateRememberUpdatedState, i2)), lazyGridState));
            objRememberedValue = new zr6(stateDerivedStateOf) { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$1
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
    public static final LazyGridIntervalContent rememberLazyGridItemProviderLambda$lambda$0$0(State state) {
        return new LazyGridIntervalContent((nl3) state.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyGridItemProviderImpl rememberLazyGridItemProviderLambda$lambda$0$1(State state, LazyGridState lazyGridState) {
        LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) state.getValue();
        return new LazyGridItemProviderImpl(lazyGridState, lazyGridIntervalContent, new NearestRangeKeyIndexMap(lazyGridState.getNearestRange$foundation(), lazyGridIntervalContent));
    }
}
