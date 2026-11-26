package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public final class NoOpCorruptionHandler<T> implements CorruptionHandler<T> {
    @Override // androidx.datastore.core.CorruptionHandler
    public Object handleCorruption(CorruptionException corruptionException, e02<? super T> e02Var) throws CorruptionException {
        throw corruptionException;
    }
}
