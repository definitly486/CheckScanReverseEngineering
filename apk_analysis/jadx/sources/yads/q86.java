package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class q86 implements Parcelable {
    public static final Parcelable.Creator<q86> CREATOR = new o86();
    public final p86 b;
    public final float c;

    public q86(Parcel parcel) {
        p86 p86Var = parcel.readInt() == -1 ? null : p86.values()[parcel.readInt()];
        float f = parcel.readFloat();
        this.b = p86Var;
        this.c = f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        p86 p86Var = this.b;
        parcel.writeInt(p86Var != null ? p86Var.ordinal() : -1);
        parcel.writeFloat(this.c);
    }

    public q86(p86 p86Var, float f) {
        this.b = p86Var;
        this.c = f;
    }
}
