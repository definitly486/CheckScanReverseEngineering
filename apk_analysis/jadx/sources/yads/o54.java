package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class o54 implements Parcelable {
    public static final n54 CREATOR = new n54();
    public final ArrayList b;
    public final Map c;

    public o54(Parcel parcel) {
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(x54.CREATOR);
        arrayListCreateTypedArrayList.getClass();
        CREATOR.getClass();
        int i = parcel.readInt();
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (int i2 = 0; i2 < i; i2++) {
            String string = parcel.readString();
            string.getClass();
            String string2 = parcel.readString();
            string2.getClass();
            linkedHashMap.put(string, string2);
        }
        this.b = arrayListCreateTypedArrayList;
        this.c = linkedHashMap;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.b);
        parcel.writeInt(this.c.size());
        for (Map.Entry entry : this.c.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            parcel.writeString(str);
            parcel.writeString(str2);
        }
    }

    public o54(ArrayList arrayList, Map map) {
        this.b = arrayList;
        this.c = map;
    }
}
