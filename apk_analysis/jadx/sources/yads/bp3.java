package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.InternalFrame;

/* JADX INFO: loaded from: classes6.dex */
public final class bp3 extends nb3 {
    public static final Parcelable.Creator<bp3> CREATOR = new ap3();
    public final String c;
    public final String d;
    public final String e;

    public bp3(Parcel parcel) {
        super(InternalFrame.ID);
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.readString();
        this.e = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && bp3.class == obj.getClass()) {
            bp3 bp3Var = (bp3) obj;
            if (u56.a(this.d, bp3Var.d) && u56.a(this.c, bp3Var.c) && u56.a(this.e, bp3Var.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.c;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // yads.nb3
    public final String toString() {
        return this.b + ": domain=" + this.c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
    }

    public bp3(String str, String str2, String str3) {
        super(InternalFrame.ID);
        this.c = str;
        this.d = str2;
        this.e = str3;
    }
}
