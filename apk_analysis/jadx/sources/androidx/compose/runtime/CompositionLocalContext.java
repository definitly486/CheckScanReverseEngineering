package androidx.compose.runtime;

import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalContext {
    public static final int $stable = 0;
    private final PersistentCompositionLocalMap compositionLocals;

    public CompositionLocalContext(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        this.compositionLocals = persistentCompositionLocalMap;
    }

    public boolean equals(Object obj) {
        return (obj instanceof CompositionLocalContext) && aa4.e(((CompositionLocalContext) obj).compositionLocals, this.compositionLocals);
    }

    public final PersistentCompositionLocalMap getCompositionLocals$runtime() {
        return this.compositionLocals;
    }

    public int hashCode() {
        return this.compositionLocals.hashCode();
    }
}
