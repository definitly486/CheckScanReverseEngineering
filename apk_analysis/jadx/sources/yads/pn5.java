package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class pn5 implements Parcelable {
    public static final Parcelable.Creator<pn5> CREATOR = new on5();
    public final long b;
    public final long c;
    public final int d;

    public pn5(int i, long j, long j2) {
        if (j >= j2) {
            defpackage.mi2.b();
            throw null;
        }
        this.b = j;
        this.c = j2;
        this.d = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && pn5.class == obj.getClass()) {
            pn5 pn5Var = (pn5) obj;
            if (this.b == pn5Var.b && this.c == pn5Var.c && this.d == pn5Var.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.d)});
    }

    public final String toString() {
        long j = this.b;
        long j2 = this.c;
        int i = this.d;
        int i2 = u56.a;
        Locale locale = Locale.US;
        StringBuilder sbF = defpackage.xp.f(j, "Segment: startTimeMs=", ", endTimeMs=");
        sbF.append(j2);
        sbF.append(", speedDivisor=");
        sbF.append(i);
        return sbF.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeInt(this.d);
    }
}
