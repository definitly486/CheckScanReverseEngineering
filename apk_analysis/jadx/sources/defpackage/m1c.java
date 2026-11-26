package defpackage;

import android.graphics.Bitmap;
import android.media.Image;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzfr;
import com.google.android.gms.internal.mlkit_vision_barcode.zzft;
import com.google.android.gms.internal.mlkit_vision_barcode.zzqh;
import com.google.android.gms.internal.mlkit_vision_barcode.zzqi;
import com.google.android.gms.internal.mlkit_vision_barcode.zzqo;
import com.google.android.gms.internal.mlkit_vision_barcode.zzra;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrb;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrc;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrd;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrn;
import com.google.android.gms.internal.mlkit_vision_barcode.zzro;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwe;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwo;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwr;
import com.google.android.gms.internal.mlkit_vision_barcode.zzws;
import com.google.mlkit.common.MlKitException;
import defpackage.m1c;
import defpackage.vxb;
import defpackage.xlb;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class m1c extends ky4 {
    public static final j24 j = j24.a;
    public static boolean k = true;
    public final sc0 d;
    public final v3c e;
    public final zzwp f;
    public final zzwr g;
    public final hj0 h = new hj0();
    public boolean i;

    public m1c(jb5 jb5Var, sc0 sc0Var, v3c v3cVar, zzwp zzwpVar) {
        Preconditions.checkNotNull(jb5Var, "MlKitContext can not be null");
        Preconditions.checkNotNull(sc0Var, "BarcodeScannerOptions can not be null");
        this.d = sc0Var;
        this.e = v3cVar;
        this.f = zzwpVar;
        this.g = zzwr.zza(jb5Var.b());
    }

    @Override // defpackage.ky4
    public final List b(my4 my4Var) throws Throwable {
        m1c m1cVar;
        q54 q54Var = (q54) my4Var;
        synchronized (this) {
            try {
                try {
                    hj0 hj0Var = this.h;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    hj0Var.a(q54Var);
                    try {
                        ArrayList arrayListA = this.e.a(q54Var);
                        m1cVar = this;
                        try {
                            m1cVar.c(zzrb.NO_ERROR, jElapsedRealtime, q54Var, arrayListA);
                            k = false;
                            return arrayListA;
                        } catch (MlKitException e) {
                            e = e;
                            MlKitException mlKitException = e;
                            m1cVar.c(mlKitException.b == 14 ? zzrb.MODEL_NOT_DOWNLOADED : zzrb.UNKNOWN_ERROR, jElapsedRealtime, q54Var, null);
                            throw mlKitException;
                        }
                    } catch (MlKitException e2) {
                        e = e2;
                        m1cVar = this;
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    public final void c(final zzrb zzrbVar, long j2, final q54 q54Var, List list) {
        final zzcp zzcpVar = new zzcp();
        final zzcp zzcpVar2 = new zzcp();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                pc0 pc0Var = (pc0) it.next();
                int format = pc0Var.a.getFormat();
                if (format > 4096 || format == 0) {
                    format = -1;
                }
                zzrn zzrnVar = (zzrn) xva.a.get(format);
                if (zzrnVar == null) {
                    zzrnVar = zzrn.FORMAT_UNKNOWN;
                }
                zzcpVar.zzd(zzrnVar);
                zzro zzroVar = (zzro) xva.b.get(pc0Var.a.a());
                if (zzroVar == null) {
                    zzroVar = zzro.TYPE_UNKNOWN;
                }
                zzcpVar2.zzd(zzroVar);
            }
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        this.f.zzf(new zzwo() { // from class: iub
            @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwo
            public final zzwe zza() {
                int iLimit;
                zzqi zzqiVar;
                m1c m1cVar = this.a;
                long j3 = jElapsedRealtime;
                zzrb zzrbVar2 = zzrbVar;
                zzcp zzcpVar3 = zzcpVar;
                zzcp zzcpVar4 = zzcpVar2;
                q54 q54Var2 = q54Var;
                zzrp zzrpVar = new zzrp();
                zzqo zzqoVar = new zzqo();
                zzqoVar.zzc(Long.valueOf(j3));
                zzqoVar.zzd(zzrbVar2);
                zzqoVar.zze(Boolean.valueOf(m1c.k));
                Boolean bool = Boolean.TRUE;
                zzqoVar.zza(bool);
                zzqoVar.zzb(bool);
                zzrpVar.zzh(zzqoVar.zzf());
                zzrpVar.zzi(xva.a(m1cVar.d));
                zzrpVar.zze(zzcpVar3.zzf());
                zzrpVar.zzf(zzcpVar4.zzf());
                int i = q54Var2.g;
                m1c.j.getClass();
                int i2 = q54Var2.g;
                if (i2 == -1) {
                    iLimit = ((Bitmap) Preconditions.checkNotNull(q54Var2.a)).getAllocationByteCount();
                } else if (i2 == 17 || i2 == 842094169) {
                    iLimit = ((ByteBuffer) Preconditions.checkNotNull(q54Var2.b)).limit();
                } else {
                    iLimit = i2 != 35 ? 0 : (((Image.Plane[]) Preconditions.checkNotNull(q54Var2.a()))[0].getBuffer().limit() * 3) / 2;
                }
                zzqh zzqhVar = new zzqh();
                if (i == -1) {
                    zzqiVar = zzqi.BITMAP;
                } else if (i == 35) {
                    zzqiVar = zzqi.YUV_420_888;
                } else if (i == 842094169) {
                    zzqiVar = zzqi.YV12;
                } else if (i != 16) {
                    zzqiVar = i != 17 ? zzqi.UNKNOWN_FORMAT : zzqi.NV21;
                } else {
                    zzqiVar = zzqi.NV16;
                }
                zzqhVar.zza(zzqiVar);
                zzqhVar.zzb(Integer.valueOf(iLimit));
                zzrpVar.zzg(zzqhVar.zzd());
                zzrd zzrdVar = new zzrd();
                zzrdVar.zze(m1cVar.i ? zzra.TYPE_THICK : zzra.TYPE_THIN);
                zzrdVar.zzg(zzrpVar.zzj());
                return zzws.zzf(zzrdVar);
            }
        }, zzrc.ON_DEVICE_BARCODE_DETECT);
        zzfr zzfrVar = new zzfr();
        zzfrVar.zze(zzrbVar);
        zzfrVar.zzf(Boolean.valueOf(k));
        zzfrVar.zzg(xva.a(this.d));
        zzfrVar.zzc(zzcpVar.zzf());
        zzfrVar.zzd(zzcpVar2.zzf());
        final zzft zzftVarZzh = zzfrVar.zzh();
        final vxb vxbVar = new vxb(this);
        final zzrc zzrcVar = zzrc.AGGREGATED_ON_DEVICE_BARCODE_DETECTION;
        xlb xlbVar = xlb.zza;
        final zzwp zzwpVar = this.f;
        xlbVar.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwn
            @Override // java.lang.Runnable
            public final void run() {
                final zzwp zzwpVar2 = zzwpVar;
                final zzrc zzrcVar2 = zzrcVar;
                Object obj = zzftVarZzh;
                long j3 = jElapsedRealtime;
                final vxb vxbVar2 = vxbVar;
                HashMap map = zzwpVar2.j;
                if (!map.containsKey(zzrcVar2)) {
                    map.put(zzrcVar2, zzbw.zzz());
                }
                ((zzcy) map.get(zzrcVar2)).zzt(obj, Long.valueOf(j3));
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                if (zzwpVar2.c(zzrcVar2, jElapsedRealtime2)) {
                    zzwpVar2.i.put(zzrcVar2, Long.valueOf(jElapsedRealtime2));
                    xlb.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwk
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzwp zzwpVar3 = zzwpVar2;
                            zzrc zzrcVar3 = zzrcVar2;
                            vxb vxbVar3 = vxbVar2;
                            HashMap map2 = zzwpVar3.j;
                            zzcy zzcyVar = (zzcy) map2.get(zzrcVar3);
                            if (zzcyVar != null) {
                                for (Object obj2 : zzcyVar.zzw()) {
                                    ArrayList arrayList = new ArrayList(zzcyVar.zze(obj2));
                                    Collections.sort(arrayList);
                                    zzqb zzqbVar = new zzqb();
                                    Iterator it2 = arrayList.iterator();
                                    long jLongValue = 0;
                                    while (it2.hasNext()) {
                                        jLongValue += ((Long) it2.next()).longValue();
                                    }
                                    zzqbVar.zza(Long.valueOf(jLongValue / ((long) arrayList.size())));
                                    zzqbVar.zzc(Long.valueOf(zzwp.a(arrayList, 100.0d)));
                                    zzqbVar.zzf(Long.valueOf(zzwp.a(arrayList, 75.0d)));
                                    zzqbVar.zzd(Long.valueOf(zzwp.a(arrayList, 50.0d)));
                                    zzqbVar.zzb(Long.valueOf(zzwp.a(arrayList, 25.0d)));
                                    zzqbVar.zze(Long.valueOf(zzwp.a(arrayList, 0.0d)));
                                    zzqd zzqdVarZzg = zzqbVar.zzg();
                                    int size = arrayList.size();
                                    m1c m1cVar = vxbVar3.a;
                                    zzft zzftVar = (zzft) obj2;
                                    zzrd zzrdVar = new zzrd();
                                    zzrdVar.zze(m1cVar.i ? zzra.TYPE_THICK : zzra.TYPE_THIN);
                                    zzfq zzfqVar = new zzfq();
                                    zzfqVar.zza(Integer.valueOf(size));
                                    zzfqVar.zzc(zzftVar);
                                    zzfqVar.zzb(zzqdVarZzg);
                                    zzrdVar.zzd(zzfqVar.zze());
                                    zzwpVar3.zze(zzws.zzf(zzrdVar), zzrcVar3, zzwpVar3.b());
                                }
                                map2.remove(zzrcVar3);
                            }
                        }
                    });
                }
            }
        });
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = jCurrentTimeMillis - jElapsedRealtime;
        this.g.zzc(true != this.i ? 24301 : 24302, zzrbVar.zza(), j3, jCurrentTimeMillis);
    }
}
