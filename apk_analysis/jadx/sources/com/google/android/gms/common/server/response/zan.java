package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.n1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zao();
    public final int b;
    public final HashMap c;
    public final String d;

    public zan(int i, String str, ArrayList arrayList) {
        this.b = i;
        HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zalVar = (zal) arrayList.get(i2);
            String str2 = zalVar.c;
            ArrayList arrayList2 = zalVar.d;
            HashMap map2 = new HashMap();
            int size2 = ((ArrayList) Preconditions.checkNotNull(arrayList2)).size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zamVar = (zam) arrayList2.get(i3);
                map2.put(zamVar.c, zamVar.d);
            }
            map.put(str2, map2);
        }
        this.c = map;
        this.d = (String) Preconditions.checkNotNull(str);
        zaa();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        HashMap map = this.c;
        for (String str : map.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map2 = (Map) map.get(str);
            for (String str2 : map2.keySet()) {
                n1.d(sb, "  ", str2, ": ");
                sb.append(map2.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        ArrayList arrayList = new ArrayList();
        HashMap map = this.c;
        for (String str : map.keySet()) {
            arrayList.add(new zal(str, (Map) map.get(str)));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final void zaa() {
        HashMap map = this.c;
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            Map map2 = (Map) map.get((String) it.next());
            Iterator it2 = map2.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse.Field) map2.get((String) it2.next())).zad(this);
            }
        }
    }

    public final void zab() {
        HashMap map = this.c;
        for (String str : map.keySet()) {
            Map map2 = (Map) map.get(str);
            HashMap map3 = new HashMap();
            for (String str2 : map2.keySet()) {
                map3.put(str2, ((FastJsonResponse.Field) map2.get(str2)).zaa());
            }
            map.put(str, map3);
        }
    }

    public final void zac(Class cls, Map map) {
        this.c.put((String) Preconditions.checkNotNull(cls.getCanonicalName()), map);
    }

    public final Map zad(String str) {
        return (Map) this.c.get(str);
    }

    public final boolean zae(Class cls) {
        return this.c.containsKey(Preconditions.checkNotNull(cls.getCanonicalName()));
    }

    public final String zaf() {
        return this.d;
    }

    public zan(Class cls) {
        this.b = 1;
        this.c = new HashMap();
        this.d = (String) Preconditions.checkNotNull(cls.getCanonicalName());
    }
}
