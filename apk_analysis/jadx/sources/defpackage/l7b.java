package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdn;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class l7b extends f7b {
    @Override // defpackage.f7b
    public final void a(gnb gnbVar, Map.Entry entry) {
        s9b s9bVar = (s9b) entry.getKey();
        zzhf zzhfVar = zzhf.zza;
        zzhf zzhfVar2 = s9bVar.c;
        int i = s9bVar.b;
        switch (zzhfVar2.ordinal()) {
            case 0:
                ((d6b) gnbVar).a.zzh(i, Double.doubleToRawLongBits(((Double) entry.getValue()).doubleValue()));
                break;
            case 1:
                ((d6b) gnbVar).a.zzf(i, Float.floatToRawIntBits(((Float) entry.getValue()).floatValue()));
                break;
            case 2:
                ((d6b) gnbVar).a.zzu(i, ((Long) entry.getValue()).longValue());
                break;
            case 3:
                ((d6b) gnbVar).a.zzu(i, ((Long) entry.getValue()).longValue());
                break;
            case 4:
                ((d6b) gnbVar).a.zzj(i, ((Integer) entry.getValue()).intValue());
                break;
            case 5:
                ((d6b) gnbVar).a.zzh(i, ((Long) entry.getValue()).longValue());
                break;
            case 6:
                ((d6b) gnbVar).a.zzf(i, ((Integer) entry.getValue()).intValue());
                break;
            case 7:
                ((d6b) gnbVar).a.zzd(i, ((Boolean) entry.getValue()).booleanValue());
                break;
            case 8:
                ((d6b) gnbVar).a.zzp(i, (String) entry.getValue());
                break;
            case 9:
                ((d6b) gnbVar).a(i, entry.getValue(), lgb.c.a(entry.getValue().getClass()));
                break;
            case 10:
                Object value = entry.getValue();
                jib jibVarA = lgb.c.a(entry.getValue().getClass());
                d6b d6bVar = (d6b) gnbVar;
                d6bVar.getClass();
                d6bVar.a.a(i, (zzfm) value, jibVarA);
                break;
            case 11:
                ((d6b) gnbVar).a.zze(i, (zzdf) entry.getValue());
                break;
            case 12:
                ((d6b) gnbVar).a.zzs(i, ((Integer) entry.getValue()).intValue());
                break;
            case 13:
                ((d6b) gnbVar).a.zzj(i, ((Integer) entry.getValue()).intValue());
                break;
            case 14:
                ((d6b) gnbVar).a.zzf(i, ((Integer) entry.getValue()).intValue());
                break;
            case 15:
                ((d6b) gnbVar).a.zzh(i, ((Long) entry.getValue()).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) entry.getValue()).intValue();
                zzdn zzdnVar = ((d6b) gnbVar).a;
                zzdnVar.zzs(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) entry.getValue()).longValue();
                zzdn zzdnVar2 = ((d6b) gnbVar).a;
                zzdnVar2.zzu(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }
}
