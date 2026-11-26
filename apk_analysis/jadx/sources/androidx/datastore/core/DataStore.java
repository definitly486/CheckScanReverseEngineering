package androidx.datastore.core;

import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;

/* JADX INFO: loaded from: classes.dex */
public interface DataStore<T> {
    hd3<T> getData();

    Object updateData(bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var);
}
