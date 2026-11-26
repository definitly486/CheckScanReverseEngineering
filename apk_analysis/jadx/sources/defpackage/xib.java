package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzfx;
import com.google.android.gms.internal.play_billing.zzgg;
import com.google.android.gms.internal.play_billing.zzgp;
import com.google.android.gms.internal.play_billing.zzgr;
import com.google.android.gms.internal.play_billing.zzhr;
import com.google.android.gms.internal.play_billing.zzhs;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzjh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class xib {
    public static final xib d = new xib(0);
    public final qqb a = new qqb();
    public boolean b;
    public boolean c;

    public xib(int i) {
        e();
        e();
    }

    public static int a(zzjg zzjgVar, int i, Object obj) {
        int iZzy = zzfx.zzy(i << 3);
        if (zzjgVar == zzjg.zzj) {
            iZzy += iZzy;
        }
        return b(zzjgVar, obj) + iZzy;
    }

    public static int b(zzjg zzjgVar, Object obj) {
        int iA;
        int iZzy;
        zzjg zzjgVar2 = zzjg.zza;
        zzjh zzjhVar = zzjh.zza;
        switch (zzjgVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                return 8;
            case 1:
                ((Float) obj).getClass();
                return 4;
            case 2:
                return zzfx.zzz(((Long) obj).longValue());
            case 3:
                return zzfx.zzz(((Long) obj).longValue());
            case 4:
                return zzfx.zzz(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                return 8;
            case 6:
                ((Integer) obj).getClass();
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                return 1;
            case 8:
                if (!(obj instanceof zzfp)) {
                    int i = dvb.a;
                    iA = dub.a((String) obj);
                    iZzy = zzfx.zzy(iA);
                } else {
                    iA = ((zzfp) obj).zzd();
                    iZzy = zzfx.zzy(iA);
                }
                break;
            case 9:
                return ((zzhr) obj).zzn();
            case 10:
                if (!(obj instanceof slb)) {
                    return zzfx.zzx((zzhr) obj);
                }
                slb slbVar = (slb) obj;
                iA = slbVar.c != null ? slbVar.c.zzd() : slbVar.d.zzn();
                iZzy = zzfx.zzy(iA);
                break;
                break;
            case 11:
                if (!(obj instanceof zzfp)) {
                    iA = ((byte[]) obj).length;
                    iZzy = zzfx.zzy(iA);
                } else {
                    iA = ((zzfp) obj).zzd();
                    iZzy = zzfx.zzy(iA);
                }
                break;
            case 12:
                return zzfx.zzy(((Integer) obj).intValue());
            case 13:
                return obj instanceof zzgr ? zzfx.zzz(((zzgr) obj).zza()) : zzfx.zzz(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                return 4;
            case 15:
                ((Long) obj).getClass();
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return zzfx.zzy((iIntValue >> 31) ^ (iIntValue + iIntValue));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return zzfx.zzz((jLongValue >> 63) ^ (jLongValue + jLongValue));
            default:
                n7.g("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iZzy + iA;
    }

    public static int c(zzgg zzggVar, Object obj) {
        zzjg zzjgVarZzb = zzggVar.zzb();
        int iZza = zzggVar.zza();
        if (!zzggVar.zze()) {
            return a(zzjgVarZzb, iZza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i = 0;
        if (!zzggVar.zzd()) {
            int iA = 0;
            while (i < size) {
                iA += a(zzjgVarZzb, iZza, list.get(i));
                i++;
            }
            return iA;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iB = 0;
        while (i < size) {
            iB += b(zzjgVarZzb, list.get(i));
            i++;
        }
        return zzfx.zzy(iB) + zzfx.zzy(iZza << 3) + iB;
    }

    public static void g(zzfx zzfxVar, zzjg zzjgVar, int i, Object obj) {
        if (zzjgVar == zzjg.zzj) {
            zzfxVar.zzs(i, 3);
            ((zzhr) obj).zzD(zzfxVar);
            zzfxVar.zzs(i, 4);
            return;
        }
        zzfxVar.zzs(i, zzjgVar.zza());
        zzjh zzjhVar = zzjh.zza;
        switch (zzjgVar.ordinal()) {
            case 0:
                zzfxVar.zzk(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                zzfxVar.zzi(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                zzfxVar.zzw(((Long) obj).longValue());
                break;
            case 3:
                zzfxVar.zzw(((Long) obj).longValue());
                break;
            case 4:
                zzfxVar.zzm(((Integer) obj).intValue());
                break;
            case 5:
                zzfxVar.zzk(((Long) obj).longValue());
                break;
            case 6:
                zzfxVar.zzi(((Integer) obj).intValue());
                break;
            case 7:
                zzfxVar.zzb(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof zzfp)) {
                    zzfxVar.zzr((String) obj);
                } else {
                    zzfxVar.zzg((zzfp) obj);
                }
                break;
            case 9:
                ((zzhr) obj).zzD(zzfxVar);
                break;
            case 10:
                zzfxVar.zzn((zzhr) obj);
                break;
            case 11:
                if (!(obj instanceof zzfp)) {
                    byte[] bArr = (byte[]) obj;
                    zzfxVar.a(bArr.length, bArr);
                } else {
                    zzfxVar.zzg((zzfp) obj);
                }
                break;
            case 12:
                zzfxVar.zzu(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof zzgr)) {
                    zzfxVar.zzm(((Integer) obj).intValue());
                } else {
                    zzfxVar.zzm(((zzgr) obj).zza());
                }
                break;
            case 14:
                zzfxVar.zzi(((Integer) obj).intValue());
                break;
            case 15:
                zzfxVar.zzk(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                zzfxVar.zzu((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                zzfxVar.zzw((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    public static boolean i(Map.Entry entry) {
        boolean zZzo;
        zzgg zzggVar = (zzgg) entry.getKey();
        if (zzggVar.zzc() == zzjh.zzi) {
            if (!zzggVar.zze()) {
                Object value = entry.getValue();
                if (value instanceof zzhs) {
                    return ((zzhs) value).zzo();
                }
                if (value instanceof slb) {
                    return true;
                }
                fg.c("Wrong object type used with protocol message reflection.");
                return false;
            }
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj instanceof zzhs) {
                    zZzo = ((zzhs) obj).zzo();
                } else {
                    if (!(obj instanceof slb)) {
                        fg.c("Wrong object type used with protocol message reflection.");
                        return false;
                    }
                    zZzo = true;
                }
                if (!zZzo) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final int j(Map.Entry entry) {
        int i;
        int iZzy;
        int iZzx;
        zzgg zzggVar = (zzgg) entry.getKey();
        Object value = entry.getValue();
        if (zzggVar.zzc() != zzjh.zzi || zzggVar.zze() || zzggVar.zzd()) {
            return c(zzggVar, value);
        }
        if (value instanceof slb) {
            slb slbVar = (slb) value;
            int iZza = ((zzgg) entry.getKey()).zza();
            int iZzy2 = zzfx.zzy(8);
            i = iZzy2 + iZzy2;
            iZzy = zzfx.zzy(iZza) + zzfx.zzy(16);
            int iZzy3 = zzfx.zzy(24);
            int iZzd = slbVar.c != null ? slbVar.c.zzd() : slbVar.d.zzn();
            iZzx = bj.b(iZzd, iZzd, iZzy3);
        } else {
            int iZza2 = ((zzgg) entry.getKey()).zza();
            int iZzy4 = zzfx.zzy(8);
            i = iZzy4 + iZzy4;
            iZzy = zzfx.zzy(iZza2) + zzfx.zzy(16);
            iZzx = zzfx.zzx((zzhr) value) + zzfx.zzy(24);
        }
        return i + iZzy + iZzx;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void k(zzgg zzggVar, Object obj) {
        boolean z;
        zzjg zzjgVarZzb = zzggVar.zzb();
        obj.getClass();
        zzjg zzjgVar = zzjg.zza;
        zzjh zzjhVar = zzjh.zza;
        switch (zzjgVarZzb.zzb().ordinal()) {
            case 0:
                z = obj instanceof Integer;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 1:
                z = obj instanceof Long;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 2:
                z = obj instanceof Float;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 3:
                z = obj instanceof Double;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 4:
                z = obj instanceof Boolean;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 5:
                z = obj instanceof String;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 6:
                if ((obj instanceof zzfp) || (obj instanceof byte[])) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 7:
                if ((obj instanceof Integer) || (obj instanceof zzgr)) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            case 8:
                if ((obj instanceof zzhr) || (obj instanceof slb)) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
            default:
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzggVar.zza()), zzggVar.zzb().zzb(), obj.getClass().getName()});
                break;
        }
    }

    public final Object clone() {
        xib xibVar = new xib();
        qqb qqbVar = this.a;
        int i = qqbVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            uqb uqbVarD = qqbVar.d(i2);
            xibVar.f(uqbVarD.b, uqbVarD.c);
        }
        for (Map.Entry entry : qqbVar.b()) {
            xibVar.f((zzgg) entry.getKey(), entry.getValue());
        }
        xibVar.c = this.c;
        return xibVar;
    }

    public final Iterator d() {
        qqb qqbVar = this.a;
        if (qqbVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.c ? new ilb(((frb) qqbVar.entrySet()).iterator()) : ((frb) qqbVar.entrySet()).iterator();
    }

    public final void e() {
        if (this.b) {
            return;
        }
        qqb qqbVar = this.a;
        int i = qqbVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = qqbVar.d(i2).c;
            if (obj instanceof zzgp) {
                zzgp zzgpVar = (zzgp) obj;
                kpb.b.a(zzgpVar.getClass()).b(zzgpVar);
                zzgpVar.b();
            }
        }
        Iterator it = qqbVar.b().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzgp) {
                zzgp zzgpVar2 = (zzgp) value;
                kpb.b.a(zzgpVar2.getClass()).b(zzgpVar2);
                zzgpVar2.b();
            }
        }
        qqbVar.a();
        this.b = true;
    }

    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof xib) {
                qqb qqbVar = ((xib) obj).a;
                qqb qqbVar2 = this.a;
                if (qqbVar2.size() == qqbVar.size() && qqbVar2.keySet().equals(qqbVar.keySet())) {
                    Iterator it = ((frb) qqbVar2.entrySet()).iterator();
                    do {
                        arb arbVar = (arb) it;
                        if (arbVar.hasNext()) {
                            Map.Entry entry = (Map.Entry) arbVar.next();
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            Object obj2 = qqbVar.get(key);
                            if (value == obj2) {
                                zEquals = true;
                            } else if (value == null || obj2 == null) {
                                zEquals = false;
                            } else if (value instanceof slb) {
                                zEquals = value.equals(obj2);
                            } else {
                                zEquals = obj2 instanceof slb ? obj2.equals(value) : value.equals(obj2);
                            }
                        }
                    } while (zEquals);
                }
            }
            return false;
        }
        return true;
    }

    public final void f(zzgg zzggVar, Object obj) {
        if (!zzggVar.zze()) {
            k(zzggVar, obj);
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
                k(zzggVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof slb) {
            this.c = true;
        }
        this.a.put(zzggVar, obj);
    }

    public final boolean h() {
        qqb qqbVar = this.a;
        int i = qqbVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            if (!i(qqbVar.d(i2))) {
                return false;
            }
        }
        Iterator it = qqbVar.b().iterator();
        while (it.hasNext()) {
            if (!i((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public xib() {
    }
}
