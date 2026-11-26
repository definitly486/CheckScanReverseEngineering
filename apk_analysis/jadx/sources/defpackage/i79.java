package defpackage;

import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzadu;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzjf;
import com.google.android.gms.internal.measurement.zzjh;
import com.google.android.gms.internal.measurement.zzjo;
import com.google.android.gms.internal.measurement.zzmf;
import com.google.android.gms.internal.measurement.zzmg;
import com.google.android.gms.internal.measurement.zzmh;
import com.google.android.gms.internal.measurement.zzmi;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class i79 implements rxa, Continuation {
    public static final /* synthetic */ i79 c = new i79(1);
    public static final /* synthetic */ i79 d = new i79(2);
    public final /* synthetic */ int b;

    public /* synthetic */ i79(int i) {
        this.b = i;
    }

    public static byte a(long j) {
        o8.c(j, (j >> 8) == 0, "out of range: %s");
        return (byte) j;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        zzadu zzaduVarZzbd;
        zzjh zzjhVar = (zzjh) task.getResult();
        zzmf zzmfVarZzh = zzmg.zzh();
        zzmfVarZzh.zza(zzjhVar.zza);
        zzmfVarZzh.zzc(zzjhVar.zzc);
        zzmfVarZzh.zzf(zzjhVar.zzf);
        zzmfVarZzh.zzg(zzjhVar.zzg);
        byte[] bArr = zzjhVar.zzb;
        if (bArr != null) {
            zzmfVarZzh.zzb(zzacr.zzj(bArr, 0, bArr.length));
        }
        for (zzjf zzjfVar : zzjhVar.zzd) {
            for (zzjo zzjoVar : zzjfVar.zzb) {
                int i = zzjoVar.zzg;
                if (i == 1) {
                    zzmh zzmhVarZzh = zzmi.zzh();
                    zzmhVarZzh.zza(zzjoVar.zza);
                    zzmhVarZzh.zzb(zzjoVar.zza());
                    zzaduVarZzbd = zzmhVarZzh.zzbd();
                } else if (i == 2) {
                    zzmh zzmhVarZzh2 = zzmi.zzh();
                    zzmhVarZzh2.zza(zzjoVar.zza);
                    zzmhVarZzh2.zzc(zzjoVar.zzb());
                    zzaduVarZzbd = zzmhVarZzh2.zzbd();
                } else if (i == 3) {
                    zzmh zzmhVarZzh3 = zzmi.zzh();
                    zzmhVarZzh3.zza(zzjoVar.zza);
                    zzmhVarZzh3.zzd(zzjoVar.zzc());
                    zzaduVarZzbd = zzmhVarZzh3.zzbd();
                } else if (i == 4) {
                    zzmh zzmhVarZzh4 = zzmi.zzh();
                    zzmhVarZzh4.zza(zzjoVar.zza);
                    zzmhVarZzh4.zze(zzjoVar.zzd());
                    zzaduVarZzbd = zzmhVarZzh4.zzbd();
                } else {
                    if (i != 5) {
                        fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 24), "Unrecognized flag type: ", i));
                        return null;
                    }
                    zzmh zzmhVarZzh5 = zzmi.zzh();
                    zzmhVarZzh5.zza(zzjoVar.zza);
                    byte[] bArrZze = zzjoVar.zze();
                    zzacr zzacrVar = zzacr.zza;
                    zzmhVarZzh5.zzf(zzacr.zzj(bArrZze, 0, bArrZze.length));
                    zzaduVarZzbd = zzmhVarZzh5.zzbd();
                }
                zzmfVarZzh.zzd((zzmi) zzaduVarZzbd);
            }
            String[] strArr = zzjfVar.zzc;
            if (strArr != null) {
                for (String str : strArr) {
                    zzmfVarZzh.zze(str);
                }
            }
        }
        return (zzmg) zzmfVarZzh.zzbd();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzL());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzu());
        }
    }
}
