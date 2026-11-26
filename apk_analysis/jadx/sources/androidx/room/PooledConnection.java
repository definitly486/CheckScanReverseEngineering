package androidx.room;

import androidx.sqlite.SQLiteStatement;
import defpackage.e02;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public interface PooledConnection {
    <R> Object usePrepared(String str, nl3<? super SQLiteStatement, ? extends R> nl3Var, e02<? super R> e02Var);
}
