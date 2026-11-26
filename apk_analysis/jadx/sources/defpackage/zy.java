package defpackage;

import com.google.firebase.encoders.annotations.Encodable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zy extends av4 {
    public final long a;
    public final long b;
    public final oy c;
    public final Integer d;
    public final String e;
    public final ArrayList f;
    public final vu6 g;

    public zy(long j, long j2, oy oyVar, Integer num, String str, ArrayList arrayList, vu6 vu6Var) {
        this.a = j;
        this.b = j2;
        this.c = oyVar;
        this.d = num;
        this.e = str;
        this.f = arrayList;
        this.g = vu6Var;
    }

    @Override // defpackage.av4
    public final wl1 a() {
        return this.c;
    }

    @Override // defpackage.av4
    @Encodable.Field(name = "logEvent")
    public final List<tu4> b() {
        return this.f;
    }

    @Override // defpackage.av4
    public final Integer c() {
        return this.d;
    }

    @Override // defpackage.av4
    public final String d() {
        return this.e;
    }

    @Override // defpackage.av4
    public final vu6 e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof av4)) {
            return false;
        }
        av4 av4Var = (av4) obj;
        if (this.a != av4Var.f() || this.b != av4Var.g()) {
            return false;
        }
        oy oyVar = this.c;
        if (oyVar == null) {
            if (av4Var.a() != null) {
                return false;
            }
        } else if (!oyVar.equals(av4Var.a())) {
            return false;
        }
        Integer num = this.d;
        if (num == null) {
            if (av4Var.c() != null) {
                return false;
            }
        } else if (!num.equals(av4Var.c())) {
            return false;
        }
        String str = this.e;
        if (str == null) {
            if (av4Var.d() != null) {
                return false;
            }
        } else if (!str.equals(av4Var.d())) {
            return false;
        }
        ArrayList arrayList = this.f;
        if (arrayList == null) {
            if (av4Var.b() != null) {
                return false;
            }
        } else if (!arrayList.equals(av4Var.b())) {
            return false;
        }
        vu6 vu6Var = this.g;
        if (vu6Var == null) {
            return av4Var.e() == null;
        }
        return vu6Var.equals(av4Var.e());
    }

    @Override // defpackage.av4
    public final long f() {
        return this.a;
    }

    @Override // defpackage.av4
    public final long g() {
        return this.b;
    }

    public final int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        oy oyVar = this.c;
        int iHashCode = (i ^ (oyVar == null ? 0 : oyVar.hashCode())) * 1000003;
        Integer num = this.d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        ArrayList arrayList = this.f;
        int iHashCode4 = (iHashCode3 ^ (arrayList == null ? 0 : arrayList.hashCode())) * 1000003;
        vu6 vu6Var = this.g;
        return iHashCode4 ^ (vu6Var != null ? vu6Var.hashCode() : 0);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.a + ", requestUptimeMs=" + this.b + ", clientInfo=" + this.c + ", logSource=" + this.d + ", logSourceName=" + this.e + ", logEvents=" + this.f + ", qosTier=" + this.g + "}";
    }
}
