package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class t54 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        LinkedHashMap linkedHashMap;
        String string = parcel.readString();
        string.getClass();
        x54.CREATOR.getClass();
        int i = parcel.readInt();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(i);
        for (int i2 = 0; i2 < i; i2++) {
            String string2 = parcel.readString();
            string2.getClass();
            linkedHashMap2.put(string2, parcel.readString());
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
        ArrayList<String> arrayListCreateStringArrayList3 = parcel.createStringArrayList();
        j5 j5Var = (j5) parcel.readParcelable(j5.class.getClassLoader());
        x54.CREATOR.getClass();
        int i3 = parcel.readInt();
        if (i3 == -1) {
            linkedHashMap = null;
        } else {
            LinkedHashMap linkedHashMap3 = new LinkedHashMap(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                String string3 = parcel.readString();
                string3.getClass();
                String string4 = parcel.readString();
                string4.getClass();
                linkedHashMap3.put(string3, string4);
            }
            linkedHashMap = linkedHashMap3;
        }
        return new x54(string, linkedHashMap2, arrayListCreateStringArrayList, arrayListCreateStringArrayList2, arrayListCreateStringArrayList3, j5Var, linkedHashMap, (cb5) parcel.readParcelable(cb5.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new x54[i];
    }
}
