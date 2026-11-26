package com.google.protobuf;

import defpackage.o2;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class q {
    public static final Charset a;
    public static final byte[] b;

    public interface a extends j<Boolean> {
    }

    public interface b extends j<Double> {
    }

    public interface c {
        int getNumber();
    }

    public interface d<T extends c> {
        T findValueByNumber(int i);
    }

    public interface e {
        boolean isInRange(int i);
    }

    public interface f extends j<Float> {
    }

    public interface g extends j<Integer> {
    }

    public static class h<F, T> extends AbstractList<T> {
        public final List<F> b;
        public final a<F, T> c;

        public interface a<F, T> {
            T convert(F f);
        }

        public h(List<F> list, a<F, T> aVar) {
            this.b = list;
            this.c = aVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public final T get(int i) {
            return this.c.convert(this.b.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.b.size();
        }
    }

    public interface i extends j<Long> {
    }

    public interface j<E> extends List<E>, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        j<E> mutableCopyWithCapacity(int i);
    }

    static {
        Charset.forName("US-ASCII");
        a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        com.google.protobuf.f.f(bArr, 0, 0, false);
    }

    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        o2.d(str);
    }

    public static int b(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }
}
