package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public abstract class bf0<T> extends AtomicLong implements mw6<T> {
    @Override // defpackage.iz7
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
