package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.ChapterTocFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class wy extends nb3 {
    public static final Parcelable.Creator<wy> CREATOR = new vy();
    public final String c;
    public final boolean d;
    public final boolean e;
    public final String[] f;
    public final nb3[] g;

    public wy(Parcel parcel) {
        super(ChapterTocFrame.ID);
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.readByte() != 0;
        this.e = parcel.readByte() != 0;
        this.f = parcel.createStringArray();
        int i2 = parcel.readInt();
        this.g = new nb3[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.g[i3] = (nb3) parcel.readParcelable(nb3.class.getClassLoader());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && wy.class == obj.getClass()) {
            wy wyVar = (wy) obj;
            if (this.d == wyVar.d && this.e == wyVar.e && u56.a(this.c, wyVar.c) && Arrays.equals(this.f, wyVar.f) && Arrays.equals(this.g, wyVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = ((((this.d ? 1 : 0) + 527) * 31) + (this.e ? 1 : 0)) * 31;
        String str = this.c;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f);
        parcel.writeInt(this.g.length);
        for (nb3 nb3Var : this.g) {
            parcel.writeParcelable(nb3Var, 0);
        }
    }

    public wy(String str, boolean z, boolean z2, String[] strArr, nb3[] nb3VarArr) {
        super(ChapterTocFrame.ID);
        this.c = str;
        this.d = z;
        this.e = z2;
        this.f = strArr;
        this.g = nb3VarArr;
    }
}
