package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ag;
import defpackage.fg;
import defpackage.xg;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjo extends AbstractSafeParcelable implements Comparable<zzjo> {
    public static final Parcelable.Creator<zzjo> CREATOR = new zzjp();
    public final long b;
    public final boolean c;
    public final double d;
    public final String e;
    public final byte[] f;
    public final int g;
    public final String zza;
    public final int zzg;
    public final int zzh;

    public zzjo(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2, int i3) {
        this.zza = str;
        this.b = j;
        this.c = z;
        this.d = d;
        this.e = str2;
        this.f = bArr;
        this.zzg = i;
        this.zzh = i2;
        this.g = i3;
    }

    public final void a(StringBuilder sb) {
        sb.append("Flag(");
        String str = this.zza;
        sb.append(str);
        sb.append(", ");
        int i = this.zzg;
        if (i == 1) {
            sb.append(this.b);
        } else if (i == 2) {
            sb.append(this.c);
        } else if (i == 3) {
            sb.append(this.d);
        } else if (i == 4) {
            sb.append("'");
            sb.append((String) Preconditions.checkNotNull(this.e));
            sb.append("'");
        } else {
            if (i != 5) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(i).length());
                sb2.append("Invalid type: ");
                sb2.append(str);
                sb2.append(", ");
                sb2.append(i);
                throw new AssertionError(sb2.toString());
            }
            sb.append("'");
            sb.append(Base64.encodeToString((byte[]) Preconditions.checkNotNull(this.f), 3));
            sb.append("'");
        }
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(this.zzh);
        sb.append(", ");
        sb.append(this.g);
        sb.append(")");
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00a3 A[RETURN] */
    @Override // java.lang.Comparable
    public final int compareTo(zzjo zzjoVar) {
        int i;
        zzjo zzjoVar2 = zzjoVar;
        int iCompareTo = this.zza.compareTo(zzjoVar2.zza);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int i2 = this.zzg;
        int i3 = zzjoVar2.zzg;
        if (i2 < i3) {
            i = -1;
        } else {
            i = i2 != i3 ? 1 : 0;
        }
        if (i != 0) {
            return i;
        }
        if (i2 == 1) {
            long j = this.b;
            long j2 = zzjoVar2.b;
            if (j >= j2) {
                if (j == j2) {
                    return 0;
                }
                return 1;
            }
            return -1;
        }
        if (i2 == 2) {
            boolean z = zzjoVar2.c;
            boolean z2 = this.c;
            if (z2 != z) {
                if (z2) {
                    return 1;
                }
                return -1;
            }
            return 0;
        }
        if (i2 == 3) {
            return Double.compare(this.d, zzjoVar2.d);
        }
        if (i2 == 4) {
            String str = zzjoVar2.e;
            String str2 = this.e;
            if (str2 != str) {
                if (str2 != null) {
                    if (str != null) {
                        return str2.compareTo(str);
                    }
                    return 1;
                }
                return -1;
            }
            return 0;
        }
        if (i2 != 5) {
            xg.d(ag.d(new StringBuilder(String.valueOf(i2).length() + 20), "Invalid enum value: ", i2));
            return 0;
        }
        byte[] bArr = zzjoVar2.f;
        byte[] bArr2 = this.f;
        if (bArr2 != bArr) {
            if (bArr2 != null) {
                if (bArr != null) {
                    int i4 = 0;
                    while (true) {
                        int length = bArr.length;
                        int length2 = bArr2.length;
                        if (i4 >= Math.min(length2, length)) {
                            if (length2 < length) {
                                return -1;
                            }
                            return length2 != length ? 1 : 0;
                        }
                        int i5 = bArr2[i4] - bArr[i4];
                        if (i5 != 0) {
                            return i5;
                        }
                        i4++;
                    }
                }
                return 1;
            }
            return -1;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        int i;
        if (obj instanceof zzjo) {
            zzjo zzjoVar = (zzjo) obj;
            if (zzkl.a(this.zza, zzjoVar.zza) && (i = this.zzg) == zzjoVar.zzg && this.zzh == zzjoVar.zzh && this.g == zzjoVar.g) {
                if (i == 1) {
                    return this.b == zzjoVar.b;
                }
                if (i == 2) {
                    return this.c == zzjoVar.c;
                }
                if (i == 3) {
                    return this.d == zzjoVar.d;
                }
                if (i == 4) {
                    return zzkl.a(this.e, zzjoVar.e);
                }
                if (i == 5) {
                    return Arrays.equals(this.f, zzjoVar.f);
                }
                xg.d(ag.d(new StringBuilder(String.valueOf(i).length() + 20), "Invalid enum value: ", i));
                return false;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        boolean zZzb = zzjp.zzb(str);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        if (!zZzb) {
            SafeParcelWriter.writeString(parcel, 2, str, false);
        }
        long j = this.b;
        if (j != 0) {
            SafeParcelWriter.writeLong(parcel, 3, j);
        }
        if (this.c) {
            SafeParcelWriter.writeBoolean(parcel, 4, true);
        }
        double d = this.d;
        if (d != 0.0d) {
            SafeParcelWriter.writeDouble(parcel, 5, d);
        }
        String str2 = this.e;
        if (!zzjp.zzb(str2)) {
            SafeParcelWriter.writeString(parcel, 6, str2, false);
        }
        byte[] bArr = this.f;
        if (!zzjp.zzb(bArr)) {
            SafeParcelWriter.writeByteArray(parcel, 7, bArr, false);
        }
        int i2 = this.zzg;
        if (!zzjp.zza(i2)) {
            SafeParcelWriter.writeInt(parcel, 8, i2);
        }
        int i3 = this.zzh;
        if (!zzjp.zza(i3)) {
            SafeParcelWriter.writeInt(parcel, 9, i3);
        }
        int i4 = this.g;
        if (!zzjp.zza(i4)) {
            SafeParcelWriter.writeInt(parcel, 10, i4);
        }
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final long zza() {
        if (this.zzg == 1) {
            return this.b;
        }
        fg.c("Not a long type");
        return 0L;
    }

    public final boolean zzb() {
        if (this.zzg == 2) {
            return this.c;
        }
        fg.c("Not a boolean type");
        return false;
    }

    public final double zzc() {
        if (this.zzg == 3) {
            return this.d;
        }
        fg.c("Not a double type");
        return 0.0d;
    }

    public final String zzd() {
        if (this.zzg == 4) {
            return (String) Preconditions.checkNotNull(this.e);
        }
        fg.c("Not a String type");
        return null;
    }

    public final byte[] zze() {
        if (this.zzg == 5) {
            return (byte[]) Preconditions.checkNotNull(this.f);
        }
        fg.c("Not a bytes type");
        return null;
    }
}
