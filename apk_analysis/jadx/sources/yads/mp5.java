package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mp5 extends cp5 {
    public static final Parcelable.Creator<mp5> CREATOR = new jp5();
    public final List b;

    public mp5(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(new lp5(parcel));
        }
        this.b = Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.b.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            lp5 lp5Var = (lp5) this.b.get(i2);
            parcel.writeLong(lp5Var.a);
            parcel.writeByte(lp5Var.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(lp5Var.c ? (byte) 1 : (byte) 0);
            parcel.writeByte(lp5Var.d ? (byte) 1 : (byte) 0);
            int size2 = lp5Var.f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                kp5 kp5Var = (kp5) lp5Var.f.get(i3);
                parcel.writeInt(kp5Var.a);
                parcel.writeLong(kp5Var.b);
            }
            parcel.writeLong(lp5Var.e);
            parcel.writeByte(lp5Var.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(lp5Var.h);
            parcel.writeInt(lp5Var.i);
            parcel.writeInt(lp5Var.j);
            parcel.writeInt(lp5Var.k);
        }
    }

    public mp5(ArrayList arrayList) {
        this.b = Collections.unmodifiableList(arrayList);
    }
}
