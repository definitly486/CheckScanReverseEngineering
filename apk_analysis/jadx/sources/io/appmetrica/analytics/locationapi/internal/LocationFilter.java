package io.appmetrica.analytics.locationapi.internal;

import defpackage.jh2;
import defpackage.js2;

/* JADX INFO: loaded from: classes5.dex */
public final class LocationFilter {
    private final long a;
    private final float b;

    public /* synthetic */ LocationFilter(long j, float f, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? 5000L : j, (i & 2) != 0 ? 10.0f : f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!LocationFilter.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        LocationFilter locationFilter = (LocationFilter) obj;
        return this.a == locationFilter.a && this.b == locationFilter.b;
    }

    public final float getUpdateDistanceInterval() {
        return this.b;
    }

    public final long getUpdateTimeInterval() {
        return this.a;
    }

    public int hashCode() {
        return Float.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationFilter(updateTimeInterval=");
        sb.append(this.a);
        sb.append(", updateDistanceInterval=");
        return js2.b(sb, this.b, ')');
    }

    public LocationFilter(long j, float f) {
        this.a = j;
        this.b = f;
    }

    public LocationFilter() {
        this(0L, 0.0f, 3, null);
    }
}
