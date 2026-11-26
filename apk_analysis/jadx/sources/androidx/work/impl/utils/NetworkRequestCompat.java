package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.vg;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkRequestCompat {
    public static final Companion Companion = new Companion(null);
    private static final String TAG;
    private final Object wrapped;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("NetworkRequestCompat");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }

    public /* synthetic */ NetworkRequestCompat(Object obj, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : obj);
    }

    public static /* synthetic */ NetworkRequestCompat copy$default(NetworkRequestCompat networkRequestCompat, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = networkRequestCompat.wrapped;
        }
        return networkRequestCompat.copy(obj);
    }

    public final Object component1() {
        return this.wrapped;
    }

    public final NetworkRequestCompat copy(Object obj) {
        return new NetworkRequestCompat(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkRequestCompat) && aa4.e(this.wrapped, ((NetworkRequestCompat) obj).wrapped);
    }

    public final NetworkRequest getNetworkRequest() {
        return (NetworkRequest) this.wrapped;
    }

    public final Object getWrapped() {
        return this.wrapped;
    }

    public int hashCode() {
        Object obj = this.wrapped;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return vg.d(new StringBuilder("NetworkRequestCompat(wrapped="), this.wrapped, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final String getTAG() {
            return NetworkRequestCompat.TAG;
        }

        private Companion() {
        }
    }

    public NetworkRequestCompat(Object obj) {
        this.wrapped = obj;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NetworkRequestCompat() {
        jh2 jh2Var = null;
        this(jh2Var, 1, jh2Var);
    }
}
