package io.appmetrica.analytics.idsync.impl;

import android.text.TextUtils;
import defpackage.jo1;
import defpackage.qn1;
import defpackage.ta8;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.idsync.impl.q;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.network.internal.NetworkClientBuilder;
import io.appmetrica.analytics.networkapi.NetworkClientSettings;
import io.appmetrica.analytics.networkapi.Request;
import io.appmetrica.analytics.networkapi.Response;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: loaded from: classes5.dex */
public final class q {
    public final ServiceContext a;
    public final M b;
    public SdkIdentifiers c;
    public final SystemTimeProvider d = new SystemTimeProvider();
    public final r e;
    public final B f;
    public final t g;

    public q(ServiceContext serviceContext, M m, SdkIdentifiers sdkIdentifiers) {
        this.a = serviceContext;
        this.b = m;
        this.c = sdkIdentifiers;
        this.e = new r(serviceContext.getNetworkContext().getSslSocketFactoryProvider(), this);
        this.f = new B(serviceContext);
        this.g = new t(serviceContext);
    }

    public static final void a(q qVar, G g) {
        B b = qVar.f;
        D d = g.c;
        b.getClass();
        if ((A.a[d.a.ordinal()] == 1 ? new C0764b(b.a) : new C0763a()).a()) {
            r rVar = qVar.e;
            rVar.getClass();
            Request.Builder builder = new Request.Builder(g.b);
            for (Map.Entry entry : g.d.entrySet()) {
                builder.addHeader((String) entry.getKey(), qn1.a0((Iterable) entry.getValue(), ", ", null, null, 0, null, 62));
            }
            Response responseExecute = new NetworkClientBuilder().withSettings(new NetworkClientSettings.Builder().withSslSocketFactory(rVar.a.getSslSocketFactory()).withUseCaches(false).withInstanceFollowRedirects(true).withMaxResponseSize(102400).build()).build().newCall(builder.build()).execute();
            rVar.b.a(new J(g.a, responseExecute.isCompleted(), responseExecute.getUrl(), g.g.contains(Integer.valueOf(responseExecute.getCode())), responseExecute.getCode(), responseExecute.getResponseData(), responseExecute.getHeaders()), g);
        }
    }

    public static final void a(J j, q qVar, G g) throws JSONException {
        if (j.b) {
            M m = qVar.b;
            String str = j.a;
            m.d.put(str, new K(str, qVar.d.currentTimeMillis(), j.d ? F.SUCCESS : F.FAILURE));
            m.a.putString(m.c, m.b.fromModel(qn1.t0(m.d.values())));
            t tVar = qVar.g;
            SdkIdentifiers sdkIdentifiers = qVar.c;
            tVar.a.getClass();
            String strA = y.a(j);
            w wVar = tVar.b;
            wVar.getClass();
            ArrayList arrayList = new ArrayList();
            if (g.h) {
                arrayList.add(new s(wVar.a));
            }
            String str2 = g.i;
            if (str2 != null && !ta8.M(str2)) {
                arrayList.add(new u(wVar.a, g.i));
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((v) it.next()).a(strA, sdkIdentifiers);
            }
        }
    }

    public final SdkIdentifiers a() {
        return this.c;
    }

    public final void a(SdkIdentifiers sdkIdentifiers) {
        this.c = sdkIdentifiers;
    }

    public final void a(G g) {
        long j;
        if (TextUtils.isEmpty(g.a) || TextUtils.isEmpty(g.b) || g.g.isEmpty()) {
            return;
        }
        K k = (K) this.b.d.get(g.a);
        if (k != null) {
            long jCurrentTimeMillis = this.d.currentTimeMillis();
            int iOrdinal = k.c.ordinal();
            if (iOrdinal != 1) {
                j = iOrdinal != 3 ? 0L : g.f;
            } else {
                j = g.e;
            }
            if (jCurrentTimeMillis - k.b < j) {
                return;
            }
        }
        this.a.getExecutorProvider().getSupportIOExecutor().execute(new jo1(2, this, g));
    }

    public final void a(final J j, final G g) {
        this.a.getExecutorProvider().getModuleExecutor().execute(new Runnable() { // from class: y5a
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                q.a(j, this, g);
            }
        });
    }
}
