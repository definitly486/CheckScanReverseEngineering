package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.Geofence;
import defpackage.ag;
import defpackage.fg;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzej extends AbstractSafeParcelable implements Geofence {
    public static final Parcelable.Creator<zzej> CREATOR = new zzek();
    public final String b;
    public final long c;
    public final short d;
    public final double e;
    public final double f;
    public final float g;
    public final int h;
    public final int i;
    public final int j;

    public zzej(String str, int i, short s, double d, double d2, float f, long j, int i2, int i3) {
        if (str == null) {
            fg.c("requestId is null");
            throw null;
        }
        if (f <= 0.0f) {
            StringBuilder sb = new StringBuilder(String.valueOf(f).length() + 16);
            sb.append("invalid radius: ");
            sb.append(f);
            throw new IllegalArgumentException(sb.toString());
        }
        if (d > 90.0d || d < -90.0d) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(d).length() + 18);
            sb2.append("invalid latitude: ");
            sb2.append(d);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (d2 > 180.0d || d2 < -180.0d) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(d2).length() + 19);
            sb3.append("invalid longitude: ");
            sb3.append(d2);
            throw new IllegalArgumentException(sb3.toString());
        }
        int i4 = i & 15;
        if (i4 == 0) {
            fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 35), "No supported transition specified: ", i));
            throw null;
        }
        this.d = s;
        this.b = str;
        this.e = d;
        this.f = d2;
        this.g = f;
        this.c = j;
        this.h = i4;
        this.i = i2;
        this.j = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzej) {
            zzej zzejVar = (zzej) obj;
            if (this.g == zzejVar.g && this.e == zzejVar.e && this.f == zzejVar.f && this.d == zzejVar.d && this.h == zzejVar.h) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.location.Geofence
    public final long getExpirationTime() {
        return this.c;
    }

    @Override // com.google.android.gms.location.Geofence
    public final double getLatitude() {
        return this.e;
    }

    @Override // com.google.android.gms.location.Geofence
    public final int getLoiteringDelay() {
        return this.j;
    }

    @Override // com.google.android.gms.location.Geofence
    public final double getLongitude() {
        return this.f;
    }

    @Override // com.google.android.gms.location.Geofence
    public final int getNotificationResponsiveness() {
        return this.i;
    }

    @Override // com.google.android.gms.location.Geofence
    public final float getRadius() {
        return this.g;
    }

    @Override // com.google.android.gms.location.Geofence
    public final String getRequestId() {
        return this.b;
    }

    @Override // com.google.android.gms.location.Geofence
    public final int getTransitionTypes() {
        return this.h;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.e);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f);
        return ((((Float.floatToIntBits(this.g) + ((((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31)) * 31) + this.d) * 31) + this.h;
    }

    public final String toString() {
        String str;
        Locale locale = Locale.US;
        short s = this.d;
        if (s != -1) {
            str = s != 1 ? "UNKNOWN" : "CIRCLE";
        } else {
            str = "INVALID";
        }
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", str, this.b.replaceAll("\\p{C}", "?"), Integer.valueOf(this.h), Double.valueOf(this.e), Double.valueOf(this.f), Float.valueOf(this.g), Integer.valueOf(this.i / 1000), Integer.valueOf(this.j), Long.valueOf(this.c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.b, false);
        SafeParcelWriter.writeLong(parcel, 2, this.c);
        SafeParcelWriter.writeShort(parcel, 3, this.d);
        SafeParcelWriter.writeDouble(parcel, 4, this.e);
        SafeParcelWriter.writeDouble(parcel, 5, this.f);
        SafeParcelWriter.writeFloat(parcel, 6, this.g);
        SafeParcelWriter.writeInt(parcel, 7, this.h);
        SafeParcelWriter.writeInt(parcel, 8, this.i);
        SafeParcelWriter.writeInt(parcel, 9, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
