package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new zzag();
    public final List b;
    public final boolean c;
    public final boolean d;

    public static final class Builder {
        public final ArrayList a = new ArrayList();
        public boolean b = false;
        public boolean c = false;

        public Builder addAllLocationRequests(Collection<LocationRequest> collection) {
            for (LocationRequest locationRequest : collection) {
                if (locationRequest != null) {
                    this.a.add(locationRequest);
                }
            }
            return this;
        }

        public Builder addLocationRequest(LocationRequest locationRequest) {
            if (locationRequest != null) {
                this.a.add(locationRequest);
            }
            return this;
        }

        public LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.a, this.b, this.c);
        }

        public Builder setAlwaysShow(boolean z) {
            this.b = z;
            return this;
        }

        public Builder setNeedBle(boolean z) {
            this.c = z;
            return this;
        }
    }

    public LocationSettingsRequest(ArrayList arrayList, boolean z, boolean z2) {
        this.b = arrayList;
        this.c = z;
        this.d = z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, Collections.unmodifiableList(this.b), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.c);
        SafeParcelWriter.writeBoolean(parcel, 3, this.d);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
