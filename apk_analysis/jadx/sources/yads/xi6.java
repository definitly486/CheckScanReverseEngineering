package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public class xi6 implements g84 {
    public static final Parcelable.Creator<xi6> CREATOR = new vi6();
    public final String b;
    public final String c;

    public xi6(Parcel parcel) {
        String string = parcel.readString();
        int i = u56.a;
        this.b = string;
        this.c = parcel.readString();
    }

    @Override // yads.g84
    public final void a(s04 s04Var) {
        String str = this.b;
        str.getClass();
        switch (str) {
            case "ALBUM":
                s04Var.c = this.c;
                break;
            case "TITLE":
                s04Var.a = this.c;
                break;
            case "DESCRIPTION":
                s04Var.g = this.c;
                break;
            case "ALBUMARTIST":
                s04Var.d = this.c;
                break;
            case "ARTIST":
                s04Var.b = this.c;
                break;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            xi6 xi6Var = (xi6) obj;
            if (this.b.equals(xi6Var.b) && this.c.equals(xi6Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + l4.a(527, 31, this.b);
    }

    public final String toString() {
        return "VC: " + this.b + "=" + this.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    public xi6(String str, String str2) {
        this.b = str;
        this.c = str2;
    }
}
