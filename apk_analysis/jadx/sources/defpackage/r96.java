package defpackage;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzahn;
import com.google.android.gms.internal.measurement.zzbz;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.MissingFieldException;

/* JADX INFO: loaded from: classes5.dex */
public final class r96 implements zzbz, rxa, OnFailureListener {
    public static final /* synthetic */ r96 b = new r96();

    public static void a(boolean z, String str) {
        if (z) {
            return;
        }
        fg.c(str);
    }

    public static void b(Object obj) {
        c(obj, "Argument must not be null");
    }

    public static void c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        o2.d(str);
    }

    public static final long d(long j, long j2, long j3, String str) {
        String property;
        int i = kh8.a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j;
        }
        Long lQ = qa8.q(property);
        if (lQ == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = lQ.longValue();
        if (j2 <= jLongValue && jLongValue <= j3) {
            return jLongValue;
        }
        StringBuilder sb = new StringBuilder("System property '");
        sb.append(str);
        sb.append("' should be in range ");
        sb.append(j2);
        dq.d(sb, "..", j3, ", but is '");
        sb.append(jLongValue);
        sb.append('\'');
        throw new IllegalStateException(sb.toString().toString());
    }

    public static int e(int i, int i2, String str) {
        return (int) d(i, 1L, (i2 & 8) != 0 ? Integer.MAX_VALUE : 2097150, str);
    }

    public static final void f(mp7 mp7Var, int i, int i2) {
        mp7Var.getClass();
        ArrayList arrayList = new ArrayList();
        int i3 = (~i) & i2;
        for (int i4 = 0; i4 < 32; i4++) {
            if ((i3 & 1) != 0) {
                arrayList.add(mp7Var.f(i4));
            }
            i3 >>>= 1;
        }
        String strH = mp7Var.h();
        strH.getClass();
        throw new MissingFieldException(arrayList.size() == 1 ? dg.c(new StringBuilder("Field '"), (String) arrayList.get(0), "' is required for type with serial name '", strH, "', but it was missing") : "Fields " + arrayList + " are required for type with serial name '" + strH + "', but they were missing", null, arrayList, strH);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        Log.e("OptionalModuleUtils", "Failed to request modules install request", exc);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzahn.zzc());
    }
}
