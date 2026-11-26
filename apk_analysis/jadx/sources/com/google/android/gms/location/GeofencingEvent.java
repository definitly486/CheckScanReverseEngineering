package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.location.zzej;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GeofencingEvent {
    public final int a;
    public final int b;
    public final List c;
    public final Location d;

    public GeofencingEvent(int i, int i2, ArrayList arrayList, Location location) {
        this.a = i;
        this.b = i2;
        this.c = arrayList;
        this.d = location;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static GeofencingEvent fromIntent(Intent intent) {
        ArrayList arrayList;
        if (intent != null) {
            int intExtra = intent.getIntExtra(Constants.KEY_GMS_ERROR_CODE, -1);
            int intExtra2 = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
            if (intExtra2 == -1) {
                intExtra2 = -1;
            } else if (intExtra2 != 1 && intExtra2 != 2 && intExtra2 != 4) {
                if (intExtra2 == 8) {
                    intExtra2 = 8;
                } else {
                    intExtra2 = -1;
                }
            }
            ArrayList arrayList2 = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
            if (arrayList2 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList2.size());
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    byte[] bArr = (byte[]) arrayList2.get(i);
                    Parcelable.Creator<zzej> creator = zzej.CREATOR;
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.unmarshall(bArr, 0, bArr.length);
                    parcelObtain.setDataPosition(0);
                    zzej zzejVarCreateFromParcel = zzej.CREATOR.createFromParcel(parcelObtain);
                    parcelObtain.recycle();
                    arrayList.add(zzejVarCreateFromParcel);
                }
            }
            Location location = (Location) intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location");
            if (arrayList != null || intExtra != -1) {
                return new GeofencingEvent(intExtra, intExtra2, arrayList, location);
            }
        }
        return null;
    }

    public int getErrorCode() {
        return this.a;
    }

    public int getGeofenceTransition() {
        return this.b;
    }

    public List<Geofence> getTriggeringGeofences() {
        return this.c;
    }

    public Location getTriggeringLocation() {
        return this.d;
    }

    public boolean hasError() {
        return this.a != -1;
    }
}
