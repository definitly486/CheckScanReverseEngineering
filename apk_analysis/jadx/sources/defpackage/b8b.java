package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcr;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdn;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzej;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzew;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfr;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhg;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class b8b {
    public static final b8b d = new b8b(0);
    public final vib a = new vib();
    public boolean b;
    public boolean c;

    public b8b(int i) {
        d();
        d();
    }

    public static int a(zzdw zzdwVar, Object obj) {
        int iZzd;
        int iZzA;
        zzhf zzhfVarZzd = zzdwVar.zzd();
        int iZza = zzdwVar.zza();
        zzdwVar.zzg();
        int iZzA2 = zzdn.zzA(iZza << 3);
        if (zzhfVarZzd == zzhf.zzj) {
            Charset charset = zzep.a;
            if (((zzfm) obj) instanceof zzcr) {
                throw null;
            }
            iZzA2 += iZzA2;
        }
        zzhg zzhgVar = zzhg.zza;
        int iZzB = 4;
        switch (zzhfVarZzd.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                iZzB = 8;
                return iZzA2 + iZzB;
            case 1:
                ((Float) obj).getClass();
                return iZzA2 + iZzB;
            case 2:
                iZzB = zzdn.zzB(((Long) obj).longValue());
                return iZzA2 + iZzB;
            case 3:
                iZzB = zzdn.zzB(((Long) obj).longValue());
                return iZzA2 + iZzB;
            case 4:
                iZzB = zzdn.zzB(((Integer) obj).intValue());
                return iZzA2 + iZzB;
            case 5:
                ((Long) obj).getClass();
                iZzB = 8;
                return iZzA2 + iZzB;
            case 6:
                ((Integer) obj).getClass();
                return iZzA2 + iZzB;
            case 7:
                ((Boolean) obj).getClass();
                iZzB = 1;
                return iZzA2 + iZzB;
            case 8:
                if (obj instanceof zzdf) {
                    iZzd = ((zzdf) obj).zzd();
                    iZzA = zzdn.zzA(iZzd);
                    iZzB = iZzA + iZzd;
                } else {
                    iZzB = zzdn.zzz((String) obj);
                }
                return iZzA2 + iZzB;
            case 9:
                iZzB = ((zzfm) obj).zzF();
                return iZzA2 + iZzB;
            case 10:
                if (obj instanceof zzew) {
                    iZzd = ((zzew) obj).zza();
                    iZzA = zzdn.zzA(iZzd);
                    iZzB = iZzA + iZzd;
                } else {
                    iZzB = zzdn.zzx((zzfm) obj);
                }
                return iZzA2 + iZzB;
            case 11:
                if (obj instanceof zzdf) {
                    iZzd = ((zzdf) obj).zzd();
                    iZzA = zzdn.zzA(iZzd);
                } else {
                    iZzd = ((byte[]) obj).length;
                    iZzA = zzdn.zzA(iZzd);
                }
                iZzB = iZzA + iZzd;
                return iZzA2 + iZzB;
            case 12:
                iZzB = zzdn.zzA(((Integer) obj).intValue());
                return iZzA2 + iZzB;
            case 13:
                iZzB = obj instanceof zzej ? zzdn.zzB(((zzej) obj).zza()) : zzdn.zzB(((Integer) obj).intValue());
                return iZzA2 + iZzB;
            case 14:
                ((Integer) obj).getClass();
                return iZzA2 + iZzB;
            case 15:
                ((Long) obj).getClass();
                iZzB = 8;
                return iZzA2 + iZzB;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                iZzB = zzdn.zzA((iIntValue >> 31) ^ (iIntValue + iIntValue));
                return iZzA2 + iZzB;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                iZzB = zzdn.zzB((jLongValue >> 63) ^ (jLongValue + jLongValue));
                return iZzA2 + iZzB;
            default:
                n7.g("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
    }

    public static boolean h(Map.Entry entry) {
        zzdw zzdwVar = (zzdw) entry.getKey();
        if (zzdwVar.zze() != zzhg.zzi) {
            return true;
        }
        zzdwVar.zzg();
        Object value = entry.getValue();
        if (value instanceof zzfn) {
            return ((zzfn) value).zzad();
        }
        if (value instanceof zzew) {
            return true;
        }
        fg.c("Wrong object type used with protocol message reflection.");
        return false;
    }

    public static final int i(Map.Entry entry) {
        int i;
        int iZzA;
        int iZzx;
        zzdw zzdwVar = (zzdw) entry.getKey();
        Object value = entry.getValue();
        if (zzdwVar.zze() != zzhg.zzi) {
            return a(zzdwVar, value);
        }
        zzdwVar.zzg();
        zzdwVar.zzf();
        if (value instanceof zzew) {
            int iZza = ((zzdw) entry.getKey()).zza();
            int iZzA2 = zzdn.zzA(8);
            i = iZzA2 + iZzA2;
            iZzA = zzdn.zzA(iZza) + zzdn.zzA(16);
            int iZzA3 = zzdn.zzA(24);
            int iZza2 = ((zzew) value).zza();
            iZzx = ah.b(iZza2, iZza2, iZzA3);
        } else {
            int iZza3 = ((zzdw) entry.getKey()).zza();
            int iZzA4 = zzdn.zzA(8);
            i = iZzA4 + iZzA4;
            iZzA = zzdn.zzA(iZza3) + zzdn.zzA(16);
            iZzx = zzdn.zzx((zzfm) value) + zzdn.zzA(24);
        }
        return i + iZzA + iZzx;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final b8b clone() {
        b8b b8bVar = new b8b();
        vib vibVar = this.a;
        int i = vibVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            ajb ajbVarD = vibVar.d(i2);
            b8bVar.e((zzdw) ajbVarD.b, ajbVarD.c);
        }
        for (Map.Entry entry : vibVar.b()) {
            b8bVar.e((zzdw) entry.getKey(), entry.getValue());
        }
        b8bVar.c = this.c;
        return b8bVar;
    }

    public final Iterator c() {
        vib vibVar = this.a;
        if (vibVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.c ? new kcb(((qjb) vibVar.entrySet()).iterator()) : ((qjb) vibVar.entrySet()).iterator();
    }

    public final void d() {
        if (this.b) {
            return;
        }
        vib vibVar = this.a;
        int i = vibVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = vibVar.d(i2).c;
            if (obj instanceof zzeh) {
                zzeh zzehVar = (zzeh) obj;
                zzehVar.getClass();
                lgb.c.a(zzehVar.getClass()).b(zzehVar);
                zzehVar.e();
            }
        }
        vibVar.a();
        this.b = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x004e  */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzej) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if ((r4 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0048, code lost:
    
        if (r0 != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzew) == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw r3, java.lang.Object r4) {
        /*
            r2 = this;
            r3.zzg()
            com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf r0 = r3.zzd()
            java.nio.charset.Charset r1 = com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep.a
            r4.getClass()
            com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf r1 = com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf.zza
            com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhg r1 = com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhg.zza
            com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhg r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L46;
                case 1: goto L43;
                case 2: goto L40;
                case 3: goto L3d;
                case 4: goto L3a;
                case 5: goto L37;
                case 6: goto L2e;
                case 7: goto L25;
                case 8: goto L1c;
                default: goto L1b;
            }
        L1b:
            goto L57
        L1c:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzew
            if (r0 == 0) goto L57
            goto L4a
        L25:
            boolean r0 = r4 instanceof java.lang.Integer
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzej
            if (r0 == 0) goto L57
            goto L4a
        L2e:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof byte[]
            if (r0 == 0) goto L57
            goto L4a
        L37:
            boolean r0 = r4 instanceof java.lang.String
            goto L48
        L3a:
            boolean r0 = r4 instanceof java.lang.Boolean
            goto L48
        L3d:
            boolean r0 = r4 instanceof java.lang.Double
            goto L48
        L40:
            boolean r0 = r4 instanceof java.lang.Float
            goto L48
        L43:
            boolean r0 = r4 instanceof java.lang.Long
            goto L48
        L46:
            boolean r0 = r4 instanceof java.lang.Integer
        L48:
            if (r0 == 0) goto L57
        L4a:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzew
            if (r0 == 0) goto L51
            r0 = 1
            r2.c = r0
        L51:
            vib r2 = r2.a
            r2.put(r3, r4)
            return
        L57:
            int r2 = r3.zza()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhf r3 = r3.zzd()
            com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhg r3 = r3.zza()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            java.lang.Object[] r2 = new java.lang.Object[]{r2, r3, r4}
            java.lang.String r3 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            defpackage.nz0.d(r3, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b8b.e(com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw, java.lang.Object):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b8b) {
            return this.a.equals(((b8b) obj).a);
        }
        return false;
    }

    public final boolean f() {
        vib vibVar = this.a;
        int i = vibVar.c;
        for (int i2 = 0; i2 < i; i2++) {
            if (!h(vibVar.d(i2))) {
                return false;
            }
        }
        Iterator it = vibVar.b().iterator();
        while (it.hasNext()) {
            if (!h((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void g(Map.Entry entry) {
        zzdw zzdwVar = (zzdw) entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zzew;
        zzdwVar.zzg();
        zzhg zzhgVarZze = zzdwVar.zze();
        zzhg zzhgVar = zzhg.zzi;
        vib vibVar = this.a;
        if (zzhgVarZze != zzhgVar) {
            if (z) {
                ah.f("Lazy fields must be message-valued");
                return;
            }
            if (value instanceof zzfr) {
                value = ((zzfr) value).zzc();
            } else if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                System.arraycopy(bArr, 0, bArr2, 0, length);
                value = bArr2;
            }
            vibVar.put(zzdwVar, value);
            return;
        }
        Object obj = vibVar.get(zzdwVar);
        if (obj instanceof zzew) {
            throw null;
        }
        if (obj != null) {
            if (z) {
                throw null;
            }
            vibVar.put(zzdwVar, obj instanceof zzfr ? zzdwVar.zzc((zzfr) obj, (zzfr) value) : zzdwVar.zzb(((zzfm) obj).zzaa(), (zzfm) value).zzj());
            return;
        }
        if (value instanceof zzfr) {
            value = ((zzfr) value).zzc();
        } else if (value instanceof byte[]) {
            byte[] bArr3 = (byte[]) value;
            int length2 = bArr3.length;
            byte[] bArr4 = new byte[length2];
            System.arraycopy(bArr3, 0, bArr4, 0, length2);
            value = bArr4;
        }
        vibVar.put(zzdwVar, value);
        if (z) {
            this.c = true;
        }
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public b8b() {
    }
}
