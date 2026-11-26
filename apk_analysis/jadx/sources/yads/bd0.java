package yads;

import android.net.Uri;
import com.google.firebase.perf.FirebasePerformance;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class bd0 {
    public static final /* synthetic */ int k = 0;
    public final Uri a;
    public final long b;
    public final int c;
    public final byte[] d;
    public final Map e;
    public final long f;
    public final long g;
    public final String h;
    public final int i;
    public final Object j;

    static {
        nq2.a("goog.exo.datasource");
    }

    public bd0(Uri uri, long j, int i, byte[] bArr, Map map, long j2, long j3, String str, int i2, Object obj) {
        byte[] bArr2 = null;
        if (j + j2 < 0) {
            defpackage.mi2.b();
            throw null;
        }
        if (j2 < 0) {
            defpackage.mi2.b();
            throw null;
        }
        if (j3 <= 0 && j3 != -1) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = uri;
        this.b = j;
        this.c = i;
        if (bArr != null && bArr.length != 0) {
            bArr2 = bArr;
        }
        this.d = bArr2;
        this.e = Collections.unmodifiableMap(new HashMap(map));
        this.f = j2;
        this.g = j3;
        this.h = str;
        this.i = i2;
        this.j = obj;
    }

    public final bd0 a(long j, long j2) {
        return (j == 0 && this.g == j2) ? this : new bd0(this.a, this.b, this.c, this.d, this.e, this.f + j, j2, this.h, this.i, this.j);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("DataSpec[");
        int i = this.c;
        if (i == 1) {
            str = "GET";
        } else if (i == 2) {
            str = "POST";
        } else {
            if (i != 3) {
                defpackage.ud.g();
                return null;
            }
            str = FirebasePerformance.HttpMethod.HEAD;
        }
        sb.append(str);
        sb.append(" ");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.f);
        sb.append(", ");
        sb.append(this.g);
        sb.append(", ");
        sb.append(this.h);
        sb.append(", ");
        return defpackage.l2.e(sb, "]", this.i);
    }
}
