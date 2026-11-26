package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.MlltFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class e94 extends nb3 {
    public static final Parcelable.Creator<e94> CREATOR = new d94();
    public final int c;
    public final int d;
    public final int e;
    public final int[] f;
    public final int[] g;

    public e94(Parcel parcel) {
        super(MlltFrame.ID);
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        int[] iArrCreateIntArray = parcel.createIntArray();
        int i = u56.a;
        this.f = iArrCreateIntArray;
        this.g = parcel.createIntArray();
    }

    @Override // yads.nb3, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e94.class == obj.getClass()) {
            e94 e94Var = (e94) obj;
            if (this.c == e94Var.c && this.d == e94Var.d && this.e == e94Var.e && Arrays.equals(this.f, e94Var.f) && Arrays.equals(this.g, e94Var.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.g) + ((Arrays.hashCode(this.f) + ((((((this.c + 527) * 31) + this.d) * 31) + this.e) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeIntArray(this.f);
        parcel.writeIntArray(this.g);
    }

    public e94(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super(MlltFrame.ID);
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = iArr;
        this.g = iArr2;
    }
}
