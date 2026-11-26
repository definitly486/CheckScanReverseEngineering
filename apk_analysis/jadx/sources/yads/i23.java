package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.GeobFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class i23 extends nb3 {
    public static final Parcelable.Creator<i23> CREATOR = new h23();
    public final String c;
    public final String d;
    public final String e;
    public final byte[] f;

    public i23(Parcel parcel) {
        super(GeobFrame.ID);
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && i23.class == obj.getClass()) {
            i23 i23Var = (i23) obj;
            if (u56.a(this.c, i23Var.c) && u56.a(this.d, i23Var.d) && u56.a(this.e, i23Var.e) && Arrays.equals(this.f, i23Var.f)) {
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
        return Arrays.hashCode(this.f) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // yads.nb3
    public final String toString() {
        return this.b + ": mimeType=" + this.c + ", filename=" + this.d + ", description=" + this.e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeByteArray(this.f);
    }

    public i23(String str, String str2, String str3, byte[] bArr) {
        super(GeobFrame.ID);
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = bArr;
    }
}
