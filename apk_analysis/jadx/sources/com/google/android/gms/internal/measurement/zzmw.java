package com.google.android.gms.internal.measurement;

import com.google.common.collect.a0;
import com.google.common.collect.d0;
import com.google.common.collect.o;
import defpackage.ag;
import defpackage.ah;
import defpackage.dg;
import defpackage.hi5;
import defpackage.xg;
import defpackage.y69;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmw {
    public static final zzmw b;
    public final o a;

    static {
        int i = o.g;
        b = new zzmw(a0.i);
    }

    public zzmw(o oVar) {
        this.a = oVar;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0101  */
    /* JADX WARN: Code duplicated, block: B:62:0x0163  */
    /* JADX WARN: Multi-variable type inference failed */
    public static zzmw zza(zzmw zzmwVar, com.google.common.collect.l lVar) {
        zzmw zzmwVar2;
        long j;
        long j2;
        if (lVar.isEmpty()) {
            return zzmwVar;
        }
        HashMap map = new HashMap(lVar);
        o oVar = zzmwVar.a;
        o.a aVar = new o.a(hi5.b);
        y69<E> it = oVar.iterator();
        while (true) {
            zzmw zzmwVar3 = null;
            if (!it.hasNext()) {
                for (String str : map.keySet()) {
                    Object obj = map.get(str);
                    int length = str.length();
                    if (length > 19) {
                        zzmwVar2 = zzmwVar3;
                        j = 0;
                        j2 = j;
                        break;
                    }
                    if (length == 0) {
                        zzmwVar2 = zzmwVar3;
                        j = 0;
                        j2 = 0;
                        break;
                    }
                    boolean z = false;
                    long jCharAt = str.charAt(0) - '0';
                    if (jCharAt >= 1) {
                        if (jCharAt > 9) {
                            zzmwVar2 = zzmwVar3;
                        } else {
                            int i = 1;
                            while (true) {
                                if (i >= length) {
                                    zzmwVar2 = zzmwVar3;
                                    j = 0;
                                    if (jCharAt >= 0 && jCharAt <= 2305843009213693951L) {
                                        j2 = jCharAt;
                                        break;
                                    }
                                    break;
                                }
                                int iCharAt = str.charAt(i) - '0';
                                zzmwVar2 = zzmwVar3;
                                if (!((iCharAt < 0 ? true : z) | (iCharAt > 9 ? true : z))) {
                                    jCharAt = (jCharAt * 10) + ((long) iCharAt);
                                    i++;
                                    z = false;
                                    zzmwVar3 = zzmwVar2;
                                }
                            }
                        }
                        j = 0;
                        j2 = 0;
                        break;
                    } else {
                        zzmwVar2 = zzmwVar3;
                        j = 0;
                    }
                    j2 = j;
                    break;
                    String str2 = j2 == j ? str : zzmwVar2;
                    if (obj instanceof String) {
                        aVar.c(new zzmv(j2, str2, 4, 0L, obj));
                    } else if (obj instanceof byte[]) {
                        aVar.c(new zzmv(j2, str2, 5, 0L, obj));
                    } else if (obj instanceof Boolean) {
                        aVar.c(new zzmv(j2, str2, ((Boolean) obj).booleanValue() ? 1 : 0, 0L, null));
                    } else if (obj instanceof Long) {
                        aVar.c(new zzmv(j2, str2, 2, ((Long) obj).longValue(), null));
                    } else {
                        if (!(obj instanceof Double)) {
                            String strValueOf = String.valueOf(obj);
                            ah.f(dg.c(new StringBuilder(str.length() + 28 + strValueOf.length()), "Cannot serialize override ", str, ": ", strValueOf));
                            return zzmwVar2;
                        }
                        aVar.c(new zzmv(j2, str2, 3, Double.doubleToRawLongBits(((Double) obj).doubleValue()), null));
                    }
                    zzmwVar3 = zzmwVar2;
                }
                return new zzmw(aVar.i());
            }
            zzmv zzmvVar = (zzmv) it.next();
            Object objRemove = map.remove(zzmvVar.zza());
            if (objRemove == null) {
                aVar.c(zzmvVar);
            } else if (objRemove instanceof String) {
                aVar.c(new zzmv(zzmvVar.b, zzmvVar.c, 4, 0L, objRemove));
            } else if (objRemove instanceof byte[]) {
                aVar.c(new zzmv(zzmvVar.b, zzmvVar.c, 5, 0L, objRemove));
            } else if (objRemove instanceof Boolean) {
                aVar.c(new zzmv(zzmvVar.b, zzmvVar.c, ((Boolean) objRemove).booleanValue() ? 1 : 0, 0L, null));
            } else if (objRemove instanceof Long) {
                aVar.c(new zzmv(zzmvVar.b, zzmvVar.c, 2, ((Long) objRemove).longValue(), null));
            } else {
                if (!(objRemove instanceof Double)) {
                    String strZza = zzmvVar.zza();
                    String string = objRemove.toString();
                    ah.f(dg.c(new StringBuilder(String.valueOf(strZza).length() + 46 + string.length()), "Cannot serialize override for existing flag ", strZza, ": ", string));
                    return null;
                }
                aVar.c(new zzmv(zzmvVar.b, zzmvVar.c, 3, Double.doubleToRawLongBits(((Double) objRemove).doubleValue()), null));
            }
        }
    }

    public static zzmw zzb() {
        return b;
    }

    public static zzmw zzd(zzacv zzacvVar) throws zzaeh {
        String strZzl;
        long j;
        zzmv zzmvVar;
        int iZzx = zzacvVar.zzx();
        if (iZzx < 0) {
            xg.e("Negative number of flags");
            return null;
        }
        int i = o.g;
        o.a aVar = new o.a(hi5.b);
        long j2 = 0;
        for (int i2 = 0; i2 < iZzx; i2++) {
            long jZzz = zzacvVar.zzz();
            int i3 = (int) jZzz;
            long j3 = jZzz >>> 3;
            if (j3 == 0) {
                j = 0;
                strZzl = zzacvVar.zzl();
            } else {
                long j4 = j3 + j2;
                if (j4 > 2305843009213693951L) {
                    xg.e("Flag name larger than max size");
                    return null;
                }
                strZzl = null;
                j = j4;
            }
            int i4 = i3 & 7;
            if (i4 == 0 || i4 == 1) {
                zzmvVar = new zzmv(j, strZzl, i4, 0L, null);
            } else if (i4 == 2) {
                zzmvVar = new zzmv(j, strZzl, i4, zzacvVar.zzz(), null);
            } else if (i4 == 3) {
                zzmvVar = new zzmv(j, strZzl, i4, Double.doubleToRawLongBits(zzacvVar.zzd()), null);
            } else if (i4 == 4) {
                zzmvVar = new zzmv(j, strZzl, i4, 0L, zzacvVar.zzl());
            } else {
                if (i4 != 5) {
                    xg.e(ag.d(new StringBuilder(String.valueOf(i4).length() + 23), "Unrecognized flag type ", i4));
                    return null;
                }
                zzmvVar = new zzmv(j, strZzl, i4, 0L, zzacvVar.zzo());
            }
            long j5 = zzmvVar.b;
            if (j5 != 0) {
                j2 = j5;
            }
            aVar.c(zzmvVar);
        }
        return new zzmw(aVar.i());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzmw)) {
            return false;
        }
        return this.a.equals(((zzmw) obj).a);
    }

    public final int hashCode() {
        o oVar = this.a;
        oVar.getClass();
        return d0.c(oVar);
    }

    public final void zzc(com.google.common.collect.l.a aVar) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            zzmv zzmvVar = (zzmv) it.next();
            aVar.b(zzmvVar.zza(), zzmvVar.zzb());
        }
    }

    public final o zze() {
        return this.a;
    }

    public final int zzf() {
        return this.a.size();
    }
}
