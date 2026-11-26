package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class dt implements Parcelable {
    public static final ct CREATOR = new ct();
    public final ArrayList b;
    public final o74 c;

    public dt(Parcel parcel) {
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(la.CREATOR);
        arrayListCreateTypedArrayList.getClass();
        o74 o74Var = (o74) parcel.readParcelable(o74.class.getClassLoader());
        this.b = arrayListCreateTypedArrayList;
        this.c = o74Var;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dt)) {
            return false;
        }
        dt dtVar = (dt) obj;
        return defpackage.aa4.e(this.b, dtVar.b) && defpackage.aa4.e(this.c, dtVar.c);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        o74 o74Var = this.c;
        return iHashCode + (o74Var == null ? 0 : o74Var.hashCode());
    }

    public final String toString() {
        return "BiddingSettings(adUnitIdBiddingSettingsList=" + this.b + ", mediationPrefetchSettings=" + this.c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.b);
        parcel.writeParcelable(this.c, i);
    }

    public dt(ArrayList arrayList, o74 o74Var) {
        this.b = arrayList;
        this.c = o74Var;
    }
}
