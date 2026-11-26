package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class jt extends nb3 {
    public static final Parcelable.Creator<jt> CREATOR = new ht();
    public final byte[] c;

    /* JADX WARN: Illegal instructions before constructor call */
    public jt(Parcel parcel) {
        String string = parcel.readString();
        int i = u56.a;
        super(string);
        this.c = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && jt.class == obj.getClass()) {
            jt jtVar = (jt) obj;
            if (this.b.equals(jtVar.b) && Arrays.equals(this.c, jtVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.c) + l4.a(527, 31, this.b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeByteArray(this.c);
    }

    public jt(String str, byte[] bArr) {
        super(str);
        this.c = bArr;
    }
}
