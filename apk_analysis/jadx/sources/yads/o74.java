package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.WorkRequest;
import defpackage.up7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class o74 implements Parcelable {
    public static final n74 CREATOR = new n74();
    public static final defpackage.cl4[] d = {null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.at4(2))};
    public final long b;
    public final List c;

    public o74(int i, long j, List list) {
        this.b = (i & 1) == 0 ? WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS : j;
        if ((i & 2) == 0) {
            this.c = defpackage.kx2.b;
        } else {
            this.c = list;
        }
    }

    public static final /* synthetic */ defpackage.df4 c() {
        return new defpackage.mr(f74.a);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o74)) {
            return false;
        }
        o74 o74Var = (o74) obj;
        return this.b == o74Var.b && defpackage.aa4.e(this.c, o74Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (Long.hashCode(this.b) * 31);
    }

    public final String toString() {
        return "MediationPrefetchSettings(loadTimeoutMillis=" + this.b + ", mediationPrefetchAdUnits=" + this.c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeTypedList(this.c);
    }

    public o74(long j, ArrayList arrayList) {
        this.b = j;
        this.c = arrayList;
    }

    public o74(Parcel parcel) {
        long j = parcel.readLong();
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(h74.CREATOR);
        arrayListCreateTypedArrayList.getClass();
        this.b = j;
        this.c = arrayListCreateTypedArrayList;
    }
}
