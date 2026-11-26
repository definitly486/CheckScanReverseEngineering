package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.LazyListItemProviderKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.af4;
import defpackage.ds1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.zr6;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListItemProviderKt {
    public static final ll3<LazyListItemProvider> rememberLazyListItemProviderLambda(final LazyListState lazyListState, nl3<? super LazyListScope, j59> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-343736148, i, -1, "androidx.compose.foundation.lazy.rememberLazyListItemProviderLambda (LazyListItemProvider.kt:41)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, (i >> 3) & 14);
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(lazyListState)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            final LazyItemScopeImpl lazyItemScopeImpl = new LazyItemScopeImpl();
            final State stateDerivedStateOf = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new ds1(stateRememberUpdatedState, 3));
            final State stateDerivedStateOf2 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new ll3() { // from class: hn4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return LazyListItemProviderKt.rememberLazyListItemProviderLambda$lambda$0$1(stateDerivedStateOf, lazyListState, lazyItemScopeImpl);
                }
            });
            objRememberedValue = new zr6(stateDerivedStateOf2) { // from class: androidx.compose.foundation.lazy.LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1
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
    public static final LazyListIntervalContent rememberLazyListItemProviderLambda$lambda$0$0(State state) {
        return new LazyListIntervalContent((nl3) state.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListItemProviderImpl rememberLazyListItemProviderLambda$lambda$0$1(State state, LazyListState lazyListState, LazyItemScopeImpl lazyItemScopeImpl) {
        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) state.getValue();
        return new LazyListItemProviderImpl(lazyListState, lazyListIntervalContent, lazyItemScopeImpl, new NearestRangeKeyIndexMap(lazyListState.getNearestRange$foundation(), lazyListIntervalContent));
    }
}
