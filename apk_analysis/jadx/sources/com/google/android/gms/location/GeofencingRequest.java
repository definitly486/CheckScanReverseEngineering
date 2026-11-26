package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzej;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzo();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    public final List b;
    public final int c;
    public final String d;

    public static final class Builder {
        public final ArrayList a = new ArrayList();
        public int b = 5;

        public Builder addGeofence(Geofence geofence) {
            Preconditions.checkArgument(geofence instanceof zzej, "Geofence must be created using Geofence.Builder.");
            this.a.add((zzej) geofence);
            return this;
        }

        public Builder addGeofences(List<? extends Geofence> list) {
            Iterator<? extends Geofence> it = list.iterator();
            while (it.hasNext()) {
                addGeofence(it.next());
            }
            return this;
        }

        public GeofencingRequest build() {
            ArrayList arrayList = this.a;
            Preconditions.checkArgument(!arrayList.isEmpty(), "No geofence has been added to this request.");
            return new GeofencingRequest(this.b, null, new ArrayList(arrayList));
        }

        public Builder setInitialTrigger(int i) {
            this.b = i & 7;
            return this;
        }
    }

    public @interface InitialTrigger {
    }

    public GeofencingRequest(int i, String str, ArrayList arrayList) {
        this.b = arrayList;
        this.c = i;
        this.d = str;
    }

    public List<Geofence> getGeofences() {
        return new ArrayList(this.b);
    }

    public int getInitialTrigger() {
        return this.c;
    }

    public String toString() {
        String strValueOf = String.valueOf(this.b);
        int length = strValueOf.length();
        int i = this.c;
        StringBuilder sb = new StringBuilder(length + 45 + String.valueOf(i).length() + 1);
        sb.append("GeofencingRequest[geofences=");
        sb.append(strValueOf);
        sb.append(", initialTrigger=");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.b, false);
        SafeParcelWriter.writeInt(parcel, 2, getInitialTrigger());
        SafeParcelWriter.writeString(parcel, 4, this.d, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
