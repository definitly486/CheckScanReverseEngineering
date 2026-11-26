package androidx.datastore.core;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface DataMigration<T> {
    Object cleanUp(e02<? super j59> e02Var);

    Object migrate(T t, e02<? super T> e02Var);

    Object shouldMigrate(T t, e02<? super Boolean> e02Var);
}
