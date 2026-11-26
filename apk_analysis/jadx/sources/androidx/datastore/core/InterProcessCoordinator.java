package androidx.datastore.core;

import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface InterProcessCoordinator {
    hd3<j59> getUpdateNotifications();

    Object getVersion(e02<? super Integer> e02Var);

    Object incrementAndGetVersion(e02<? super Integer> e02Var);

    <T> Object lock(nl3<? super e02<? super T>, ? extends Object> nl3Var, e02<? super T> e02Var);

    <T> Object tryLock(bm3<? super Boolean, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var);
}
