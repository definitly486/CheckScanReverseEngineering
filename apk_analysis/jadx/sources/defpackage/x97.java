package defpackage;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class x97 implements vx2, rxa {
    public static final ba8 b = new ba8("sse_gson");
    public static final ba8 c = new ba8("sse_http");
    public static final ba8 d = new ba8("sse_request");
    public static final ba8 e = new ba8("sse_header_interceptor");
    public static final ba8 f = new ba8("sse_cookie_jar");
    public static final /* synthetic */ x97 g = new x97();

    public static final int a(mp7 mp7Var, mp7[] mp7VarArr) {
        mp7VarArr.getClass();
        int iHashCode = (mp7Var.h().hashCode() * 31) + Arrays.hashCode(mp7VarArr);
        int iE = mp7Var.e();
        int i = 1;
        while (true) {
            int iHashCode2 = 0;
            if (!(iE > 0)) {
                break;
            }
            int i2 = iE - 1;
            int i3 = i * 31;
            String strH = mp7Var.d(mp7Var.e() - iE).h();
            if (strH != null) {
                iHashCode2 = strH.hashCode();
            }
            i = i3 + iHashCode2;
            iE = i2;
        }
        int iE2 = mp7Var.e();
        int iHashCode3 = 1;
        while (true) {
            if (!(iE2 > 0)) {
                return (((iHashCode * 31) + i) * 31) + iHashCode3;
            }
            int i4 = iE2 - 1;
            int i5 = iHashCode3 * 31;
            sp7 kind = mp7Var.d(mp7Var.e() - iE2).getKind();
            iHashCode3 = i5 + (kind != null ? kind.hashCode() : 0);
            iE2 = i4;
        }
    }

    public static final String b(mp7 mp7Var) {
        return qn1.a0(kx6.n(0, mp7Var.e()), ", ", mp7Var.h() + '(', ")", 0, new t96(mp7Var, 0), 24);
    }

    @Override // defpackage.vx2
    public boolean d(Object obj, File file, xz5 xz5Var) throws Throwable {
        try {
            ax0.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e2) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e2);
            return false;
        }
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return zzags.zzg();
    }
}
