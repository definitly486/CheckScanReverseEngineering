package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class q05 extends cp5 {
    public static final Parcelable.Creator<q05> CREATOR = new p05();
    public final long b;
    public final long c;
    public final byte[] d;

    public q05(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i = u56.a;
        this.d = bArrCreateByteArray;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeByteArray(this.d);
    }

    public q05(long j, byte[] bArr, long j2) {
        this.b = j2;
        this.c = j;
        this.d = bArr;
    }
}
