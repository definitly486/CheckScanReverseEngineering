package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class la implements Parcelable {
    public static final ka CREATOR = new ka();
    public final String b;
    public final ArrayList c;
    public final String d;

    public la(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(x54.CREATOR);
        arrayListCreateTypedArrayList.getClass();
        String string2 = parcel.readString();
        string2.getClass();
        this.b = string;
        this.c = arrayListCreateTypedArrayList;
        this.d = string2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof la)) {
            return false;
        }
        la laVar = (la) obj;
        return defpackage.aa4.e(this.b, laVar.b) && defpackage.aa4.e(this.c, laVar.c) && defpackage.aa4.e(this.d, laVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + defpackage.tg.d(this.c, this.b.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.b;
        ArrayList arrayList = this.c;
        String str2 = this.d;
        StringBuilder sb = new StringBuilder("AdUnitIdBiddingSettings(adUnitId=");
        sb.append(str);
        sb.append(", mediationNetworks=");
        sb.append(arrayList);
        sb.append(", rawData=");
        return defpackage.me0.d(sb, str2, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeTypedList(this.c);
        parcel.writeString(this.d);
    }

    public la(String str, String str2, ArrayList arrayList) {
        this.b = str;
        this.c = arrayList;
        this.d = str2;
    }
}
