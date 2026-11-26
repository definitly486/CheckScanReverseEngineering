package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class ql2 implements Comparator, Parcelable {
    public static final Parcelable.Creator<ql2> CREATOR = new nl2();
    public final pl2[] b;
    public int c;
    public final String d;
    public final int e;

    public ql2(Parcel parcel) {
        this.d = parcel.readString();
        pl2[] pl2VarArr = (pl2[]) parcel.createTypedArray(pl2.CREATOR);
        int i = u56.a;
        this.b = pl2VarArr;
        this.e = pl2VarArr.length;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        pl2 pl2Var = (pl2) obj;
        pl2 pl2Var2 = (pl2) obj2;
        UUID uuid = uv.a;
        if (uuid.equals(pl2Var.c)) {
            return uuid.equals(pl2Var2.c) ? 0 : 1;
        }
        return pl2Var.c.compareTo(pl2Var2.c);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ql2.class == obj.getClass()) {
            ql2 ql2Var = (ql2) obj;
            if (u56.a(this.d, ql2Var.d) && Arrays.equals(this.b, ql2Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        String str = this.d;
        int iHashCode = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.b);
        this.c = iHashCode;
        return iHashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.d);
        parcel.writeTypedArray(this.b, 0);
    }

    public ql2(String str, boolean z, pl2... pl2VarArr) {
        this.d = str;
        pl2VarArr = z ? (pl2[]) pl2VarArr.clone() : pl2VarArr;
        this.b = pl2VarArr;
        this.e = pl2VarArr.length;
        Arrays.sort(pl2VarArr, this);
    }
}
