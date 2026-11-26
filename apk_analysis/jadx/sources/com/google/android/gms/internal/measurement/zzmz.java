package com.google.android.gms.internal.measurement;

import com.google.common.io.BaseEncoding;
import defpackage.dg;
import defpackage.kd8;
import defpackage.ld8;
import java.io.File;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmz {
    public final BaseEncoding.c a = BaseEncoding.b;
    public final kd8 b;
    public final kd8 c;

    public zzmz(final zzacr zzacrVar, final String str, String str2) {
        this.b = ld8.a(new kd8() { // from class: g6c
            @Override // defpackage.kd8
            /* JADX INFO: renamed from: get */
            public final /* synthetic */ Object get2() {
                return this.b.a.c(zzacrVar.zzm());
            }
        });
        this.c = ld8.a(new kd8() { // from class: d6c
            @Override // defpackage.kd8
            /* JADX INFO: renamed from: get */
            public final Object get2() {
                int i = yu3.a;
                int i2 = mg5.p;
                mg5.a aVar = new mg5.a(0, (byte) 0);
                aVar.c = 0L;
                aVar.d = 0L;
                aVar.e = 0;
                aVar.n(str.getBytes());
                ByteBuffer byteBuffer = (ByteBuffer) aVar.b;
                byteBuffer.put((byte) 0);
                if (byteBuffer.remaining() < 8) {
                    aVar.k();
                }
                aVar.n("".getBytes());
                return this.b.a.c((byte[]) aVar.j().c.clone());
            }
        });
    }

    public final File zza() {
        String str = (String) this.b.get2();
        String str2 = (String) this.c.get2();
        return new File(dg.c(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length() + 3), str, "/", str2, ".pb"));
    }
}
