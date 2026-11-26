package com.my.target;

import defpackage.gga;
import defpackage.i7a;
import java.io.Closeable;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface b2 {

    public interface a extends Closeable {
        gga a();

        boolean moveToNext();
    }

    a a();

    void a(long j);

    void a(String str, String str2, long j, long j2, i7a i7aVar, boolean z);

    Set b();

    void b(long j);
}
