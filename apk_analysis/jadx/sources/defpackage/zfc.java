package defpackage;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.internal.measurement.zzvy;
import com.google.android.gms.internal.measurement.zzwo;
import com.google.android.gms.internal.measurement.zzwq;
import com.google.android.gms.internal.measurement.zzws;
import com.google.android.gms.internal.measurement.zzxb;
import com.google.common.collect.l;
import com.google.common.collect.n;
import com.google.common.collect.x;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zfc implements zzws {
    public final zfc b;
    public final UUID c;
    public final String d;
    public final String e;
    public Thread f;

    public zfc(String str, zfc zfcVar, zzwq zzwqVar) {
        this.e = str;
        this.b = zfcVar;
        this.c = zfcVar.zzc();
        this.d = zfcVar.zzd();
        zzxb zzxbVar = zzwqVar.zzc;
        this.f = Thread.currentThread();
    }

    public static String zzcL(UUID uuid) {
        return "tk-trace-id: ".concat(String.valueOf(Long.toString(uuid.getLeastSignificantBits() >>> 1, 36)));
    }

    @Override // com.google.android.gms.internal.measurement.zzwt, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVar = zzwqVarZzd.b;
        if (zzwsVar == null) {
            String strZze = zze();
            throw new egc(kh.c(new StringBuilder(String.valueOf(strZze).length() + TypedValues.TYPE_TARGET), "Tried to end [", strZze, "], but no trace was active. This is caused by mismatched or missing calls to beginSpan."));
        }
        if (this == zzwsVar) {
            zzvy.zzc(zzwqVarZzd, zzwsVar.zzb());
            this.f = null;
            return;
        }
        String strZze2 = zze();
        String strZze3 = zzwsVar.zze();
        StringBuilder sb = new StringBuilder(String.valueOf(strZze2).length() + 79 + String.valueOf(strZze3).length() + 1);
        kv2.c(sb, "Tried to end span ", strZze2, ", but that span is not the current span. The current span is ", strZze3);
        sb.append(".");
        throw new fgc(sb.toString());
    }

    /* JADX WARN: Code duplicated, block: B:134:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x0064  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ef  */
    public final String toString() {
        int i;
        int i2;
        zzwo zzwoVar;
        Iterator it;
        vgc vgcVar;
        int i3;
        wgc wgcVar;
        AtomicReference atomicReference = zzvy.a;
        int i4 = 0;
        int length = 0;
        zzws zzwsVarZzb = this;
        while (zzwsVarZzb != null) {
            i4++;
            length += zzwsVarZzb.zze().length();
            zzwsVarZzb = zzwsVarZzb.zzb();
            if (zzwsVarZzb != null) {
                length += 4;
            }
        }
        if (i4 > 250) {
            String[] strArr = new String[i4];
            zzws zzwsVarZzb2 = this;
            for (int i5 = i4 - 1; i5 >= 0; i5--) {
                strArr[i5] = zzwsVarZzb2.zze();
                zzwsVarZzb2 = zzwsVarZzb2.zzb();
            }
            l.a aVarA = l.a();
            Iterator it2 = n.o(strArr).iterator();
            int i6 = 0;
            while (it2.hasNext()) {
                aVarA.b(it2.next(), Integer.valueOf(i6));
                i6++;
            }
            int i7 = 1;
            x xVarA = aVarA.a(true);
            int i8 = i4 >> 2;
            if (xVarA.g > i8) {
                zzwoVar = null;
            } else {
                int i9 = i4 + 1;
                int[] iArr = new int[i9];
                for (int i10 = 0; i10 < i4; i10++) {
                    iArr[i10] = ((Integer) xVarA.get(strArr[i10])).intValue();
                }
                iArr[i4] = xVarA.g;
                xgc xgcVar = new xgc(iArr);
                int i11 = 0;
                while (true) {
                    int i12 = -1;
                    if (i11 >= i9) {
                        break;
                    }
                    xgcVar.f += i7;
                    int i13 = iArr[i11];
                    while (true) {
                        wgc wgcVar2 = null;
                        while (true) {
                            if (xgcVar.f <= 0) {
                                i3 = i7;
                                break;
                            }
                            int i14 = xgcVar.e;
                            wgcVar = xgcVar.c;
                            i3 = i7;
                            if (i14 == 0) {
                                break;
                            }
                            int i15 = ((wgc) wgcVar.d.get(Integer.valueOf(iArr[xgcVar.d]))).a;
                            int i16 = xgcVar.e;
                            if (iArr[i15 + i16] == i13) {
                                if (wgcVar2 != null) {
                                    wgcVar2.c = xgcVar.c;
                                }
                                xgcVar.e = i16 + 1;
                                xgcVar.a();
                                break;
                            }
                            wgc wgcVar3 = (wgc) xgcVar.c.d.get(Integer.valueOf(iArr[xgcVar.d]));
                            int i17 = wgcVar3.a;
                            int i18 = i12;
                            wgc wgcVar4 = new wgc(i17, (xgcVar.e + i17) - 1);
                            xgcVar.c.d.put(Integer.valueOf(iArr[xgcVar.d]), wgcVar4);
                            int i19 = wgcVar4.b + 1;
                            Integer numValueOf = Integer.valueOf(iArr[i19]);
                            HashMap map = wgcVar4.d;
                            map.put(numValueOf, wgcVar3);
                            wgcVar3.a = i19;
                            if (wgcVar2 != null) {
                                wgcVar2.c = wgcVar4;
                            }
                            map.put(Integer.valueOf(i13), new wgc(i11, 1073741824));
                            xgcVar.f--;
                            xgcVar.b();
                            wgcVar2 = wgcVar4;
                            i7 = i3;
                            i12 = i18;
                        }
                        HashMap map2 = wgcVar.d;
                        Integer numValueOf2 = Integer.valueOf(i13);
                        if (map2.containsKey(numValueOf2)) {
                            if (wgcVar2 != null) {
                                wgcVar2.c = xgcVar.c;
                            }
                            xgcVar.d = i11;
                            xgcVar.e++;
                            xgcVar.a();
                            break;
                        }
                        xgcVar.c.d.put(numValueOf2, new wgc(i11, 1073741824));
                        if (wgcVar2 != null) {
                            wgcVar2.c = xgcVar.c;
                        }
                        xgcVar.f += i12;
                        xgcVar.b();
                        i7 = i3;
                    }
                    i11++;
                    i7 = i3;
                }
                int i20 = i7;
                ArrayDeque arrayDeque = new ArrayDeque();
                wgc wgcVar5 = xgcVar.b;
                vgc vgcVar2 = new vgc(wgcVar5, 0, -1, -1);
                arrayDeque.push(vgcVar2);
                while (!arrayDeque.isEmpty()) {
                    vgc vgcVar3 = (vgc) arrayDeque.pop();
                    Iterator it3 = vgcVar3.d.d.values().iterator();
                    while (it3.hasNext()) {
                        wgc wgcVar6 = (wgc) it3.next();
                        int i21 = vgcVar3.b;
                        int i22 = vgcVar3.c;
                        int i23 = wgcVar6.a;
                        wgc wgcVar7 = wgcVar5;
                        int i24 = wgcVar6.b;
                        if (xgcVar.d(i21, i22, i23, i24)) {
                            it = it3;
                        } else {
                            if (wgcVar6.d.isEmpty()) {
                                int i25 = wgcVar6.a;
                                it = it3;
                                if (xgcVar.d(i21, i22, i25, (i25 + i22) - i21)) {
                                }
                                if (vgcVar2.a < vgcVar.a) {
                                    vgcVar2 = vgcVar;
                                }
                                arrayDeque.push(vgcVar);
                                wgcVar5 = wgcVar7;
                                it3 = it;
                                i20 = 1;
                            } else {
                                it = it3;
                            }
                            vgcVar = new vgc(wgcVar6, i20, wgcVar6.a, i24);
                            if (vgcVar2.a < vgcVar.a) {
                                vgcVar2 = vgcVar;
                            }
                            arrayDeque.push(vgcVar);
                            wgcVar5 = wgcVar7;
                            it3 = it;
                            i20 = 1;
                        }
                        vgcVar = new vgc(wgcVar6, vgcVar3.a + i20, i21, i22);
                        if (vgcVar2.a < vgcVar.a) {
                            vgcVar2 = vgcVar;
                        }
                        arrayDeque.push(vgcVar);
                        wgcVar5 = wgcVar7;
                        it3 = it;
                        i20 = 1;
                    }
                    i20 = 1;
                }
                int iMin = Math.min(iArr.length, vgcVar2.c + 1);
                int i26 = 0;
                loop9: while (true) {
                    i = vgcVar2.b;
                    i2 = iMin - i;
                    wgcVar5 = (wgc) wgcVar5.d.get(Integer.valueOf(iArr[(i26 % i2) + i]));
                    if (wgcVar5 == null) {
                        break;
                    }
                    for (int i27 = wgcVar5.a; i27 < wgcVar5.b + 1 && i27 < iArr.length; i27++) {
                        if (iArr[(i26 % i2) + i] != iArr[i27]) {
                            break loop9;
                        }
                        i26++;
                    }
                }
                zzwo zzwoVar2 = new zzwo(i, iMin, i26 / i2);
                if ((zzwoVar2.b - zzwoVar2.a) * zzwoVar2.c < i8) {
                    zzwoVar = null;
                } else {
                    zzwoVar = zzwoVar2;
                }
            }
            String strConcat = "";
            if (zzwoVar != null) {
                int i28 = zzwoVar.a;
                String strConcat2 = i28 > 0 ? String.valueOf(TextUtils.join(" -> ", Arrays.copyOf(strArr, i28))).concat(" -> ") : "";
                int i29 = zzwoVar.b;
                int i30 = zzwoVar.c;
                int i31 = ((i29 - i28) * i30) + i28;
                strConcat = i31 < i4 ? " -> ".concat(String.valueOf(TextUtils.join(" -> ", Arrays.copyOfRange(strArr, i31, i4)))) : "";
                String strJoin = TextUtils.join(" -> ", Arrays.copyOfRange(strArr, i28, i29));
                Locale locale = Locale.US;
                strConcat = strConcat2 + "{" + strJoin + "}x" + i30 + strConcat;
            }
            if (!strConcat.isEmpty()) {
                return strConcat;
            }
        }
        char[] cArr = new char[length];
        zzws zzwsVarZzb3 = this;
        while (zzwsVarZzb3 != null) {
            String strZze = zzwsVarZzb3.zze();
            length -= strZze.length();
            strZze.getChars(0, strZze.length(), cArr, length);
            zzwsVarZzb3 = zzwsVarZzb3.zzb();
            if (zzwsVarZzb3 != null) {
                length -= 4;
                " -> ".getChars(0, 4, cArr, length);
            }
        }
        return new String(cArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final Thread zza() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final UUID zzc() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final String zzd() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final String zze() {
        return this.e;
    }

    public zfc(String str, UUID uuid, String str2, zzwq zzwqVar) {
        this.e = str;
        this.b = null;
        this.c = uuid;
        this.d = str2;
        zzxb zzxbVar = zzwqVar.zzc;
        this.f = Thread.currentThread();
    }
}
