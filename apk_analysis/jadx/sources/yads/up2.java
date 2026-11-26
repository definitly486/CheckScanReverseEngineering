package yads;

import android.os.SystemClock;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class up2 extends zv4 {
    public final int d;
    public final String e;
    public final int f;
    public final vz2 g;
    public final int h;
    public final b14 i;
    public final boolean j;

    /* JADX WARN: Illegal instructions before constructor call */
    public up2(int i, Exception exc, String str, int i2, String str2, int i3, vz2 vz2Var, int i4, boolean z) {
        String str3;
        int i5;
        vz2 vz2Var2;
        String string;
        String str4;
        if (i == 0) {
            str3 = str2;
            i5 = i3;
            vz2Var2 = vz2Var;
            string = "Source error";
        } else if (i != 1) {
            string = i != 3 ? "Unexpected runtime error" : "Remote error";
            str3 = str2;
            i5 = i3;
            vz2Var2 = vz2Var;
        } else {
            StringBuilder sb = new StringBuilder();
            str3 = str2;
            sb.append(str3);
            sb.append(" error, index=");
            i5 = i3;
            sb.append(i5);
            sb.append(", format=");
            vz2Var2 = vz2Var;
            sb.append(vz2Var2);
            sb.append(", format_supported=");
            int i6 = u56.a;
            if (i4 == 0) {
                str4 = "NO";
            } else if (i4 == 1) {
                str4 = "NO_UNSUPPORTED_TYPE";
            } else if (i4 == 2) {
                str4 = "NO_UNSUPPORTED_DRM";
            } else if (i4 == 3) {
                str4 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i4 != 4) {
                    defpackage.ud.g();
                    throw null;
                }
                str4 = "YES";
            }
            sb.append(str4);
            string = sb.toString();
        }
        this(TextUtils.isEmpty(str) ? string : defpackage.me0.c(string, ": ", str), exc, i2, i, str3, i5, vz2Var2, i4, null, SystemClock.elapsedRealtime(), z);
    }

    public up2(String str, Throwable th, int i, int i2, String str2, int i3, vz2 vz2Var, int i4, b14 b14Var, long j, boolean z) {
        super(str, th, i, j);
        if (z && i2 != 1) {
            defpackage.mi2.b();
            throw null;
        }
        if (th == null && i2 != 3) {
            defpackage.mi2.b();
            throw null;
        }
        this.d = i2;
        this.e = str2;
        this.f = i3;
        this.g = vz2Var;
        this.h = i4;
        this.i = b14Var;
        this.j = z;
    }

    public up2(int i, Exception exc, int i2) {
        this(i, exc, null, i2, null, -1, null, 4, false);
    }
}
