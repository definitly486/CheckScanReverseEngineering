package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class ag implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        return new bg(parcel.readInt(), string);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new bg[i];
    }
}
