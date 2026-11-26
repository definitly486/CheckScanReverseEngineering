package defpackage;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class sy extends z03 {
    public final String a;
    public final Integer b;
    public final sx2 c;
    public final long d;
    public final long e;
    public final Map<String, String> f;
    public final Integer g;
    public final String h;
    public final byte[] i;
    public final byte[] j;

    public static final class a extends z03.a {
        public String a;
        public Integer b;
        public sx2 c;
        public Long d;
        public Long e;
        public HashMap f;
        public Integer g;
        public String h;
        public byte[] i;
        public byte[] j;

        public final sy b() {
            String strConcat = this.a == null ? " transportName" : "";
            if (this.c == null) {
                strConcat = strConcat.concat(" encodedPayload");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" eventMillis");
            }
            if (this.e == null) {
                strConcat = strConcat.concat(" uptimeMillis");
            }
            if (this.f == null) {
                strConcat = strConcat.concat(" autoMetadata");
            }
            if (strConcat.isEmpty()) {
                return new sy(this.a, this.b, this.c, this.d.longValue(), this.e.longValue(), this.f, this.g, this.h, this.i, this.j);
            }
            ah.f("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public sy(String str, Integer num, sx2 sx2Var, long j, long j2, HashMap map, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.a = str;
        this.b = num;
        this.c = sx2Var;
        this.d = j;
        this.e = j2;
        this.f = map;
        this.g = num2;
        this.h = str2;
        this.i = bArr;
        this.j = bArr2;
    }

    @Override // defpackage.z03
    public final Map<String, String> b() {
        return this.f;
    }

    @Override // defpackage.z03
    public final Integer c() {
        return this.b;
    }

    @Override // defpackage.z03
    public final sx2 d() {
        return this.c;
    }

    @Override // defpackage.z03
    public final long e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z03)) {
            return false;
        }
        z03 z03Var = (z03) obj;
        if (!this.a.equals(z03Var.k())) {
            return false;
        }
        Integer num = this.b;
        if (num == null) {
            if (z03Var.c() != null) {
                return false;
            }
        } else if (!num.equals(z03Var.c())) {
            return false;
        }
        if (!this.c.equals(z03Var.d()) || this.d != z03Var.e() || this.e != z03Var.l() || !this.f.equals(z03Var.b())) {
            return false;
        }
        Integer num2 = this.g;
        if (num2 == null) {
            if (z03Var.i() != null) {
                return false;
            }
        } else if (!num2.equals(z03Var.i())) {
            return false;
        }
        String str = this.h;
        if (str == null) {
            if (z03Var.j() != null) {
                return false;
            }
        } else if (!str.equals(z03Var.j())) {
            return false;
        }
        boolean z = z03Var instanceof sy;
        if (Arrays.equals(this.i, z ? ((sy) z03Var).i : z03Var.f())) {
            return Arrays.equals(this.j, z ? ((sy) z03Var).j : z03Var.g());
        }
        return false;
    }

    @Override // defpackage.z03
    public final byte[] f() {
        return this.i;
    }

    @Override // defpackage.z03
    public final byte[] g() {
        return this.j;
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        long j = this.d;
        int i = (iHashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.e;
        int iHashCode3 = (((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f.hashCode()) * 1000003;
        Integer num2 = this.g;
        int iHashCode4 = (iHashCode3 ^ (num2 == null ? 0 : num2.hashCode())) * 1000003;
        String str = this.h;
        return Arrays.hashCode(this.j) ^ ((((iHashCode4 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ Arrays.hashCode(this.i)) * 1000003);
    }

    @Override // defpackage.z03
    public final Integer i() {
        return this.g;
    }

    @Override // defpackage.z03
    public final String j() {
        return this.h;
    }

    @Override // defpackage.z03
    public final String k() {
        return this.a;
    }

    @Override // defpackage.z03
    public final long l() {
        return this.e;
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.a + ", code=" + this.b + ", encodedPayload=" + this.c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.e + ", autoMetadata=" + this.f + ", productId=" + this.g + ", pseudonymousId=" + this.h + ", experimentIdsClear=" + Arrays.toString(this.i) + ", experimentIdsEncrypted=" + Arrays.toString(this.j) + "}";
    }
}
