package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class x54 implements Parcelable {
    public static final t54 CREATOR = new t54();
    public final String b;
    public final Map c;
    public final List d;
    public final List e;
    public final List f;
    public final j5 g;
    public final Map h;
    public final cb5 i;

    public x54(String str, Map map, List list, List list2, List list3, j5 j5Var, Map map2, cb5 cb5Var) {
        this.b = str;
        this.c = map;
        this.d = list;
        this.e = list2;
        this.f = list3;
        this.g = j5Var;
        this.h = map2;
        this.i = cb5Var;
    }

    public final String c() {
        return this.b;
    }

    public final Map d() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x54)) {
            return false;
        }
        x54 x54Var = (x54) obj;
        return defpackage.aa4.e(this.b, x54Var.b) && defpackage.aa4.e(this.c, x54Var.c) && defpackage.aa4.e(this.d, x54Var.d) && defpackage.aa4.e(this.e, x54Var.e) && defpackage.aa4.e(this.f, x54Var.f) && defpackage.aa4.e(this.g, x54Var.g) && defpackage.aa4.e(this.h, x54Var.h) && defpackage.aa4.e(this.i, x54Var.i);
    }

    public final int hashCode() {
        int iC = defpackage.k.c(this.c, this.b.hashCode() * 31, 31);
        List list = this.d;
        int iHashCode = (iC + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.e;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        j5 j5Var = this.g;
        int iHashCode4 = (iHashCode3 + (j5Var == null ? 0 : j5Var.b.hashCode())) * 31;
        Map map = this.h;
        int iHashCode5 = (iHashCode4 + (map == null ? 0 : map.hashCode())) * 31;
        cb5 cb5Var = this.i;
        return iHashCode5 + (cb5Var != null ? cb5Var.hashCode() : 0);
    }

    public final String toString() {
        return "MediationNetwork(adapter=" + this.b + ", networkData=" + this.c + ", impressionTrackingUrls=" + this.d + ", clickTrackingUrls=" + this.e + ", adResponseTrackingUrls=" + this.f + ", adImpressionData=" + this.g + ", biddingInfo=" + this.h + ", formatParameters=" + this.i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        t54 t54Var = CREATOR;
        Map map = this.c;
        t54Var.getClass();
        parcel.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            parcel.writeString(str);
            parcel.writeString(str2);
        }
        parcel.writeStringList(this.d);
        parcel.writeStringList(this.e);
        parcel.writeStringList(this.f);
        parcel.writeParcelable(this.g, i);
        t54 t54Var2 = CREATOR;
        Map map2 = this.h;
        t54Var2.getClass();
        if (map2 == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(map2.size());
            for (Map.Entry entry2 : map2.entrySet()) {
                String str3 = (String) entry2.getKey();
                String str4 = (String) entry2.getValue();
                parcel.writeString(str3);
                parcel.writeString(str4);
            }
        }
        parcel.writeParcelable(this.i, i);
    }
}
