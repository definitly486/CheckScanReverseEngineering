package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class ab5 implements Parcelable {
    public static final za5 CREATOR = new za5();
    public final Long b;

    public ab5(Parcel parcel) {
        this.b = parcel.readByte() == 0 ? null : Long.valueOf(parcel.readLong());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ab5) && defpackage.aa4.e(this.b, ((ab5) obj).b);
    }

    public final int hashCode() {
        Long l = this.b;
        if (l == null) {
            return 0;
        }
        return l.hashCode();
    }

    public final String toString() {
        return "RewardedMediationConfiguration(rewardedDelay=" + this.b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.b == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.b.longValue());
        }
    }

    public ab5(Long l) {
        this.b = l;
    }
}
