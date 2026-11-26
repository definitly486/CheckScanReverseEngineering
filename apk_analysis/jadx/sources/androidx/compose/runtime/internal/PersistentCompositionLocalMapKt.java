package androidx.compose.runtime.internal;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ValueHolder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import defpackage.b36;
import defpackage.n05;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentCompositionLocalMapKt {
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    public static final PersistentCompositionLocalMap persistentCompositionLocalHashMapOf(b36<? extends CompositionLocal<Object>, ? extends ValueHolder<Object>>... b36VarArr) {
        PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builderBuilder2 = PersistentCompositionLocalHashMap.Companion.getEmpty().builder2();
        n05.j(builderBuilder2, b36VarArr);
        return builderBuilder2.build2();
    }

    public static final PersistentCompositionLocalHashMap persistentCompositionLocalHashMapOf() {
        return PersistentCompositionLocalHashMap.Companion.getEmpty();
    }
}
