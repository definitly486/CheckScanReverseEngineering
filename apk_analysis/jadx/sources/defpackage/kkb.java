package defpackage;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzhf;
import com.google.android.gms.measurement.internal.zzic;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class kkb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ zzgu g;

    public kkb(zzgu zzguVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.b = i;
        this.c = str;
        this.d = obj;
        this.e = obj2;
        this.f = obj3;
        Objects.requireNonNull(zzguVar);
        this.g = zzguVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgu zzguVar = this.g;
        zzic zzicVar = zzguVar.a;
        hnb hnbVarZzd = zzicVar.zzd();
        if (!hnbVarZzd.b) {
            Log.println(6, zzguVar.f(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (zzguVar.c == 0) {
            if (zzicVar.zzc().zzj()) {
                zzicVar.zzaV();
                zzguVar.c = 'C';
            } else {
                zzicVar.zzaV();
                zzguVar.c = 'c';
            }
        }
        long j = zzguVar.d;
        if (j < 0) {
            zzicVar.zzc().zzi();
            j = 161000;
            zzguVar.d = 161000L;
        }
        char c = zzguVar.c;
        char cCharAt = "01VDIWEA?".charAt(this.b);
        String str = this.c;
        String strG = zzgu.g(true, str, this.d, this.e, this.f);
        int length = String.valueOf(cCharAt).length();
        StringBuilder sb = new StringBuilder(length + 1 + String.valueOf(c).length() + String.valueOf(j).length() + 1 + strG.length());
        sb.append(ExifInterface.GPS_MEASUREMENT_2D);
        sb.append(cCharAt);
        sb.append(c);
        sb.append(j);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        sb.append(strG);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = str.substring(0, 1024);
        }
        zzhf zzhfVar = hnbVarZzd.e;
        if (zzhfVar != null) {
            zzhfVar.zza(string, 1L);
        }
    }
}
