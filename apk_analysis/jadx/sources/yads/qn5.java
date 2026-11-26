package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class qn5 implements g84 {
    public static final Parcelable.Creator<qn5> CREATOR = new nn5();
    public final ArrayList b;

    public qn5(ArrayList arrayList) {
        this.b = arrayList;
        if (arrayList.isEmpty()) {
            return;
        }
        long j = ((pn5) arrayList.get(0)).c;
        for (int i = 1; i < arrayList.size(); i++) {
            if (((pn5) arrayList.get(i)).b < j) {
                defpackage.mi2.b();
                throw null;
            }
            j = ((pn5) arrayList.get(i)).c;
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
        if (obj == null || qn5.class != obj.getClass()) {
            return false;
        }
        return this.b.equals(((qn5) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.b);
    }
}
