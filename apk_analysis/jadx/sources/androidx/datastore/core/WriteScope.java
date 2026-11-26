package androidx.datastore.core;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface WriteScope<T> extends ReadScope<T> {
    Object writeData(T t, e02<? super j59> e02Var);
}
