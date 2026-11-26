package defpackage;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class jt extends Number {
    public transient AtomicLong b;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.b = new AtomicLong();
        this.b.set(Double.doubleToRawLongBits(objectInputStream.readDouble()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(a());
    }

    public final double a() {
        return Double.longBitsToDouble(this.b.get());
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return a();
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) a();
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) a();
    }

    @Override // java.lang.Number
    public final long longValue() {
        return (long) a();
    }

    public final String toString() {
        return Double.toString(a());
    }
}
