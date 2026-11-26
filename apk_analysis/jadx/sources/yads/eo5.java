package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class eo5 implements g84 {
    public static final Parcelable.Creator<eo5> CREATOR = new do5();
    public final float b;
    public final int c;

    public eo5(Parcel parcel) {
        this.b = parcel.readFloat();
        this.c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && eo5.class == obj.getClass()) {
            eo5 eo5Var = (eo5) obj;
            if (this.b == eo5Var.b && this.c == eo5Var.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.b).hashCode() + 527) * 31) + this.c;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.b + ", svcTemporalLayerCount=" + this.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.b);
        parcel.writeInt(this.c);
    }

    public eo5(int i, float f) {
        this.b = f;
        this.c = i;
    }
}
