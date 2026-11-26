package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.common.collect.q;
import defpackage.fh;
import defpackage.kh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjl> CREATOR = new zzjm();
    public static final byte[][] zza;
    public final byte[][] b;
    public final String zzb;
    public final byte[] zzc;
    public final byte[][] zzd;
    public final byte[][] zze;
    public final byte[][] zzf;
    public final byte[][] zzg;
    public final int[] zzh;
    public final byte[][] zzi;
    public final int[] zzj;

    static {
        byte[][] bArr = new byte[0][];
        zza = bArr;
        new zzjl("", null, bArr, bArr, bArr, bArr, null, null, null, null);
    }

    public zzjl(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6, int[] iArr2, byte[][] bArr7) {
        this.zzb = str;
        this.zzc = bArr;
        this.zzd = bArr2;
        this.zze = bArr3;
        this.zzf = bArr4;
        this.zzg = bArr5;
        this.zzh = iArr;
        this.zzi = bArr6;
        this.zzj = iArr2;
        this.b = bArr7;
    }

    public static void a(StringBuilder sb, String str, byte[][] bArr) {
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
            return;
        }
        sb.append("(");
        boolean z = true;
        int i = 0;
        while (i < bArr.length) {
            byte[] bArr2 = bArr[i];
            if (!z) {
                sb.append(", ");
            }
            sb.append("'");
            Preconditions.checkNotNull(bArr2);
            sb.append(Base64.encodeToString(bArr2, 3));
            sb.append("'");
            i++;
            z = false;
        }
        sb.append(")");
    }

    public static Set o(byte[][] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) == 0) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSet = new HashSet(q.a(length));
        for (byte[] bArr2 : bArr) {
            Preconditions.checkNotNull(bArr2);
            hashSet.add(Base64.encodeToString(bArr2, 3));
        }
        return hashSet;
    }

    public static List x0(int[] iArr) {
        if (iArr == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(iArr.length >> 1);
        for (int i = 0; i < iArr.length; i += 2) {
            arrayList.add(new zzju(iArr[i], iArr[i + 1]));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.HashSet] */
    public final boolean equals(Object obj) {
        Object hashSet;
        Object hashSet2;
        int length;
        int length2;
        if (obj instanceof zzjl) {
            zzjl zzjlVar = (zzjl) obj;
            if (zzkl.a(this.zzb, zzjlVar.zzb) && zzkl.a(n(), zzjlVar.n()) && zzkl.a(o(this.zzd), o(zzjlVar.zzd)) && zzkl.a(o(this.zze), o(zzjlVar.zze)) && zzkl.a(o(this.zzf), o(zzjlVar.zzf)) && zzkl.a(o(this.zzg), o(zzjlVar.zzg))) {
                int[] iArr = this.zzh;
                if (iArr == null || (length2 = iArr.length) == 0) {
                    hashSet = Collections.EMPTY_SET;
                } else {
                    hashSet = new HashSet(q.a(length2));
                    for (int i : iArr) {
                        hashSet.add(Integer.valueOf(i));
                    }
                }
                int[] iArr2 = zzjlVar.zzh;
                if (iArr2 == null || (length = iArr2.length) == 0) {
                    hashSet2 = Collections.EMPTY_SET;
                } else {
                    hashSet2 = new HashSet(q.a(length));
                    for (int i2 : iArr2) {
                        hashSet2.add(Integer.valueOf(i2));
                    }
                }
                if (zzkl.a(hashSet, hashSet2) && zzkl.a(x0(this.zzj), x0(zzjlVar.zzj)) && zzkl.a(o(this.b), o(zzjlVar.b))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Set n() {
        ArrayList arrayList = new ArrayList();
        byte[][] bArr = this.zzi;
        if (bArr != null) {
            Collections.addAll(arrayList, bArr);
        }
        byte[] bArr2 = this.zzc;
        if (bArr2 != null) {
            arrayList.add(bArr2);
        }
        return o((byte[][]) arrayList.toArray(new byte[0][]));
    }

    public final String toString() {
        StringBuilder sbD = fh.d("ExperimentTokens", "(");
        String str = this.zzb;
        sbD.append(str == null ? "null" : kh.c(new StringBuilder(str.length() + 2), "'", str, "'"));
        byte[] bArr = this.zzc;
        sbD.append(", direct==");
        if (bArr == null) {
            sbD.append("null");
        } else {
            sbD.append("'");
            sbD.append(Base64.encodeToString(bArr, 3));
            sbD.append("'");
        }
        sbD.append(", ");
        a(sbD, "GAIA=", this.zzd);
        sbD.append(", ");
        a(sbD, "PSEUDO=", this.zze);
        sbD.append(", ");
        a(sbD, "ALWAYS=", this.zzf);
        sbD.append(", ");
        a(sbD, "OTHER=", this.zzg);
        sbD.append(", weak=");
        sbD.append(Arrays.toString(this.zzh));
        sbD.append(", ");
        a(sbD, "directs=", this.zzi);
        sbD.append(", genDims=");
        sbD.append(Arrays.toString(x0(this.zzj).toArray()));
        sbD.append(", ");
        a(sbD, "external=", this.b);
        sbD.append(")");
        return sbD.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 5, this.zze, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 7, this.zzg, false);
        SafeParcelWriter.writeIntArray(parcel, 8, this.zzh, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 9, this.zzi, false);
        SafeParcelWriter.writeIntArray(parcel, 10, this.zzj, false);
        SafeParcelWriter.writeByteArrayArray(parcel, 11, this.b, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
