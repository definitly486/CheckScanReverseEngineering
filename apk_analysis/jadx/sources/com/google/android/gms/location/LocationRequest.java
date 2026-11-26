package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.WorkSource;
import androidx.work.multiprocess.RemoteWorkManager;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.location.zzen;
import defpackage.ad2;
import defpackage.ag;
import defpackage.fg;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzae();

    @Deprecated
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;

    @Deprecated
    public static final int PRIORITY_HIGH_ACCURACY = 100;

    @Deprecated
    public static final int PRIORITY_LOW_POWER = 104;

    @Deprecated
    public static final int PRIORITY_NO_POWER = 105;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;
    public int g;
    public float h;
    public boolean i;
    public long j;
    public final int k;
    public final int l;
    public final boolean m;
    public final WorkSource n;
    public final com.google.android.gms.internal.location.zzd o;

    public LocationRequest(int i, long j, long j2, long j3, long j4, long j5, int i2, float f, boolean z, long j6, int i3, int i4, boolean z2, WorkSource workSource, com.google.android.gms.internal.location.zzd zzdVar) {
        this.b = i;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4 != Long.MAX_VALUE ? Math.min(Math.max(1L, j4 - SystemClock.elapsedRealtime()), j5) : j5;
        this.g = i2;
        this.h = f;
        this.i = z;
        this.j = j6;
        this.k = i3;
        this.l = i4;
        this.m = z2;
        this.n = workSource;
        this.o = zzdVar;
    }

    @Deprecated
    public static LocationRequest create() {
        return new LocationRequest(102, 3600000L, RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS, 0L, Long.MAX_VALUE, Long.MAX_VALUE, Integer.MAX_VALUE, 0.0f, true, 3600000L, 0, 0, false, new WorkSource(), null);
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocationRequest) {
            LocationRequest locationRequest = (LocationRequest) obj;
            boolean zIsBatched = isBatched();
            if (this.b == locationRequest.b && ((isPassive() || this.c == locationRequest.c) && getMinUpdateIntervalMillis() == locationRequest.getMinUpdateIntervalMillis() && zIsBatched == locationRequest.isBatched() && ((!zIsBatched || this.e == locationRequest.e) && this.f == locationRequest.f && this.g == locationRequest.g && this.h == locationRequest.h && this.i == locationRequest.i && this.k == locationRequest.k && this.l == locationRequest.l && this.m == locationRequest.m && this.n.equals(locationRequest.n) && Objects.equal(this.o, locationRequest.o)))) {
                return true;
            }
        }
        return false;
    }

    @Pure
    public long getDurationMillis() {
        return this.f;
    }

    @Deprecated
    @Pure
    public long getExpirationTime() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f;
        long j2 = jElapsedRealtime + j;
        if (((jElapsedRealtime ^ j2) & (j ^ j2)) < 0) {
            return Long.MAX_VALUE;
        }
        return j2;
    }

    @Deprecated
    @Pure
    public long getFastestInterval() {
        return getMinUpdateIntervalMillis();
    }

    @Pure
    public int getGranularity() {
        return this.k;
    }

    @Deprecated
    @Pure
    public long getInterval() {
        return getIntervalMillis();
    }

    @Pure
    public long getIntervalMillis() {
        if (getPriority() == 105) {
            return Long.MAX_VALUE;
        }
        return this.c;
    }

    @Pure
    public long getMaxUpdateAgeMillis() {
        long j = this.j;
        return j == -1 ? this.c : j;
    }

    @Pure
    public long getMaxUpdateDelayMillis() {
        return this.e;
    }

    @Pure
    public int getMaxUpdates() {
        return this.g;
    }

    @Deprecated
    @Pure
    public long getMaxWaitTime() {
        return Math.max(this.e, getIntervalMillis());
    }

    @Pure
    public float getMinUpdateDistanceMeters() {
        return this.h;
    }

    @Pure
    public long getMinUpdateIntervalMillis() {
        long j = this.d;
        return j == -1 ? this.c / 2 : j;
    }

    @Deprecated
    @Pure
    public int getNumUpdates() {
        return getMaxUpdates();
    }

    @Pure
    public int getPriority() {
        return this.b;
    }

    @Deprecated
    @Pure
    public float getSmallestDisplacement() {
        return getMinUpdateDistanceMeters();
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Long.valueOf(getIntervalMillis()), Long.valueOf(getMinUpdateIntervalMillis()), this.n);
    }

    @Pure
    public boolean isBatched() {
        long j = this.e;
        return j > 0 && (j >> 1) >= getIntervalMillis();
    }

    @Deprecated
    @Pure
    public boolean isFastestIntervalExplicitlySet() {
        return true;
    }

    @Pure
    public boolean isPassive() {
        return this.b == 105;
    }

    public boolean isWaitForAccurateLocation() {
        return this.i;
    }

    @Deprecated
    public LocationRequest setExpirationDuration(long j) {
        Preconditions.checkArgument(j > 0, "durationMillis must be greater than 0");
        this.f = j;
        return this;
    }

    @Deprecated
    public LocationRequest setExpirationTime(long j) {
        this.f = Math.max(1L, j - SystemClock.elapsedRealtime());
        return this;
    }

    @Deprecated
    public LocationRequest setFastestInterval(long j) {
        Preconditions.checkArgument(j >= 0, "illegal fastest interval: %d", Long.valueOf(j));
        this.d = j;
        return this;
    }

    @Deprecated
    public LocationRequest setInterval(long j) {
        Preconditions.checkArgument(j >= 0, "intervalMillis must be greater than or equal to 0");
        long j2 = this.d;
        long j3 = this.c;
        if (j2 == j3 / 6) {
            this.d = j / 6;
        }
        if (this.j == j3) {
            this.j = j;
        }
        this.c = j;
        return this;
    }

    @Deprecated
    public LocationRequest setMaxWaitTime(long j) {
        Preconditions.checkArgument(j >= 0, "illegal max wait time: %d", Long.valueOf(j));
        this.e = j;
        return this;
    }

    @Deprecated
    public LocationRequest setNumUpdates(int i) {
        if (i > 0) {
            this.g = i;
            return this;
        }
        fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 20), "invalid numUpdates: ", i));
        return null;
    }

    @Deprecated
    public LocationRequest setPriority(int i) {
        zzak.zza(i);
        this.b = i;
        return this;
    }

    @Deprecated
    public LocationRequest setSmallestDisplacement(float f) {
        if (f >= 0.0f) {
            this.h = f;
            return this;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(f).length() + 22);
        sb.append("invalid displacement: ");
        sb.append(f);
        throw new IllegalArgumentException(sb.toString());
    }

    @Deprecated
    public LocationRequest setWaitForAccurateLocation(boolean z) {
        this.i = z;
        return this;
    }

    public String toString() {
        StringBuilder sbC = ad2.c("Request[");
        if (isPassive()) {
            sbC.append(zzak.zzb(this.b));
            if (this.e > 0) {
                sbC.append("/");
                zzen.zzc(this.e, sbC);
            }
        } else {
            sbC.append("@");
            if (isBatched()) {
                zzen.zzc(getIntervalMillis(), sbC);
                sbC.append("/");
                zzen.zzc(this.e, sbC);
            } else {
                zzen.zzc(getIntervalMillis(), sbC);
            }
            sbC.append(" ");
            sbC.append(zzak.zzb(this.b));
        }
        if (isPassive() || this.d != -1) {
            sbC.append(", minUpdateInterval=");
            long j = this.d;
            sbC.append(j == Long.MAX_VALUE ? "∞" : zzen.zzb(j));
        }
        if (this.h > 0.0d) {
            sbC.append(", minUpdateDistance=");
            sbC.append(this.h);
        }
        if (this.j != -1) {
            sbC.append(", maxUpdateAge=");
            long j2 = this.j;
            sbC.append(j2 != Long.MAX_VALUE ? zzen.zzb(j2) : "∞");
        }
        if (this.f != Long.MAX_VALUE) {
            sbC.append(", duration=");
            zzen.zzc(this.f, sbC);
        }
        if (this.g != Integer.MAX_VALUE) {
            sbC.append(", maxUpdates=");
            sbC.append(this.g);
        }
        int i = this.l;
        if (i != 0) {
            sbC.append(", ");
            sbC.append(zzao.zzb(i));
        }
        int i2 = this.k;
        if (i2 != 0) {
            sbC.append(", ");
            sbC.append(zzp.zzb(i2));
        }
        if (this.i) {
            sbC.append(", waitForAccurateLocation");
        }
        if (this.m) {
            sbC.append(", bypass");
        }
        WorkSource workSource = this.n;
        if (!WorkSourceUtil.isEmpty(workSource)) {
            sbC.append(", ");
            sbC.append(workSource);
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.o;
        if (zzdVar != null) {
            sbC.append(", impersonation=");
            sbC.append(zzdVar);
        }
        sbC.append(']');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getPriority());
        SafeParcelWriter.writeLong(parcel, 2, getIntervalMillis());
        SafeParcelWriter.writeLong(parcel, 3, getMinUpdateIntervalMillis());
        SafeParcelWriter.writeInt(parcel, 6, getMaxUpdates());
        SafeParcelWriter.writeFloat(parcel, 7, getMinUpdateDistanceMeters());
        SafeParcelWriter.writeLong(parcel, 8, getMaxUpdateDelayMillis());
        SafeParcelWriter.writeBoolean(parcel, 9, isWaitForAccurateLocation());
        SafeParcelWriter.writeLong(parcel, 10, getDurationMillis());
        SafeParcelWriter.writeLong(parcel, 11, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 12, getGranularity());
        SafeParcelWriter.writeInt(parcel, 13, this.l);
        SafeParcelWriter.writeBoolean(parcel, 15, this.m);
        SafeParcelWriter.writeParcelable(parcel, 16, this.n, i, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.o, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final int zza() {
        return this.l;
    }

    @Pure
    public final boolean zzb() {
        return this.m;
    }

    @Pure
    public final WorkSource zzc() {
        return this.n;
    }

    @Pure
    public final com.google.android.gms.internal.location.zzd zzd() {
        return this.o;
    }

    @Deprecated
    public LocationRequest() {
        this(102, 3600000L, RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS, 0L, Long.MAX_VALUE, Long.MAX_VALUE, Integer.MAX_VALUE, 0.0f, true, 3600000L, 0, 0, false, new WorkSource(), null);
    }

    public static final class Builder {
        public static final long IMPLICIT_MAX_UPDATE_AGE = -1;
        public static final long IMPLICIT_MIN_UPDATE_INTERVAL = -1;
        public int a;
        public long b;
        public long c;
        public long d;
        public long e;
        public int f;
        public float g;
        public boolean h;
        public long i;
        public int j;
        public int k;
        public boolean l;
        public WorkSource m;
        public final com.google.android.gms.internal.location.zzd n;

        public Builder(LocationRequest locationRequest) {
            this(locationRequest.getPriority(), locationRequest.getIntervalMillis());
            setMinUpdateIntervalMillis(locationRequest.getMinUpdateIntervalMillis());
            setMaxUpdateDelayMillis(locationRequest.getMaxUpdateDelayMillis());
            setDurationMillis(locationRequest.getDurationMillis());
            setMaxUpdates(locationRequest.getMaxUpdates());
            setMinUpdateDistanceMeters(locationRequest.getMinUpdateDistanceMeters());
            setWaitForAccurateLocation(locationRequest.isWaitForAccurateLocation());
            setMaxUpdateAgeMillis(locationRequest.getMaxUpdateAgeMillis());
            setGranularity(locationRequest.getGranularity());
            int iZza = locationRequest.zza();
            zzao.zza(iZza);
            this.k = iZza;
            this.l = locationRequest.zzb();
            this.m = locationRequest.zzc();
            com.google.android.gms.internal.location.zzd zzdVarZzd = locationRequest.zzd();
            boolean z = true;
            if (zzdVarZzd != null && zzdVarZzd.zza()) {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.n = zzdVarZzd;
        }

        public LocationRequest build() {
            int i = this.a;
            long j = this.b;
            long jMin = this.c;
            if (i != 105) {
                jMin = Math.min(jMin, j);
            }
            return new LocationRequest(i, j, jMin, Math.max(this.d, this.b), Long.MAX_VALUE, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, new WorkSource(this.m), this.n);
        }

        public Builder setDurationMillis(long j) {
            Preconditions.checkArgument(j > 0, "durationMillis must be greater than 0");
            this.e = j;
            return this;
        }

        public Builder setGranularity(int i) {
            zzp.zza(i);
            this.j = i;
            return this;
        }

        public Builder setIntervalMillis(long j) {
            Preconditions.checkArgument(j >= 0, "intervalMillis must be greater than or equal to 0");
            this.b = j;
            return this;
        }

        public Builder setMaxUpdateAgeMillis(long j) {
            boolean z = true;
            if (j != -1 && j < 0) {
                z = false;
            }
            Preconditions.checkArgument(z, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
            this.i = j;
            return this;
        }

        public Builder setMaxUpdateDelayMillis(long j) {
            Preconditions.checkArgument(j >= 0, "maxUpdateDelayMillis must be greater than or equal to 0");
            this.d = j;
            return this;
        }

        public Builder setMaxUpdates(int i) {
            Preconditions.checkArgument(i > 0, "maxUpdates must be greater than 0");
            this.f = i;
            return this;
        }

        public Builder setMinUpdateDistanceMeters(float f) {
            Preconditions.checkArgument(f >= 0.0f, "minUpdateDistanceMeters must be greater than or equal to 0");
            this.g = f;
            return this;
        }

        public Builder setMinUpdateIntervalMillis(long j) {
            boolean z = true;
            if (j != -1 && j < 0) {
                z = false;
            }
            Preconditions.checkArgument(z, "minUpdateIntervalMillis must be greater than or equal to 0, or IMPLICIT_MIN_UPDATE_INTERVAL");
            this.c = j;
            return this;
        }

        public Builder setPriority(int i) {
            zzak.zza(i);
            this.a = i;
            return this;
        }

        public Builder setWaitForAccurateLocation(boolean z) {
            this.h = z;
            return this;
        }

        public final Builder zza(int i) {
            zzao.zza(i);
            this.k = i;
            return this;
        }

        public final Builder zzb(boolean z) {
            this.l = z;
            return this;
        }

        public final Builder zzc(WorkSource workSource) {
            this.m = workSource;
            return this;
        }

        public Builder(long j) {
            this.a = 102;
            this.c = -1L;
            this.d = 0L;
            this.e = Long.MAX_VALUE;
            this.f = Integer.MAX_VALUE;
            this.g = 0.0f;
            this.h = true;
            this.i = -1L;
            this.j = 0;
            this.k = 0;
            this.l = false;
            this.m = null;
            this.n = null;
            setIntervalMillis(j);
        }

        public Builder(int i, long j) {
            this(j);
            setPriority(i);
        }
    }
}
