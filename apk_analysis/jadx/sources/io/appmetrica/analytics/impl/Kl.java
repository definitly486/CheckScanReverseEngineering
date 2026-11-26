package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class Kl {
    public final MapTrimmers a;
    public final Pc b;

    public Kl(PublicLogger publicLogger, String str) {
        this(new MapTrimmers(30, 50, MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, str, publicLogger), new Pc(str, publicLogger));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized boolean a(Sc sc, String str, String str2) {
        try {
            if (sc.size() < this.a.getCollectionLimitation().getMaxSize() || (this.a.getCollectionLimitation().getMaxSize() == sc.size() && sc.containsKey(str))) {
                this.b.getClass();
                int length = sc.a;
                if (str2 != null) {
                    length += str2.length();
                }
                if (sc.containsKey(str)) {
                    String str3 = (String) sc.get(str);
                    if (str3 != null) {
                        length -= str3.length();
                    }
                } else {
                    length += str.length();
                }
                if (length <= 4500) {
                    sc.put(str, str2);
                    return true;
                }
                Pc pc = this.b;
                pc.b.warning("The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored", pc.a, 4500, str);
            } else {
                this.a.logContainerLimitReached(str);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public Kl(MapTrimmers mapTrimmers, Pc pc) {
        this.a = mapTrimmers;
        this.b = pc;
    }
}
