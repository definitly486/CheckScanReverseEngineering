package com.google.android.gms.internal.measurement;

import defpackage.cg;
import java.nio.ByteBuffer;
import java.util.AbstractList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaed {
    public static final byte[] zza;

    public class zza<T> extends AbstractList<T> {
        public final zzaeb b;
        public final zzaec<T> c;

        public zza(zzaeb zzaebVar, zzaec<T> zzaecVar) {
            this.b = zzaebVar;
            this.c = zzaecVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return (T) this.c.zza(this.b.zzf(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.b.size();
        }
    }

    static {
        byte[] bArr = new byte[0];
        zza = bArr;
        ByteBuffer.wrap(bArr);
        int i = 0 + 0;
        try {
            if (i < 0) {
                throw new zzaeh("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            }
            if (i > Integer.MAX_VALUE) {
                throw new zzaeh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        } catch (zzaeh e) {
            cg.h(e);
        }
    }

    public static int a(int i, int i2, int i3, byte[] bArr) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }
}
