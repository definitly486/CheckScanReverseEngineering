package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.location.zzej;
import defpackage.fg;

/* JADX INFO: loaded from: classes4.dex */
public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class Builder {
        public double e;
        public double f;
        public float g;
        public String a = null;
        public int b = 3;
        public long c = -1;
        public short d = -1;
        public int h = 0;
        public int i = -1;

        public Geofence build() {
            if (this.a == null) {
                fg.c("Request ID not set.");
                return null;
            }
            int i = this.b;
            if (i == 0) {
                fg.c("Transitions types not set.");
                return null;
            }
            if ((i & 4) != 0 && this.i < 0) {
                fg.c("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELL.");
                return null;
            }
            if (this.c == Long.MIN_VALUE) {
                fg.c("Expiration not set.");
                return null;
            }
            if (this.d == -1) {
                fg.c("Geofence region not set.");
                return null;
            }
            if (this.h >= 0) {
                return new zzej(this.a, this.b, (short) 1, this.e, this.f, this.g, this.c, this.h, this.i);
            }
            fg.c("Notification responsiveness should be nonnegative.");
            return null;
        }

        public Builder setCircularRegion(double d, double d2, float f) {
            boolean z = d >= -90.0d && d <= 90.0d;
            StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 18);
            sb.append("Invalid latitude: ");
            sb.append(d);
            Preconditions.checkArgument(z, sb.toString());
            boolean z2 = d2 >= -180.0d && d2 <= 180.0d;
            StringBuilder sb2 = new StringBuilder(String.valueOf(d2).length() + 19);
            sb2.append("Invalid longitude: ");
            sb2.append(d2);
            Preconditions.checkArgument(z2, sb2.toString());
            boolean z3 = f > 0.0f;
            StringBuilder sb3 = new StringBuilder(String.valueOf(f).length() + 16);
            sb3.append("Invalid radius: ");
            sb3.append(f);
            Preconditions.checkArgument(z3, sb3.toString());
            this.d = (short) 1;
            this.e = d;
            this.f = d2;
            this.g = f;
            return this;
        }

        public Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.c = -1L;
                return this;
            }
            this.c = DefaultClock.getInstance().elapsedRealtime() + j;
            return this;
        }

        public Builder setLoiteringDelay(int i) {
            this.i = i;
            return this;
        }

        public Builder setNotificationResponsiveness(int i) {
            this.h = i;
            return this;
        }

        public Builder setRequestId(String str) {
            this.a = (String) Preconditions.checkNotNull(str, "Request ID can't be set to null");
            return this;
        }

        public Builder setTransitionTypes(int i) {
            this.b = i;
            return this;
        }
    }

    public @interface GeofenceTransition {
    }

    public @interface TransitionTypes {
    }

    long getExpirationTime();

    double getLatitude();

    int getLoiteringDelay();

    double getLongitude();

    int getNotificationResponsiveness();

    float getRadius();

    String getRequestId();

    int getTransitionTypes();
}
