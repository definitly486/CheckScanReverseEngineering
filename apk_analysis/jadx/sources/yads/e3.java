package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class e3 implements Parcelable {
    public static final d3 CREATOR = new d3();
    public final String b;
    public final String c;
    public final String d;

    public e3(Parcel parcel) {
        String string = parcel.readString();
        String string2 = parcel.readString();
        String string3 = parcel.readString();
        this.b = string;
        this.c = string2;
        this.d = string3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }
}
