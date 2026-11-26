package defpackage;

import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class c84 implements cc9, l47, hm1, hsa, rxa {
    public static final c84 b = new c84();
    public static final /* synthetic */ c84 c = new c84();

    public static final iy6 f(v48 v48Var) {
        v48Var.getClass();
        return new iy6(v48Var);
    }

    public static final void g(ne4 ne4Var, Object obj) {
        ne4Var.getClass();
        if (ne4Var.e(obj)) {
            obj.getClass();
            return;
        }
        throw new ClassCastException("Value cannot be cast to " + ne4Var.a());
    }

    public static String h(long j) {
        long j2 = (j / 60000) % 60;
        long j3 = (j / 1000) % 60;
        return cg.d(j2 / 10 == 0 ? r01.c(j2, CommonUrlParts.Values.FALSE_INTEGER) : String.valueOf(j2), StringUtils.PROCESS_POSTFIX_DELIMITER, j3 / 10 == 0 ? r01.c(j3, CommonUrlParts.Values.FALSE_INTEGER) : String.valueOf(j3));
    }

    @Override // defpackage.hsa
    public boolean a(Class cls) {
        return false;
    }

    @Override // defpackage.hsa
    public zra b(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // defpackage.l47
    public rx2 c(xz5 xz5Var) {
        return rx2.SOURCE;
    }

    @Override // defpackage.vx2
    public boolean d(Object obj, File file, xz5 xz5Var) throws Throwable {
        try {
            ax0.d(((up3) ((e47) obj).get()).b.a.a.d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("GifEncoder", 5)) {
                return false;
            }
            Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            return false;
        }
    }

    @Override // defpackage.cc9
    public Object e(td4 td4Var, float f) {
        return Integer.valueOf(Math.round(ie4.d(td4Var) * f));
    }

    @Override // defpackage.hm1
    public long getTime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return zzags.zzaa();
    }
}
