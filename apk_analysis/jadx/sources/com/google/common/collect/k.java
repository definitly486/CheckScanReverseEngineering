package com.google.common.collect;

import defpackage.jh;
import defpackage.lr4;
import defpackage.z24;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class k<K, V> extends z24<K, V> implements lr4<K, V> {
    public transient k<?, ?> h;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException(jh.b(i, "Invalid key count "));
        }
        l.a aVarA = l.a();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            int i4 = objectInputStream.readInt();
            if (i4 <= 0) {
                throw new InvalidObjectException(jh.b(i4, "Invalid value count "));
            }
            j.b bVar = j.c;
            j.a aVar = new j.a();
            for (int i5 = 0; i5 < i4; i5++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                aVar.c(object2);
            }
            aVarA.b(object, aVar.g());
            i2 += i4;
        }
        try {
            this.h = new k<>(aVarA.a(true), i2);
        } catch (IllegalArgumentException e) {
            throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
        }
    }

    private Object readResolve() {
        k<?, ?> kVar = this.h;
        Objects.requireNonNull(kVar);
        return kVar;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        b0.a(this, objectOutputStream);
    }

    @Override // defpackage.eg5
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final j<V> get(K k) {
        j<V> jVar = (j) this.f.get(k);
        if (jVar != null) {
            return jVar;
        }
        j.b bVar = j.c;
        return w.f;
    }
}
