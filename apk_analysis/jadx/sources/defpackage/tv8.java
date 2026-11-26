package defpackage;

import android.os.Trace;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzvy;
import com.google.android.gms.internal.measurement.zzws;
import com.google.android.gms.measurement.internal.zzfy;
import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.datetime.DateTimeArithmeticException;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tv8 implements rxa {
    public static final /* synthetic */ tv8 b = new tv8();

    public static final jt4 a(h64 h64Var, sv8 sv8Var) {
        h64Var.getClass();
        sv8Var.getClass();
        try {
            return new jt4(LocalDateTime.ofInstant(h64Var.b, sv8Var.a));
        } catch (DateTimeException e) {
            throw new DateTimeArithmeticException(e);
        }
    }

    public static void b(zzws zzwsVar) {
        if (zzwsVar.zza() == Thread.currentThread() && zzwsVar.zzb() != null) {
            b(zzwsVar.zzb());
            d(zzwsVar);
        } else {
            Trace.beginSection(zzwsVar.zzd());
            d(zzwsVar);
        }
    }

    public static void c(zzws zzwsVar) {
        if (zzwsVar.zza() == Thread.currentThread() && zzwsVar.zzb() != null) {
            Trace.endSection();
            c(zzwsVar.zzb());
        } else {
            Trace.endSection();
            Trace.endSection();
        }
    }

    public static void d(zzws zzwsVar) {
        String strZze = zzwsVar.zze();
        AtomicReference atomicReference = zzvy.a;
        if (strZze.length() > 127) {
            strZze = strZze.substring(0, androidx.tracing.Trace.MAX_TRACE_LABEL_LENGTH);
        }
        Trace.beginSection(strZze);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return zzags.zzP();
    }
}
