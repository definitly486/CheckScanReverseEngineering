package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqn {
    public final boolean a;
    public final List b;
    public final zzacr c;
    public final String d;
    public final String e;
    public final List f;
    public final List g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final zznf k;

    public zzqn(boolean z, List list, zzacr zzacrVar, String str, String str2, List list2, List list3, boolean z2, boolean z3, boolean z4, zznf zznfVar) {
        list.getClass();
        zzacrVar.getClass();
        str.getClass();
        str2.getClass();
        list2.getClass();
        list3.getClass();
        zznfVar.getClass();
        this.a = z;
        this.b = list;
        this.c = zzacrVar;
        this.d = str;
        this.e = str2;
        this.f = list2;
        this.g = list3;
        this.h = z2;
        this.i = z3;
        this.j = z4;
        this.k = zznfVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzqn)) {
            return false;
        }
        zzqn zzqnVar = (zzqn) obj;
        return this.a == zzqnVar.a && this.b.equals(zzqnVar.b) && this.c.equals(zzqnVar.c) && this.d.equals(zzqnVar.d) && this.e.equals(zzqnVar.e) && this.f.equals(zzqnVar.f) && this.g.equals(zzqnVar.g) && this.h == zzqnVar.h && this.i == zzqnVar.i && this.j == zzqnVar.j && this.k.equals(zzqnVar.k);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.a), this.b, this.c, this.d, this.e, this.f, this.g, Boolean.valueOf(this.h), Boolean.valueOf(this.i), Boolean.valueOf(this.j));
    }

    public final String toString() {
        boolean z = this.a;
        int length = String.valueOf(z).length();
        List list = this.b;
        int length2 = String.valueOf(list).length();
        zzacr zzacrVar = this.c;
        int length3 = String.valueOf(zzacrVar).length();
        String str = this.d;
        int length4 = str.length();
        String str2 = this.e;
        int length5 = str2.length();
        List list2 = this.f;
        int length6 = String.valueOf(list2).length();
        List list3 = this.g;
        int length7 = String.valueOf(list3).length();
        boolean z2 = this.h;
        int length8 = String.valueOf(z2).length();
        boolean z3 = this.i;
        int length9 = String.valueOf(z3).length();
        boolean z4 = this.j;
        int length10 = String.valueOf(z4).length();
        zznf zznfVar = this.k;
        StringBuilder sb = new StringBuilder(length + 59 + length2 + 9 + length3 + 10 + length4 + 17 + length5 + 30 + length6 + 30 + length7 + 24 + length8 + 26 + length9 + 20 + length10 + 14 + String.valueOf(zznfVar).length() + 1);
        sb.append("SharedStorageInfo(shouldUseSharedStorage=");
        sb.append(z);
        sb.append(", enabledBackings=");
        sb.append(list);
        sb.append(", secret=");
        sb.append(zzacrVar);
        sb.append(", dirPath=");
        sb.append(str);
        sb.append(", gmsCoreDirPath=");
        sb.append(str2);
        sb.append(", includeStaticConfigPackages=");
        sb.append(list2);
        sb.append(", excludeStaticConfigPackages=");
        sb.append(list3);
        sb.append(", hasStorageInfoFromGms=");
        sb.append(z2);
        sb.append(", allowEmptySnapshotToken=");
        sb.append(z3);
        sb.append(", enableCommitV2Api=");
        sb.append(z4);
        sb.append(", clientFlags=");
        sb.append(zznfVar);
        sb.append(")");
        return sb.toString();
    }

    public final zzacr zza() {
        return this.c;
    }

    public final String zzb() {
        return this.d;
    }

    public final String zzc() {
        return this.e;
    }

    public final boolean zzd() {
        return this.i;
    }

    public final boolean zze() {
        return this.j;
    }

    public final zznf zzf() {
        return this.k;
    }

    public final int zzg(zzabz zzabzVar, String str) {
        zzabzVar.getClass();
        str.getClass();
        if (!this.h) {
            return 14;
        }
        if (!this.a || !this.b.contains(zzabzVar)) {
            return 3;
        }
        if (this.c.zzb() == 0) {
            return 4;
        }
        List list = this.f;
        if (list.isEmpty() || list.contains(str)) {
            return this.g.contains(str) ? 6 : 0;
        }
        return 5;
    }
}
