package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class r00 implements Parcelable {
    public static final q00 CREATOR = new q00();
    public final int b;
    public final String c;

    public r00(Parcel parcel) {
        int i = parcel.readInt();
        String string = parcel.readString();
        string.getClass();
        this.b = i;
        this.c = string;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r00)) {
            return false;
        }
        r00 r00Var = (r00) obj;
        return this.b == r00Var.b && defpackage.aa4.e(this.c, r00Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (Integer.hashCode(this.b) * 31);
    }

    public final String toString() {
        return defpackage.c9.d(this.b, "ClientSideReward(rewardAmount=", ", rewardType=", this.c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
    }

    public r00(int i, String str) {
        this.b = i;
        this.c = str;
    }
}
