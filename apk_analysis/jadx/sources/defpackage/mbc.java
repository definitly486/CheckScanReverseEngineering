package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzhs;
import com.google.android.gms.internal.measurement.zzid;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzpg;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class mbc {
    public zzid a;
    public ArrayList b;
    public ArrayList c;
    public long d;
    public final /* synthetic */ zzpg e;

    public /* synthetic */ mbc(zzpg zzpgVar) {
        this.e = zzpgVar;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007a  */
    /* JADX WARN: Code duplicated, block: B:26:0x008f  */
    /* JADX WARN: Code duplicated, block: B:30:0x00ab A[RETURN] */
    public final boolean a(long j, zzhs zzhsVar) {
        zzid zzidVar;
        Preconditions.checkNotNull(zzhsVar);
        if (this.c == null) {
            this.c = new ArrayList();
        }
        if (this.b == null) {
            this.b = new ArrayList();
        }
        if (this.c.isEmpty() || ((((zzhs) this.c.get(0)).zzf() / 1000) / 60) / 60 == ((zzhsVar.zzf() / 1000) / 60) / 60) {
            long jZzcq = this.d + ((long) zzhsVar.zzcq());
            zzpg zzpgVar = this.e;
            if (!zzpgVar.zzd().zzp(null, zzfy.zzaY)) {
                zzpgVar.zzd();
                if (jZzcq < zzal.zzG()) {
                    this.d = jZzcq;
                    this.c.add(zzhsVar);
                    this.b.add(Long.valueOf(j));
                    zzidVar = this.a;
                    if (this.c.size() < Math.max(1, zzpgVar.zzd().zzm(zzidVar != null ? zzidVar.zzA() : null, zzfy.zzj))) {
                        return true;
                    }
                }
            } else if (this.c.isEmpty()) {
                this.d = jZzcq;
                this.c.add(zzhsVar);
                this.b.add(Long.valueOf(j));
                zzidVar = this.a;
                if (this.c.size() < Math.max(1, zzpgVar.zzd().zzm(zzidVar != null ? zzidVar.zzA() : null, zzfy.zzj))) {
                    return true;
                }
            } else {
                zzpgVar.zzd();
                if (jZzcq < zzal.zzG()) {
                    this.d = jZzcq;
                    this.c.add(zzhsVar);
                    this.b.add(Long.valueOf(j));
                    zzidVar = this.a;
                    if (this.c.size() < Math.max(1, zzpgVar.zzd().zzm(zzidVar != null ? zzidVar.zzA() : null, zzfy.zzj))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
