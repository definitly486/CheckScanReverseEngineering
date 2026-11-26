package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class aj5 implements Parcelable {
    public static final zi5 CREATOR = new zi5();
    public final String b;

    public aj5(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        this.b = string;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof aj5) && defpackage.aa4.e(this.b, ((aj5) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("ServerSideReward(rewardUrl=", this.b, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
    }

    public aj5(String str) {
        this.b = str;
    }
}
