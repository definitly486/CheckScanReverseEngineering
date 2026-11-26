package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class h84 implements Parcelable {
    public static final Parcelable.Creator<h84> CREATOR = new f84();
    public final g84[] b;

    public h84(Parcel parcel) {
        this.b = new g84[parcel.readInt()];
        int i = 0;
        while (true) {
            g84[] g84VarArr = this.b;
            if (i >= g84VarArr.length) {
                return;
            }
            g84VarArr[i] = (g84) parcel.readParcelable(g84.class.getClassLoader());
            i++;
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
        if (obj == null || h84.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((h84) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    public final String toString() {
        return "entries=" + Arrays.toString(this.b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b.length);
        for (g84 g84Var : this.b) {
            parcel.writeParcelable(g84Var, 0);
        }
    }

    public h84(List list) {
        this.b = (g84[]) list.toArray(new g84[0]);
    }

    public h84(g84... g84VarArr) {
        this.b = g84VarArr;
    }
}
