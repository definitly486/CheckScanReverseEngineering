package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.CommentFrame;

/* JADX INFO: loaded from: classes6.dex */
public final class b40 extends nb3 {
    public static final Parcelable.Creator<b40> CREATOR = new a40();
    public final String c;
    public final String d;
    public final String e;

    public b40(Parcel parcel) {
        super(CommentFrame.ID);
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
        if (obj != null && b40.class == obj.getClass()) {
            b40 b40Var = (b40) obj;
            if (u56.a(this.d, b40Var.d) && u56.a(this.c, b40Var.c) && u56.a(this.e, b40Var.e)) {
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
        return this.b + ": language=" + this.c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
    }

    public b40(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.c = str;
        this.d = str2;
        this.e = str3;
    }
}
