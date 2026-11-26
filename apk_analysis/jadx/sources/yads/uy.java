package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.ChapterFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class uy extends nb3 {
    public static final Parcelable.Creator<uy> CREATOR = new ty();
    public final String c;
    public final int d;
    public final int e;
    public final long f;
    public final long g;
    public final nb3[] h;

    public uy(Parcel parcel) {
        super(ChapterFrame.ID);
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readLong();
        this.g = parcel.readLong();
        int i2 = parcel.readInt();
        this.h = new nb3[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.h[i3] = (nb3) parcel.readParcelable(nb3.class.getClassLoader());
        }
    }

    @Override // yads.nb3, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && uy.class == obj.getClass()) {
            uy uyVar = (uy) obj;
            if (this.d == uyVar.d && this.e == uyVar.e && this.f == uyVar.f && this.g == uyVar.g && u56.a(this.c, uyVar.c) && Arrays.equals(this.h, uyVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (((((((this.d + 527) * 31) + this.e) * 31) + ((int) this.f)) * 31) + ((int) this.g)) * 31;
        String str = this.c;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeLong(this.f);
        parcel.writeLong(this.g);
        parcel.writeInt(this.h.length);
        for (nb3 nb3Var : this.h) {
            parcel.writeParcelable(nb3Var, 0);
        }
    }

    public uy(String str, int i, int i2, long j, long j2, nb3[] nb3VarArr) {
        super(ChapterFrame.ID);
        this.c = str;
        this.d = i;
        this.e = i2;
        this.f = j;
        this.g = j2;
        this.h = nb3VarArr;
    }
}
