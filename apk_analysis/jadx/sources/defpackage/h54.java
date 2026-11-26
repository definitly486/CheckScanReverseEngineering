package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class h54<T> implements cl4<T>, Serializable {
    public final T b;

    public h54(T t) {
        this.b = t;
    }

    @Override // defpackage.cl4
    public final T getValue() {
        return this.b;
    }

    @Override // defpackage.cl4
    public final boolean isInitialized() {
        return true;
    }

    public final String toString() {
        return String.valueOf(this.b);
    }
}
