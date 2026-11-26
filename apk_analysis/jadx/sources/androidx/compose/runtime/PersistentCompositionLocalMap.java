package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;

/* JADX INFO: loaded from: classes2.dex */
public interface PersistentCompositionLocalMap extends PersistentMap<CompositionLocal<Object>, ValueHolder<Object>>, CompositionLocalMap, CompositionLocalAccessorScope {

    public interface Builder extends PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> {
        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
        PersistentMap<CompositionLocal<Object>, ValueHolder<Object>> build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder();

    @Override // androidx.compose.runtime.CompositionLocalAccessorScope
    default <T> T getCurrentValue(CompositionLocal<T> compositionLocal) {
        return (T) CompositionLocalMapKt.read(this, compositionLocal);
    }

    PersistentCompositionLocalMap putValue(CompositionLocal<Object> compositionLocal, ValueHolder<Object> valueHolder);
}
