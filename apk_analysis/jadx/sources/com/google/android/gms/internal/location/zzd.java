package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.aa4;
import defpackage.fg;
import defpackage.ra8;
import defpackage.ul2;
import java.util.List;
import java.util.Objects;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "ClientIdentityCreator")
@SafeParcelable.Reserved({2, 5})
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();

    @SafeParcelable.Field(getter = "getUid", id = 1)
    public final int b;

    @SafeParcelable.Field(getter = "getPackageName", id = 3)
    public final String c;

    @SafeParcelable.Field(getter = "getAttributionTag", id = 4)
    public final String d;

    @SafeParcelable.Field(getter = "getListenerId", id = 6)
    public final String e;

    @SafeParcelable.Field(getter = "getClientFeatures", id = 8)
    public final zzeu f;

    @SafeParcelable.Field(getter = "getImpersonator", id = 7)
    public final zzd g;

    static {
        Process.myUid();
        Process.myPid();
    }

    @SafeParcelable.Constructor
    @ul2
    public zzd(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 8) List list, @SafeParcelable.Param(id = 7) zzd zzdVar) {
        str.getClass();
        if (zzdVar != null && zzdVar.zza()) {
            fg.c("Failed requirement.");
            throw null;
        }
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = str3 == null ? zzdVar != null ? zzdVar.e : null : str3;
        if (list == null) {
            list = zzdVar != null ? zzdVar.f : null;
            if (list == null) {
                list = zzeu.zzi();
                list.getClass();
            }
        }
        zzeu zzeuVarZzj = zzeu.zzj(list);
        zzeuVarZzj.getClass();
        this.f = zzeuVarZzj;
        this.g = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzd)) {
            return false;
        }
        zzd zzdVar = (zzd) obj;
        return this.b == zzdVar.b && aa4.e(this.c, zzdVar.c) && aa4.e(this.d, zzdVar.d) && aa4.e(this.e, zzdVar.e) && aa4.e(this.g, zzdVar.g) && aa4.e(this.f, zzdVar.f);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.b), this.c, this.d, this.e, this.g);
    }

    public final String toString() {
        String str = this.c;
        int length = str.length() + 18;
        String str2 = this.d;
        StringBuilder sb = new StringBuilder(length + (str2 != null ? str2.length() : 0));
        sb.append(this.b);
        sb.append("/");
        sb.append(str);
        if (str2 != null) {
            sb.append("[");
            if (ra8.C(str2, str, false)) {
                sb.append((CharSequence) str2, str.length(), str2.length());
            } else {
                sb.append(str2);
            }
            sb.append("]");
        }
        String str3 = this.e;
        if (str3 != null) {
            sb.append("/");
            sb.append(Integer.toHexString(str3.hashCode()));
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeString(parcel, 3, this.c, false);
        SafeParcelWriter.writeString(parcel, 4, this.d, false);
        SafeParcelWriter.writeString(parcel, 6, this.e, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.g, i, false);
        SafeParcelWriter.writeTypedList(parcel, 8, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return this.g != null;
    }
}
