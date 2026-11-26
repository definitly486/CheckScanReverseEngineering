package com.google.android.gms.internal.measurement;

import androidx.media3.muxer.MuxerUtil;
import defpackage.ah;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.Formattable;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyy extends zzabm implements zzabi {
    public final Object[] d;
    public final StringBuilder e;
    public int f;

    public zzyy(zzaaf zzaafVar, Object[] objArr, StringBuilder sb) {
        super(zzaafVar);
        this.f = 0;
        this.d = objArr;
        this.e = sb;
    }

    public static void a(StringBuilder sb, Object obj, String str) {
        sb.append("[INVALID: format=");
        sb.append(str);
        sb.append(", type=");
        sb.append(obj.getClass().getCanonicalName());
        sb.append(", value=");
        sb.append(zzzh.zza(obj));
        sb.append("]");
    }

    public static StringBuilder zza(zzzd zzzdVar, StringBuilder sb) {
        if (zzzdVar.zzh() == null) {
            sb.append(zzzh.zza(zzzdVar.zzj()));
            return sb;
        }
        zzyy zzyyVar = new zzyy(zzzdVar.zzh(), zzzdVar.zzi(), sb);
        StringBuilder sb2 = (StringBuilder) zzyyVar.zzl();
        if (zzzdVar.zzi().length > zzyyVar.zzj()) {
            sb2.append(" [ERROR: UNUSED LOG ARGUMENTS]");
        }
        return sb2;
    }

    @Override // com.google.android.gms.internal.measurement.zzabm
    public final void zzb(int i, int i2, zzabh zzabhVar) {
        zzh().zzd(this.e, zzi(), this.f, i);
        zzabhVar.zze(this, this.d);
        this.f = i2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    /* JADX WARN: Code duplicated, block: B:92:0x010f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0115  */
    @Override // com.google.android.gms.internal.measurement.zzabi
    public final void zzc(Object obj, zzyz zzyzVar, zzza zzzaVar) {
        boolean zIsValidCodePoint;
        int iOrdinal = zzyzVar.zzc().ordinal();
        StringBuilder sb = this.e;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                zIsValidCodePoint = obj instanceof Boolean;
            } else if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        throw null;
                    }
                    if ((obj instanceof Double) || (obj instanceof Float) || (obj instanceof BigDecimal)) {
                        zIsValidCodePoint = true;
                    } else {
                        zIsValidCodePoint = false;
                    }
                } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof BigInteger)) {
                    zIsValidCodePoint = true;
                } else {
                    zIsValidCodePoint = false;
                }
            } else if (obj instanceof Character) {
                zIsValidCodePoint = true;
            } else if ((obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short)) {
                zIsValidCodePoint = Character.isValidCodePoint(((Number) obj).intValue());
            } else {
                zIsValidCodePoint = false;
            }
            if (!zIsValidCodePoint) {
                a(sb, obj, zzyzVar.zze());
                return;
            }
        }
        int iOrdinal2 = zzyzVar.ordinal();
        if (iOrdinal2 != 0) {
            if (iOrdinal2 == 1) {
                if (zzzaVar.zze()) {
                    sb.append(obj);
                    return;
                }
            } else if (iOrdinal2 != 2) {
                if (iOrdinal2 != 3) {
                    if (iOrdinal2 == 5 && zzzaVar.zzd(128, false, false).equals(zzzaVar)) {
                        Number number = (Number) obj;
                        Locale locale = zzzh.a;
                        boolean zZzk = zzzaVar.zzk();
                        long jLongValue = number.longValue();
                        if (number instanceof Long) {
                            zzzh.a(sb, jLongValue, zZzk);
                            return;
                        }
                        if (number instanceof Integer) {
                            zzzh.a(sb, jLongValue & MuxerUtil.UNSIGNED_INT_MAX_VALUE, zZzk);
                            return;
                        }
                        if (number instanceof Byte) {
                            zzzh.a(sb, jLongValue & 255, zZzk);
                            return;
                        }
                        if (number instanceof Short) {
                            zzzh.a(sb, jLongValue & 65535, zZzk);
                            return;
                        }
                        if (!(number instanceof BigInteger)) {
                            ah.f("unsupported number type: ".concat(String.valueOf(number.getClass())));
                            return;
                        }
                        String string = ((BigInteger) number).toString(16);
                        if (zZzk) {
                            string = string.toUpperCase(zzzh.a);
                        }
                        sb.append(string);
                        return;
                    }
                } else if (zzzaVar.zze()) {
                    sb.append(obj);
                    return;
                }
            } else if (zzzaVar.zze()) {
                if (obj instanceof Character) {
                    sb.append(obj);
                    return;
                }
                int iIntValue = ((Number) obj).intValue();
                if ((iIntValue >>> 16) == 0) {
                    sb.append((char) iIntValue);
                    return;
                } else {
                    sb.append(Character.toChars(iIntValue));
                    return;
                }
            }
        } else if (obj instanceof Formattable) {
            zzzh.zzb((Formattable) obj, sb, zzzaVar);
            return;
        } else if (zzzaVar.zze()) {
            sb.append(zzzh.zza(obj));
            return;
        }
        String strZze = zzyzVar.zze();
        if (!zzzaVar.zze()) {
            int iZzb = zzyzVar.zzb();
            if (zzzaVar.zzk()) {
                iZzb &= 65503;
            }
            StringBuilder sb2 = new StringBuilder("%");
            zzzaVar.zzl(sb2);
            sb2.append((char) iZzb);
            strZze = sb2.toString();
        }
        sb.append(String.format(zzzh.a, strZze, obj));
    }

    @Override // com.google.android.gms.internal.measurement.zzabi
    public final void zzd(Object obj, zzabf zzabfVar, zzza zzzaVar) {
        boolean z = obj instanceof Date;
        StringBuilder sb = this.e;
        if (z || (obj instanceof Calendar) || (obj instanceof Long)) {
            StringBuilder sb2 = new StringBuilder("%");
            zzzaVar.zzl(sb2);
            sb2.append(true != zzzaVar.zzk() ? 't' : 'T');
            sb2.append(zzabfVar.zzb());
            sb.append(String.format(zzzh.a, sb2.toString(), obj));
            return;
        }
        char cZzb = zzabfVar.zzb();
        StringBuilder sb3 = new StringBuilder(String.valueOf(cZzb).length() + 2);
        sb3.append("%t");
        sb3.append(cZzb);
        a(sb, obj, sb3.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzabi
    public final void zze() {
        this.e.append("[ERROR: MISSING LOG ARGUMENT]");
    }

    @Override // com.google.android.gms.internal.measurement.zzabi
    public final void zzf() {
        this.e.append("null");
    }

    @Override // com.google.android.gms.internal.measurement.zzabm
    public final /* bridge */ /* synthetic */ Object zzg() {
        zzabn zzabnVarZzh = zzh();
        String strZzi = zzi();
        int i = this.f;
        int length = zzi().length();
        StringBuilder sb = this.e;
        zzabnVarZzh.zzd(sb, strZzi, i, length);
        return sb;
    }
}
