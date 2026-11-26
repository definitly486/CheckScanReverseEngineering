package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import defpackage.e02;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ReplaceFileCorruptionHandler<T> implements CorruptionHandler<T> {
    private final nl3<CorruptionException, T> produceNewData;

    /* JADX WARN: Multi-variable type inference failed */
    public ReplaceFileCorruptionHandler(nl3<? super CorruptionException, ? extends T> nl3Var) {
        nl3Var.getClass();
        this.produceNewData = nl3Var;
    }

    @Override // androidx.datastore.core.CorruptionHandler
    public Object handleCorruption(CorruptionException corruptionException, e02<? super T> e02Var) {
        return this.produceNewData.invoke(corruptionException);
    }
}
