package yads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cw9;
import defpackage.up7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class h74 implements Parcelable {
    public static final g74 CREATOR = new g74();
    public static final defpackage.cl4[] d = {null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new cw9(1))};
    public final String b;
    public final List c;

    public h74(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(l74.CREATOR);
        arrayListCreateTypedArrayList.getClass();
        this.b = string;
        this.c = arrayListCreateTypedArrayList;
    }

    public static final /* synthetic */ defpackage.df4 c() {
        return new defpackage.mr(j74.a);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h74)) {
            return false;
        }
        h74 h74Var = (h74) obj;
        return defpackage.aa4.e(this.b, h74Var.b) && defpackage.aa4.e(this.c, h74Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "MediationPrefetchAdUnit(adUnitId=" + this.b + ", networks=" + this.c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeTypedList(this.c);
    }

    public h74(int i, String str, List list) {
        if (3 != (i & 3)) {
            defpackage.r96.f(f74.b, i, 3);
            throw null;
        }
        this.b = str;
        this.c = list;
    }
}
