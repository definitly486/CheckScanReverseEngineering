package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public final List b;
    public static final List c = Collections.EMPTY_LIST;
    public static final Parcelable.Creator<LocationResult> CREATOR = new zzaf();

    public LocationResult(List list) {
        this.b = list;
    }

    public static LocationResult create(List<Location> list) {
        if (list == null) {
            list = c;
        }
        return new LocationResult(list);
    }

    public static LocationResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        LocationResult locationResult = (LocationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "com.google.android.gms.location.EXTRA_LOCATION_RESULT_BYTES", CREATOR);
        return locationResult == null ? (LocationResult) intent.getParcelableExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT") : locationResult;
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT") || intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT_BYTES");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        List list = ((LocationResult) obj).b;
        int i = Build.VERSION.SDK_INT;
        List<Location> list2 = this.b;
        if (i >= 31) {
            return list2.equals(list);
        }
        if (list2.size() != list.size()) {
            return false;
        }
        Iterator it = list.iterator();
        for (Location location : list2) {
            Location location2 = (Location) it.next();
            if (Double.compare(location.getLatitude(), location2.getLatitude()) != 0 || Double.compare(location.getLongitude(), location2.getLongitude()) != 0 || location.getTime() != location2.getTime() || location.getElapsedRealtimeNanos() != location2.getElapsedRealtimeNanos() || !Objects.equal(location.getProvider(), location2.getProvider())) {
                return false;
            }
        }
        return true;
    }

    public Location getLastLocation() {
        List list = this.b;
        int size = list.size();
        if (size == 0) {
            return null;
        }
        return (Location) list.get(size - 1);
    }

    public List<Location> getLocations() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(this.b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationResult");
        DecimalFormat decimalFormat = zzaj.a;
        List list = this.b;
        sb.ensureCapacity(list.size() * 100);
        sb.append("[");
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            zzaj.zza((Location) it.next(), sb);
            sb.append(", ");
            z = true;
        }
        if (z) {
            sb.setLength(sb.length() - 2);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getLocations(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
