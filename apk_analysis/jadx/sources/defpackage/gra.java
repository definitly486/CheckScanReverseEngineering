package defpackage;

import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzadj;
import com.google.android.gms.internal.measurement.zzadu;
import com.google.android.gms.internal.measurement.zzady;
import com.google.android.gms.internal.measurement.zzael;
import com.google.android.gms.internal.measurement.zzafc;
import com.google.android.gms.internal.measurement.zzafd;
import com.google.android.gms.internal.measurement.zzagm;
import com.google.android.gms.internal.measurement.zzagn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class gra {
    public static final gra d = new gra(0);
    public final osa a = new osa();
    public boolean b;
    public boolean c;

    public gra(int i) {
        a();
        a();
    }

    public static void e(zzada zzadaVar, zzagm zzagmVar, int i, Object obj) {
        if (zzagmVar == zzagm.zzj) {
            zzadaVar.zzb(i, 3);
            ((zzafc) obj).zzcH(zzadaVar);
            zzadaVar.zzb(i, 4);
            return;
        }
        zzadaVar.zzb(i, zzagmVar.zzb());
        zzagn zzagnVar = zzagn.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                zzadaVar.zzu(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                zzadaVar.zzs(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                zzadaVar.zzt(((Long) obj).longValue());
                break;
            case 3:
                zzadaVar.zzt(((Long) obj).longValue());
                break;
            case 4:
                zzadaVar.zzq(((Integer) obj).intValue());
                break;
            case 5:
                zzadaVar.zzu(((Long) obj).longValue());
                break;
            case 6:
                zzadaVar.zzs(((Integer) obj).intValue());
                break;
            case 7:
                zzadaVar.zzp(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof zzacr)) {
                    zzadaVar.zzw((String) obj);
                } else {
                    zzadaVar.zzk((zzacr) obj);
                }
                break;
            case 9:
                ((zzafc) obj).zzcH(zzadaVar);
                break;
            case 10:
                zzadaVar.zzo((zzafc) obj);
                break;
            case 11:
                if (!(obj instanceof zzacr)) {
                    byte[] bArr = (byte[]) obj;
                    zzadaVar.a(bArr.length, bArr);
                } else {
                    zzadaVar.zzk((zzacr) obj);
                }
                break;
            case 12:
                zzadaVar.zzr(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof zzady)) {
                    zzadaVar.zzq(((Integer) obj).intValue());
                } else {
                    zzadaVar.zzq(((zzady) obj).zza());
                }
                break;
            case 14:
                zzadaVar.zzs(((Integer) obj).intValue());
                break;
            case 15:
                zzadaVar.zzu(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                zzadaVar.zzr((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                zzadaVar.zzt((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    public static int f(zzagm zzagmVar, int i, Object obj) {
        int iZzE = zzada.zzE(i << 3);
        if (zzagmVar == zzagm.zzj) {
            iZzE += iZzE;
        }
        return g(zzagmVar, obj) + iZzE;
    }

    public static int g(zzagm zzagmVar, Object obj) {
        int iB;
        int iZzE;
        zzagm zzagmVar2 = zzagm.zza;
        zzagn zzagnVar = zzagn.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                boolean z = zzada.b;
                return 8;
            case 1:
                ((Float) obj).getClass();
                boolean z2 = zzada.b;
                return 4;
            case 2:
                return zzada.zzF(((Long) obj).longValue());
            case 3:
                return zzada.zzF(((Long) obj).longValue());
            case 4:
                return zzada.zzF(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                boolean z3 = zzada.b;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                boolean z4 = zzada.b;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                boolean z5 = zzada.b;
                return 1;
            case 8:
                if (!(obj instanceof zzacr)) {
                    boolean z6 = zzada.b;
                    iB = gta.b((String) obj);
                    iZzE = zzada.zzE(iB);
                } else {
                    boolean z7 = zzada.b;
                    iB = ((zzacr) obj).zzb();
                    iZzE = zzada.zzE(iB);
                }
                break;
            case 9:
                return ((zzafc) obj).zzcq();
            case 10:
                if (!(obj instanceof zzael)) {
                    return zzada.zzG((zzafc) obj);
                }
                iB = ((zzael) obj).zzb();
                iZzE = zzada.zzE(iB);
                break;
                break;
            case 11:
                if (!(obj instanceof zzacr)) {
                    boolean z8 = zzada.b;
                    iB = ((byte[]) obj).length;
                    iZzE = zzada.zzE(iB);
                } else {
                    boolean z9 = zzada.b;
                    iB = ((zzacr) obj).zzb();
                    iZzE = zzada.zzE(iB);
                }
                break;
            case 12:
                return zzada.zzE(((Integer) obj).intValue());
            case 13:
                return obj instanceof zzady ? zzada.zzF(((zzady) obj).zza()) : zzada.zzF(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                boolean z10 = zzada.b;
                return 4;
            case 15:
                ((Long) obj).getClass();
                boolean z11 = zzada.b;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return zzada.zzE((iIntValue >> 31) ^ (iIntValue + iIntValue));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return zzada.zzF((jLongValue >> 63) ^ (jLongValue + jLongValue));
            default:
                n7.g("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iZzE + iB;
    }

    public static int h(zzadj zzadjVar, Object obj) {
        zzagm zzagmVarZzb = zzadjVar.zzb();
        int iZza = zzadjVar.zza();
        if (!zzadjVar.zzd()) {
            return f(zzagmVarZzb, iZza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i = 0;
        if (!zzadjVar.zze()) {
            int iF = 0;
            while (i < size) {
                iF += f(zzagmVarZzb, iZza, list.get(i));
                i++;
            }
            return iF;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iG = 0;
        while (i < size) {
            iG += g(zzagmVarZzb, list.get(i));
            i++;
        }
        return zzada.zzE(iG) + zzada.zzE(iZza << 3) + iG;
    }

    public static boolean i(Map.Entry entry) {
        boolean zZzcJ;
        zzadj zzadjVar = (zzadj) entry.getKey();
        if (zzadjVar.zzc() == zzagn.zzi) {
            if (!zzadjVar.zzd()) {
                Object value = entry.getValue();
                if (value instanceof zzafd) {
                    return ((zzafd) value).zzcJ();
                }
                if (value instanceof zzael) {
                    return true;
                }
                fg.c("Wrong object type used with protocol message reflection.");
                return false;
            }
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj instanceof zzafd) {
                    zZzcJ = ((zzafd) obj).zzcJ();
                } else {
                    if (!(obj instanceof zzael)) {
                        fg.c("Wrong object type used with protocol message reflection.");
                        return false;
                    }
                    zZzcJ = true;
                }
                if (!zZzcJ) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final int j(Map.Entry entry) {
        int i;
        int iZzE;
        int iZzG;
        zzadj zzadjVar = (zzadj) entry.getKey();
        Object value = entry.getValue();
        if (zzadjVar.zzc() != zzagn.zzi || zzadjVar.zzd() || zzadjVar.zze()) {
            return h(zzadjVar, value);
        }
        if (value instanceof zzael) {
            int iZza = ((zzadj) entry.getKey()).zza();
            int iZzE2 = zzada.zzE(8);
            i = iZzE2 + iZzE2;
            iZzE = zzada.zzE(iZza) + zzada.zzE(16);
            int iZzE3 = zzada.zzE(24);
            int iZzb = ((zzael) value).zzb();
            iZzG = dq.b(iZzb, iZzb, iZzE3);
        } else {
            int iZza2 = ((zzadj) entry.getKey()).zza();
            int iZzE4 = zzada.zzE(8);
            i = iZzE4 + iZzE4;
            iZzE = zzada.zzE(iZza2) + zzada.zzE(16);
            iZzG = zzada.zzG((zzafc) value) + zzada.zzE(24);
        }
        return i + iZzE + iZzG;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void k(zzadj zzadjVar, Object obj) {
        boolean z;
        zzagm zzagmVarZzb = zzadjVar.zzb();
        obj.getClass();
        zzagm zzagmVar = zzagm.zza;
        zzagn zzagnVar = zzagn.zza;
        switch (zzagmVarZzb.zza().ordinal()) {
            case 0:
                z = obj instanceof Integer;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 1:
                z = obj instanceof Long;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 2:
                z = obj instanceof Float;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 3:
                z = obj instanceof Double;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 4:
                z = obj instanceof Boolean;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 5:
                z = obj instanceof String;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 6:
                if ((obj instanceof zzacr) || (obj instanceof byte[])) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 7:
                if ((obj instanceof Integer) || (obj instanceof zzady)) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            case 8:
                if ((obj instanceof zzafc) || (obj instanceof zzael)) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
            default:
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.zza()), zzadjVar.zzb().zza(), obj.getClass().getName()});
                break;
        }
    }

    public final void a() {
        if (this.b) {
            return;
        }
        osa osaVar = this.a;
        int i = osaVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = osaVar.b(i2).c;
            if (obj instanceof zzadu) {
                zzadu zzaduVar = (zzadu) obj;
                ksa.c.a(zzaduVar.getClass()).a(zzaduVar);
                zzaduVar.d();
            }
        }
        Iterator it = osaVar.c().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzadu) {
                zzadu zzaduVar2 = (zzadu) value;
                ksa.c.a(zzaduVar2.getClass()).a(zzaduVar2);
                zzaduVar2.d();
            }
        }
        osaVar.a();
        this.b = true;
    }

    public final Iterator b() {
        osa osaVar = this.a;
        if (osaVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.c ? new rra(((rsa) osaVar.entrySet()).iterator()) : ((rsa) osaVar.entrySet()).iterator();
    }

    public final void c(zzadj zzadjVar, Object obj) {
        if (!zzadjVar.zzd()) {
            k(zzadjVar, obj);
        } else {
            if (!(obj instanceof List)) {
                fg.c("Wrong object type used with protocol message reflection.");
                return;
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                k(zzadjVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzael) {
            this.c = true;
        }
        this.a.put(zzadjVar, obj);
    }

    public final Object clone() {
        gra graVar = new gra();
        osa osaVar = this.a;
        int i = osaVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            psa psaVarB = osaVar.b(i2);
            graVar.c((zzadj) psaVarB.b, psaVarB.c);
        }
        for (Map.Entry entry : osaVar.c()) {
            graVar.c((zzadj) entry.getKey(), entry.getValue());
        }
        graVar.c = this.c;
        return graVar;
    }

    public final boolean d() {
        osa osaVar = this.a;
        int i = osaVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            if (!i(osaVar.b(i2))) {
                return false;
            }
        }
        Iterator it = osaVar.c().iterator();
        while (it.hasNext()) {
            if (!i((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof gra) {
            return this.a.equals(((gra) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public gra() {
    }
}
