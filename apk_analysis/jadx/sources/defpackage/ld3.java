package defpackage;

import kotlinx.coroutines.flow.internal.ChildCancelledException;

/* JADX INFO: loaded from: classes5.dex */
public final class ld3<T> extends af7<T> {
    @Override // defpackage.sb4
    public final boolean B(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return w(th);
    }
}
