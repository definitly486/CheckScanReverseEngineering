package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.og, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1155og {
    public final String a;
    public final long b;
    public final long c;
    public final int d;

    public C1155og(byte[] bArr) {
        C1181pg c1181pgA = C1181pg.a(bArr);
        this.a = c1181pgA.a;
        this.b = c1181pgA.c;
        this.c = c1181pgA.b;
        this.d = a(c1181pgA.d);
    }

    public final byte[] a() {
        C1181pg c1181pg = new C1181pg();
        c1181pg.a = this.a;
        c1181pg.c = this.b;
        c1181pg.b = this.c;
        int iA = W7.a(this.d);
        int i = 1;
        if (iA != 1) {
            i = 2;
            if (iA != 2) {
                i = 3;
                if (iA != 3) {
                    i = 0;
                }
            }
        }
        c1181pg.d = i;
        return MessageNano.toByteArray(c1181pg);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1155og.class == obj.getClass()) {
            C1155og c1155og = (C1155og) obj;
            if (this.b == c1155og.b && this.c == c1155og.c && this.a.equals(c1155og.a) && this.d == c1155og.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        long j = this.b;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.c;
        return W7.a(this.d) + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public final String toString() {
        return "ReferrerInfo{installReferrer='" + this.a + "', referrerClickTimestampSeconds=" + this.b + ", installBeginTimestampSeconds=" + this.c + ", source=" + AbstractC1129ng.b(this.d) + '}';
    }

    public C1155og(String str, long j, long j2, int i) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = i;
    }

    public static int a(int i) {
        if (i != 1) {
            if (i != 2) {
                return i != 3 ? 1 : 4;
            }
            return 3;
        }
        return 2;
    }
}
