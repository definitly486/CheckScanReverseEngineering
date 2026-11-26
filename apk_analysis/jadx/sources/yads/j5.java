package yads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class j5 implements Parcelable {
    public static final i5 CREATOR = new i5();
    public final String b;

    public j5(Parcel parcel) {
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
        return (obj instanceof j5) && defpackage.aa4.e(this.b, ((j5) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("AdImpressionData(rawData=", this.b, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
    }

    public j5(String str) {
        this.b = str;
    }
}
