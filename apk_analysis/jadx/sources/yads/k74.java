package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class k74 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        int i = parcel.readInt();
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (int i2 = 0; i2 < i; i2++) {
            String string2 = parcel.readString();
            string2.getClass();
            linkedHashMap.put(string2, parcel.readString());
        }
        return new l74(string, linkedHashMap);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new l74[i];
    }
}
