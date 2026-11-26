package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.PrivFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class l05 extends nb3 {
    public static final Parcelable.Creator<l05> CREATOR = new k05();
    public final String c;
    public final byte[] d;

    public l05(Parcel parcel) {
        super(PrivFrame.ID);
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l05.class == obj.getClass()) {
            l05 l05Var = (l05) obj;
            if (u56.a(this.c, l05Var.c) && Arrays.equals(this.d, l05Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.c;
        return Arrays.hashCode(this.d) + (((str != null ? str.hashCode() : 0) + 527) * 31);
    }

    @Override // yads.nb3
    public final String toString() {
        return this.b + ": owner=" + this.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeByteArray(this.d);
    }

    public l05(String str, byte[] bArr) {
        super(PrivFrame.ID);
        this.c = str;
        this.d = bArr;
    }
}
