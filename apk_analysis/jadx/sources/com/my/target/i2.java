package com.my.target;

import defpackage.gga;
import defpackage.i7a;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class i2 implements b2 {

    public static class a implements b2.a {
        @Override // com.my.target.b2.a
        public final gga a() throws Exception {
            throw new Exception("Cannot read data from empty iterator");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // com.my.target.b2.a
        public final boolean moveToNext() {
            return false;
        }
    }

    @Override // com.my.target.b2
    public final b2.a a() {
        return new a();
    }

    @Override // com.my.target.b2
    public final Set b() {
        return Collections.EMPTY_SET;
    }

    @Override // com.my.target.b2
    public final void b(long j) {
    }

    @Override // com.my.target.b2
    public final void a(String str, String str2, long j, long j2, i7a i7aVar, boolean z) {
    }

    @Override // com.my.target.b2
    public final void a(long j) {
    }
}
