package io.grpc;

import androidx.media3.container.MdtaMetadataEntry;
import com.google.common.collect.x;
import defpackage.uh5;
import defpackage.xp2;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class n {
    public static final Logger d = Logger.getLogger(n.class.getName());
    public static n e;
    public String a = "unknown";
    public final LinkedHashSet<m> b = new LinkedHashSet<>();
    public com.google.common.collect.l<String, m> c = x.h;

    public static final class a implements p.b<m> {
        @Override // io.grpc.p.b
        public final boolean a(m mVar) {
            mVar.getClass();
            return true;
        }

        @Override // io.grpc.p.b
        public final int b(m mVar) {
            mVar.getClass();
            return 5;
        }
    }

    public static synchronized n a() {
        try {
            if (e == null) {
                try {
                    List<m> listA = p.a(m.class, Arrays.asList(new xp2()).iterator(), new uh5(), new a());
                    if (listA.isEmpty()) {
                        d.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                    }
                    e = new n();
                    for (m mVar : listA) {
                        d.fine("Service loader found " + mVar);
                        n nVar = e;
                        synchronized (nVar) {
                            mVar.getClass();
                            nVar.b.add(mVar);
                        }
                    }
                    e.c();
                } catch (Throwable th) {
                    throw new ServiceConfigurationError(th.getMessage(), th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return e;
    }

    public final m b(String str) {
        com.google.common.collect.l<String, m> lVar;
        if (str == null) {
            return null;
        }
        synchronized (this) {
            lVar = this.c;
        }
        return (m) ((x) lVar).get(str.toLowerCase(Locale.US));
    }

    public final synchronized void c() {
        try {
            HashMap map = new HashMap();
            String str = "unknown";
            byte b = MdtaMetadataEntry.AUXILIARY_TRACKS_SAMPLES_NOT_INTERLEAVED;
            for (m mVar : this.b) {
                mVar.getClass();
                if (((m) map.get("dns")) == null) {
                    map.put("dns", mVar);
                }
                if (b < 5) {
                    str = "dns";
                    b = 5;
                }
            }
            this.c = com.google.common.collect.l.b(map);
            this.a = str;
        } catch (Throwable th) {
            throw th;
        }
    }
}
