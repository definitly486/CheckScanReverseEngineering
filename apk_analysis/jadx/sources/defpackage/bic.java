package defpackage;

import com.google.android.gms.internal.measurement.zzyc;
import java.io.File;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes4.dex */
public final class bic extends zzyc {
    public int d = 0;
    public final String a = "com/google/android/libraries/phenotype/client/Phlogger";
    public final String b = "logInternal";
    public final String c = "Phlogger.java";

    public final boolean equals(Object obj) {
        if (obj instanceof bic) {
            bic bicVar = (bic) obj;
            if (this.b.equals(bicVar.b)) {
                String str = bicVar.a;
                String str2 = this.a;
                if (str2 != str) {
                    if (str2.length() == str.length()) {
                        for (int i = 0; i < str2.length(); i++) {
                            char cCharAt = str2.charAt(i);
                            char cCharAt2 = str.charAt(i);
                            if (cCharAt == cCharAt2 || ((cCharAt & (-2)) == 46 && (cCharAt ^ cCharAt2) == 1)) {
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.d;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((this.b.hashCode() + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_CHACHA20_POLY1305_SHA256) * 31) + 44;
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String zza() {
        return this.a.replace('/', '.');
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final int zzc() {
        return 44;
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String zzd() {
        char c = File.separatorChar;
        String str = this.c;
        return str.substring(str.lastIndexOf(c) + 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String zze() {
        return this.c;
    }
}
