package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzb();
    public final String b;

    @Deprecated
    public final int c;
    public final long d;
    public final boolean e;

    public Feature(String str, int i, long j, boolean z) {
        this.b = str;
        this.c = i;
        this.d = j;
        this.e = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (matches(feature) && getIsFullyRolledOut() == feature.getIsFullyRolledOut()) {
                return true;
            }
        }
        return false;
    }

    public boolean getIsFullyRolledOut() {
        return this.e;
    }

    public String getName() {
        return this.b;
    }

    public long getVersion() {
        long j = this.d;
        return j == -1 ? this.c : j;
    }

    public final int hashCode() {
        return Objects.hashCode(getName(), Long.valueOf(getVersion()), Boolean.valueOf(getIsFullyRolledOut()));
    }

    public boolean matches(Feature feature) {
        return feature != null && Objects.equal(getName(), feature.getName()) && getVersion() == feature.getVersion();
    }

    public final String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add("name", getName());
        stringHelper.add("version", Long.valueOf(getVersion()));
        stringHelper.add("is_fully_rolled_out", Boolean.valueOf(getIsFullyRolledOut()));
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getName(), false);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeLong(parcel, 3, getVersion());
        SafeParcelWriter.writeBoolean(parcel, 4, getIsFullyRolledOut());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public Feature(String str, int i, long j) {
        this(str, i, j, false);
    }

    public Feature(String str, long j) {
        this(str, -1, j, false);
    }

    public Feature(String str, long j, boolean z) {
        this(str, -1, j, z);
    }
}
