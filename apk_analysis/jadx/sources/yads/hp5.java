package yads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class hp5 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new ip5();
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new ip5[i];
    }
}
