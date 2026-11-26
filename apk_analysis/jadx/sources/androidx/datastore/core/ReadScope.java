package androidx.datastore.core;

import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public interface ReadScope<T> extends Closeable {
    Object readData(e02<? super T> e02Var);
}
