package yads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.ca8;
import defpackage.dl3;
import defpackage.up7;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class l74 implements Parcelable {
    public static final k74 CREATOR = new k74();
    public static final defpackage.cl4[] d = {null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new dl3(4))};
    public final String b;
    public final Map c;

    public l74(int i, String str, Map map) {
        if (3 != (i & 3)) {
            defpackage.r96.f(j74.b, i, 3);
            throw null;
        }
        this.b = str;
        this.c = map;
    }

    public static final /* synthetic */ defpackage.df4 c() {
        ca8 ca8Var = ca8.a;
        return new defpackage.uq4(ca8Var, defpackage.ev0.a(ca8Var));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l74)) {
            return false;
        }
        l74 l74Var = (l74) obj;
        return defpackage.aa4.e(this.b, l74Var.b) && defpackage.aa4.e(this.c, l74Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "MediationPrefetchNetwork(adapter=" + this.b + ", networkData=" + this.c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeInt(this.c.size());
        for (Map.Entry entry : this.c.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            parcel.writeString(str);
            parcel.writeString(str2);
        }
    }

    public l74(String str, LinkedHashMap linkedHashMap) {
        this.b = str;
        this.c = linkedHashMap;
    }
}
