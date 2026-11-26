package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class f79<T> implements cl4<T>, Serializable {
    public ll3<? extends T> b;
    public Object c;

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return new h54(getValue());
    }

    @Override // defpackage.cl4
    public final T getValue() {
        T t = (T) this.c;
        if (t != sm1.d) {
            return t;
        }
        ll3<? extends T> ll3Var = this.b;
        ll3Var.getClass();
        T tInvoke = ll3Var.invoke();
        this.c = tInvoke;
        this.b = null;
        return tInvoke;
    }

    @Override // defpackage.cl4
    public final boolean isInitialized() {
        return this.c != sm1.d;
    }

    public final String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
