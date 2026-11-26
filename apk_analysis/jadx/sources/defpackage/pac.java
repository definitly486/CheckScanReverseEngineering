package defpackage;

import com.google.android.gms.internal.measurement.zzpe;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzqc;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pac implements zzqc {
    public static final /* synthetic */ pac a = new pac();

    /* JADX WARN: Code duplicated, block: B:39:0x0069 A[Catch: all -> 0x0067, TryCatch #0 {all -> 0x0067, blocks: (B:25:0x004c, B:27:0x0050, B:29:0x0054, B:34:0x005e, B:39:0x0069, B:40:0x0071), top: B:47:0x004c }] */
    @Override // com.google.android.gms.internal.measurement.zzqc
    public final boolean zza(List list) {
        zzpe zzpeVar = zzpg.h;
        zzpeVar.getClass();
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            eac eacVar = (eac) zzpeVar.a.get((String) it.next());
            if (eacVar != null) {
                zzpg zzpgVar = eacVar.a;
                boolean z2 = true;
                if (zzpgVar.d) {
                    scc sccVar = zzpgVar.a;
                    if (sccVar != null && (sccVar.a || sccVar.e.a == 3 || zzpgVar.g.b())) {
                        synchronized (zzpgVar) {
                            try {
                                scc sccVar2 = zzpgVar.a;
                                if (sccVar2 != null) {
                                    if (sccVar2.a) {
                                        zzpgVar.a = null;
                                        zzpgVar.f.zzb();
                                    } else {
                                        if (sccVar2.e.a != 3) {
                                            z2 = false;
                                        }
                                        if (z2 || zzpgVar.g.b()) {
                                            zzpgVar.a = null;
                                            zzpgVar.f.zzb();
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    z2 = false;
                }
                z |= z2;
            }
        }
        return z;
    }
}
