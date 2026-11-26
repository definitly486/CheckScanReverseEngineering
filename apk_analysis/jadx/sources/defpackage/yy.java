package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class yy extends tu4 {
    public final long a;
    public final Integer b;
    public final gr1 c;
    public final long d;
    public final byte[] e;
    public final String f;
    public final long g;
    public final hm5 h;
    public final p33 i;

    public static final class a extends tu4.a {
        public Long a;
        public Integer b;
        public py c;
        public Long d;
        public byte[] e;
        public String f;
        public Long g;
        public bz h;
        public uy i;
    }

    public yy(long j, Integer num, gr1 gr1Var, long j2, byte[] bArr, String str, long j3, hm5 hm5Var, p33 p33Var) {
        this.a = j;
        this.b = num;
        this.c = gr1Var;
        this.d = j2;
        this.e = bArr;
        this.f = str;
        this.g = j3;
        this.h = hm5Var;
        this.i = p33Var;
    }

    @Override // defpackage.tu4
    public final gr1 a() {
        return this.c;
    }

    @Override // defpackage.tu4
    public final Integer b() {
        return this.b;
    }

    @Override // defpackage.tu4
    public final long c() {
        return this.a;
    }

    @Override // defpackage.tu4
    public final long d() {
        return this.d;
    }

    @Override // defpackage.tu4
    public final p33 e() {
        return this.i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tu4)) {
            return false;
        }
        tu4 tu4Var = (tu4) obj;
        if (this.a != tu4Var.c()) {
            return false;
        }
        Integer num = this.b;
        if (num == null) {
            if (tu4Var.b() != null) {
                return false;
            }
        } else if (!num.equals(tu4Var.b())) {
            return false;
        }
        gr1 gr1Var = this.c;
        if (gr1Var == null) {
            if (tu4Var.a() != null) {
                return false;
            }
        } else if (!gr1Var.equals(tu4Var.a())) {
            return false;
        }
        if (this.d != tu4Var.d()) {
            return false;
        }
        if (!Arrays.equals(this.e, tu4Var instanceof yy ? ((yy) tu4Var).e : tu4Var.g())) {
            return false;
        }
        String str = this.f;
        if (str == null) {
            if (tu4Var.h() != null) {
                return false;
            }
        } else if (!str.equals(tu4Var.h())) {
            return false;
        }
        if (this.g != tu4Var.i()) {
            return false;
        }
        hm5 hm5Var = this.h;
        if (hm5Var == null) {
            if (tu4Var.f() != null) {
                return false;
            }
        } else if (!hm5Var.equals(tu4Var.f())) {
            return false;
        }
        p33 p33Var = this.i;
        if (p33Var == null) {
            return tu4Var.e() == null;
        }
        return p33Var.equals(tu4Var.e());
    }

    @Override // defpackage.tu4
    public final hm5 f() {
        return this.h;
    }

    @Override // defpackage.tu4
    public final byte[] g() {
        return this.e;
    }

    @Override // defpackage.tu4
    public final String h() {
        return this.f;
    }

    public final int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode = (i ^ (num == null ? 0 : num.hashCode())) * 1000003;
        gr1 gr1Var = this.c;
        int iHashCode2 = (iHashCode ^ (gr1Var == null ? 0 : gr1Var.hashCode())) * 1000003;
        long j2 = this.d;
        int iHashCode3 = (((iHashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.e)) * 1000003;
        String str = this.f;
        int iHashCode4 = (iHashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.g;
        int i2 = (iHashCode4 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        hm5 hm5Var = this.h;
        int iHashCode5 = (i2 ^ (hm5Var == null ? 0 : hm5Var.hashCode())) * 1000003;
        p33 p33Var = this.i;
        return iHashCode5 ^ (p33Var != null ? p33Var.hashCode() : 0);
    }

    @Override // defpackage.tu4
    public final long i() {
        return this.g;
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.a + ", eventCode=" + this.b + ", complianceData=" + this.c + ", eventUptimeMs=" + this.d + ", sourceExtension=" + Arrays.toString(this.e) + ", sourceExtensionJsonProto3=" + this.f + ", timezoneOffsetSeconds=" + this.g + ", networkConnectionInfo=" + this.h + ", experimentIds=" + this.i + "}";
    }
}
