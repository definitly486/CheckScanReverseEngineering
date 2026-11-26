package com.google.android.gms.internal.measurement;

import defpackage.ag;
import defpackage.ah;
import defpackage.aqa;
import defpackage.fg;
import defpackage.wqa;
import defpackage.yq;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class zzae implements Iterable, zzao, zzak {
    public final TreeMap b;
    public final TreeMap c;

    public zzae(List list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                zzn(i, (zzao) list.get(i));
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzae)) {
            return false;
        }
        zzae zzaeVar = (zzae) obj;
        if (zzh() != zzaeVar.zzh()) {
            return false;
        }
        TreeMap treeMap = this.b;
        if (treeMap.isEmpty()) {
            return zzaeVar.b.isEmpty();
        }
        for (int iIntValue = ((Integer) treeMap.firstKey()).intValue(); iIntValue <= ((Integer) treeMap.lastKey()).intValue(); iIntValue++) {
            if (!zzl(iIntValue).equals(zzaeVar.zzl(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new wqa(this);
    }

    public final String toString() {
        return zzs(StringUtils.COMMA);
    }

    public final List zzb() {
        ArrayList arrayList = new ArrayList(zzh());
        for (int i = 0; i < zzh(); i++) {
            arrayList.add(zzl(i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        return zzs(StringUtils.COMMA);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzcG(String str, zzg zzgVar, List list) {
        return ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || "pop".equals(str) || "push".equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str) || "sort".equals(str) || "splice".equals(str) || "toString".equals(str) || "unshift".equals(str)) ? zzba.zza(str, this, zzgVar, list) : zzak.zzu(this, new zzas(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        TreeMap treeMap = this.b;
        if (treeMap.size() == 1) {
            return zzl(0).zzd();
        }
        return treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return new aqa(this, this.b.keySet().iterator(), this.c.keySet().iterator());
    }

    public final Iterator zzg() {
        return this.b.keySet().iterator();
    }

    public final int zzh() {
        TreeMap treeMap = this.b;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final int zzi() {
        return this.b.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final boolean zzj(String str) {
        return "length".equals(str) || this.c.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final zzao zzk(String str) {
        zzao zzaoVar;
        if ("length".equals(str)) {
            return new zzah(Double.valueOf(zzh()));
        }
        return (!zzj(str) || (zzaoVar = (zzao) this.c.get(str)) == null) ? zzao.zzf : zzaoVar;
    }

    public final zzao zzl(int i) {
        zzao zzaoVar;
        if (i < zzh()) {
            return (!zzo(i) || (zzaoVar = (zzao) this.b.get(Integer.valueOf(i))) == null) ? zzao.zzf : zzaoVar;
        }
        yq.d("Attempting to get element outside of current array");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final void zzm(String str, zzao zzaoVar) {
        TreeMap treeMap = this.c;
        if (zzaoVar == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, zzaoVar);
        }
    }

    @RequiresNonNull({"elements"})
    public final void zzn(int i, zzao zzaoVar) {
        if (i > 32468) {
            ah.f("Array too large");
            return;
        }
        if (i < 0) {
            yq.d(ag.d(new StringBuilder(String.valueOf(i).length() + 21), "Out of bounds index: ", i));
            return;
        }
        TreeMap treeMap = this.b;
        if (zzaoVar == null) {
            treeMap.remove(Integer.valueOf(i));
        } else {
            treeMap.put(Integer.valueOf(i), zzaoVar);
        }
    }

    public final boolean zzo(int i) {
        if (i >= 0) {
            TreeMap treeMap = this.b;
            if (i <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i));
            }
        }
        yq.d(ag.d(new StringBuilder(String.valueOf(i).length() + 21), "Out of bounds index: ", i));
        return false;
    }

    public final void zzp() {
        this.b.clear();
    }

    public final void zzq(int i, zzao zzaoVar) {
        if (i < 0) {
            fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 21), "Invalid value index: ", i));
            return;
        }
        if (i >= zzh()) {
            zzn(i, zzaoVar);
            return;
        }
        TreeMap treeMap = this.b;
        for (int iIntValue = ((Integer) treeMap.lastKey()).intValue(); iIntValue >= i; iIntValue--) {
            Integer numValueOf = Integer.valueOf(iIntValue);
            zzao zzaoVar2 = (zzao) treeMap.get(numValueOf);
            if (zzaoVar2 != null) {
                zzn(iIntValue + 1, zzaoVar2);
                treeMap.remove(numValueOf);
            }
        }
        zzn(i, zzaoVar);
    }

    public final void zzr(int i) {
        TreeMap treeMap = this.b;
        int iIntValue = ((Integer) treeMap.lastKey()).intValue();
        if (i > iIntValue || i < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i));
        if (i == iIntValue) {
            int i2 = i - 1;
            Integer numValueOf = Integer.valueOf(i2);
            if (treeMap.containsKey(numValueOf) || i2 < 0) {
                return;
            }
            treeMap.put(numValueOf, zzao.zzf);
            return;
        }
        while (true) {
            i++;
            if (i > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer numValueOf2 = Integer.valueOf(i);
            zzao zzaoVar = (zzao) treeMap.get(numValueOf2);
            if (zzaoVar != null) {
                treeMap.put(Integer.valueOf(i - 1), zzaoVar);
                treeMap.remove(numValueOf2);
            }
        }
    }

    public final String zzs(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (!this.b.isEmpty()) {
            int i = 0;
            while (true) {
                str2 = str == null ? "" : str;
                if (i >= zzh()) {
                    break;
                }
                zzao zzaoVarZzl = zzl(i);
                sb.append(str2);
                if (!(zzaoVarZzl instanceof zzat) && !(zzaoVarZzl instanceof zzam)) {
                    sb.append(zzaoVarZzl.zzc());
                }
                i++;
            }
            sb.delete(0, str2.length());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        zzae zzaeVar = new zzae();
        for (Map.Entry entry : this.b.entrySet()) {
            boolean z = entry.getValue() instanceof zzak;
            TreeMap treeMap = zzaeVar.b;
            if (z) {
                treeMap.put((Integer) entry.getKey(), (zzao) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((zzao) entry.getValue()).zzt());
            }
        }
        return zzaeVar;
    }

    public zzae() {
        this.b = new TreeMap();
        this.c = new TreeMap();
    }
}
