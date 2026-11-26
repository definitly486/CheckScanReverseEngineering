package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public interface f0<T> {
    void a(T t, n0 n0Var);

    int b(a aVar);

    void c(T t, byte[] bArr, int i, int i2, d.b bVar);

    int d(o oVar);

    void e(Object obj, g gVar, j jVar);

    boolean f(o oVar, o oVar2);

    boolean isInitialized(T t);

    void makeImmutable(T t);

    void mergeFrom(T t, T t2);

    T newInstance();
}
