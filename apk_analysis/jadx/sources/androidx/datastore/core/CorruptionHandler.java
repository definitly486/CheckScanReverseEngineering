package androidx.datastore.core;

import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public interface CorruptionHandler<T> {
    Object handleCorruption(CorruptionException corruptionException, e02<? super T> e02Var);
}
