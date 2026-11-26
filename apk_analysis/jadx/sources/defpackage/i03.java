package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public final class i03<T extends Enum<T>> extends u0<T> implements g03<T>, RandomAccess, Serializable {
    public final T[] c;

    public i03(T[] tArr) {
        tArr.getClass();
        this.c = tArr;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return new j03(this.c);
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r3 = (Enum) obj;
        return ((Enum) yr.O(r3.ordinal(), this.c)) == r3;
    }

    @Override // defpackage.u0, java.util.List
    public final Object get(int i) {
        u0.a aVar = u0.Companion;
        T[] tArr = this.c;
        int length = tArr.length;
        aVar.getClass();
        u0.a.b(i, length);
        return tArr[i];
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.c.length;
    }

    @Override // defpackage.u0, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int iOrdinal = r3.ordinal();
        if (((Enum) yr.O(iOrdinal, this.c)) == r3) {
            return iOrdinal;
        }
        return -1;
    }

    @Override // defpackage.u0, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int iOrdinal = r3.ordinal();
        if (((Enum) yr.O(iOrdinal, this.c)) == r3) {
            return iOrdinal;
        }
        return -1;
    }
}
