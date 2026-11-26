package com.google.android.gms.internal.measurement;

import androidx.media3.muxer.WebmConstants;
import defpackage.spa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabl extends zzabp {
    public static final zzabl b = new zzabl();

    public static zzabp zza() {
        return b;
    }

    @Override // com.google.android.gms.internal.measurement.zzabp
    public final int zzb(zzabm zzabmVar, int i, String str, int i2, int i3, int i4) {
        zzabh zzabhVarZza;
        char cCharAt = str.charAt(i4);
        zzza zzzaVarZzb = zzza.zzb(str, i3, i4, (cCharAt & ' ') == 0);
        zzyz zzyzVarZza = zzyz.zza(cCharAt);
        int i5 = i4 + 1;
        if (zzyzVarZza != null) {
            if (!zzzaVarZzb.zzi(zzyzVarZza)) {
                throw zzabo.zza("invalid format specifier", str, i2, i5);
            }
            zzabhVarZza = zzabj.zza(i, zzyzVarZza, zzzaVarZzb);
        } else if (cCharAt == 't' || cCharAt == 'T') {
            if (!zzzaVarZzb.zzh(WebmConstants.MkvEbmlElement.BLOCK_GROUP, false)) {
                throw zzabo.zza("invalid format specification", str, i2, i5);
            }
            int i6 = i4 + 2;
            if (i6 > str.length()) {
                throw zzabo.zzb("truncated format specifier", str, i2);
            }
            zzabf zzabfVarZza = zzabf.zza(str.charAt(i5));
            if (zzabfVarZza == null) {
                throw zzabo.zzb("illegal date/time conversion", str, i5);
            }
            zzabhVarZza = zzabg.zza(zzabfVarZza, zzzaVarZzb, i);
            i5 = i6;
        } else {
            if (cCharAt != 'h' && cCharAt != 'H') {
                throw zzabo.zza("invalid format specification", str, i2, i5);
            }
            if (!zzzaVarZzb.zzh(WebmConstants.MkvEbmlElement.BLOCK_GROUP, false)) {
                throw zzabo.zza("invalid format specification", str, i2, i5);
            }
            zzabhVarZza = new spa(zzzaVarZzb, i);
        }
        zzabmVar.zzk(i2, i5, zzabhVarZza);
        return i5;
    }
}
