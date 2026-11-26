package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzba {
    public static final zzba zza = new zzba((Boolean) null, 100, (Boolean) null, (String) null);
    public final int a;
    public final String b;
    public final Boolean c;
    public final String d;
    public final EnumMap e;

    public zzba(Boolean bool, int i, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        this.e = enumMap;
        enumMap.put(zzjk.AD_USER_DATA, bool == null ? zzji.UNINITIALIZED : bool.booleanValue() ? zzji.GRANTED : zzji.DENIED);
        this.a = i;
        this.b = a();
        this.c = bool2;
        this.d = str;
    }

    public static zzba zzg(String str) {
        if (str == null || str.length() <= 0) {
            return zza;
        }
        String[] strArrSplit = str.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
        int i = Integer.parseInt(strArrSplit[0]);
        EnumMap enumMap = new EnumMap(zzjk.class);
        zzjk[] zzjkVarArrZza = zzjj.DMA.zza();
        int length = zzjkVarArrZza.length;
        int i2 = 1;
        int i3 = 0;
        while (i3 < length) {
            enumMap.put(zzjkVarArrZza[i3], zzjl.c(strArrSplit[i2].charAt(0)));
            i3++;
            i2++;
        }
        return new zzba(enumMap, i, (Boolean) null, (String) null);
    }

    public static zzba zzh(Bundle bundle, int i) {
        if (bundle == null) {
            return new zzba((Boolean) null, i, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(zzjk.class);
        for (zzjk zzjkVar : zzjj.DMA.zza()) {
            enumMap.put(zzjkVar, zzjl.b(bundle.getString(zzjkVar.zze)));
        }
        return new zzba(enumMap, i, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public static Boolean zzi(Bundle bundle) {
        zzji zzjiVarB;
        if (bundle == null || (zzjiVarB = zzjl.b(bundle.getString("ad_personalization"))) == null) {
            return null;
        }
        int iOrdinal = zzjiVarB.ordinal();
        if (iOrdinal == 2) {
            return Boolean.FALSE;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return Boolean.TRUE;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        for (zzjk zzjkVar : zzjj.DMA.zza()) {
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(zzjl.d((zzji) this.e.get(zzjkVar)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzba)) {
            return false;
        }
        zzba zzbaVar = (zzba) obj;
        if (this.b.equalsIgnoreCase(zzbaVar.b) && Objects.equals(this.c, zzbaVar.c)) {
            return Objects.equals(this.d, zzbaVar.d);
        }
        return false;
    }

    public final int hashCode() {
        int i;
        Boolean bool = this.c;
        if (bool == null) {
            i = 3;
        } else {
            i = true != bool.booleanValue() ? 13 : 7;
        }
        String str = this.d;
        return ((str == null ? 17 : str.hashCode()) * 137) + this.b.hashCode() + (i * 29);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zzjl.a(this.a));
        for (zzjk zzjkVar : zzjj.DMA.zza()) {
            sb.append(StringUtils.COMMA);
            sb.append(zzjkVar.zze);
            sb.append("=");
            zzji zzjiVar = (zzji) this.e.get(zzjkVar);
            if (zzjiVar == null) {
                sb.append("uninitialized");
            } else {
                int iOrdinal = zzjiVar.ordinal();
                if (iOrdinal == 0) {
                    sb.append("uninitialized");
                } else if (iOrdinal == 1) {
                    sb.append("eu_consent_policy");
                } else if (iOrdinal == 2) {
                    sb.append("denied");
                } else if (iOrdinal == 3) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.c;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.d;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    public final int zzb() {
        return this.a;
    }

    public final zzji zzc() {
        zzji zzjiVar = (zzji) this.e.get(zzjk.AD_USER_DATA);
        return zzjiVar == null ? zzji.UNINITIALIZED : zzjiVar;
    }

    public final boolean zzd() {
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            if (((zzji) it.next()) != zzji.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final String zze() {
        return this.b;
    }

    public final Bundle zzf() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.e.entrySet()) {
            int iOrdinal = ((zzji) entry.getValue()).ordinal();
            String str = iOrdinal != 2 ? iOrdinal != 3 ? null : "granted" : "denied";
            if (str != null) {
                bundle.putString(((zzjk) entry.getKey()).zze, str);
            }
        }
        Boolean bool = this.c;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str2 = this.d;
        if (str2 != null) {
            bundle.putString("cps_display_str", str2);
        }
        return bundle;
    }

    public final Boolean zzj() {
        return this.c;
    }

    public final String zzk() {
        return this.d;
    }

    public zzba(EnumMap enumMap, int i, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(zzjk.class);
        this.e = enumMap2;
        enumMap2.putAll(enumMap);
        this.a = i;
        this.b = a();
        this.c = bool;
        this.d = str;
    }
}
