package androidx.compose.runtime;

import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class MovableContent<P> {
    public static final int $stable = 0;
    private final dm3<P, Composer, Integer, j59> content;

    /* JADX WARN: Multi-variable type inference failed */
    public MovableContent(dm3<? super P, ? super Composer, ? super Integer, j59> dm3Var) {
        this.content = dm3Var;
    }

    public final dm3<P, Composer, Integer, j59> getContent() {
        return this.content;
    }
}
