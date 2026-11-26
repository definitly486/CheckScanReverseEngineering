package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class dx5 extends cp5 {
    public static final Parcelable.Creator<dx5> CREATOR = new cx5();
    public final long b;
    public final long c;

    public dx5(long j, long j2) {
        this.b = j;
        this.c = j2;
    }

    public static long a(os4 os4Var, long j) {
        long jK = os4Var.k();
        return (128 & jK) != 0 ? 8589934591L & ((((jK & 1) << 32) | os4Var.l()) + j) : C.TIME_UNSET;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
    }
}
