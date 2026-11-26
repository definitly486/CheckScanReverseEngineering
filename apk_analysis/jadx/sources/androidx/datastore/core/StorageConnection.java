package androidx.datastore.core;

import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface StorageConnection<T> extends Closeable {
    InterProcessCoordinator getCoordinator();

    <R> Object readScope(dm3<? super ReadScope<T>, ? super Boolean, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super R> e02Var);

    Object writeScope(bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var);
}
