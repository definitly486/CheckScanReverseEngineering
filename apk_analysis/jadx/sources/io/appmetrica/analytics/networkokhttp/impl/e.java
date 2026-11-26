package io.appmetrica.analytics.networkokhttp.impl;

import defpackage.eg;
import defpackage.f94;
import defpackage.fg;
import defpackage.gb9;
import defpackage.qn1;
import defpackage.ta8;
import defpackage.ts6;
import defpackage.u96;
import defpackage.z86;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemPropertiesHelper;
import io.appmetrica.analytics.networkapi.NetworkClientSettings;
import io.appmetrica.analytics.networkokhttp.internal.InterceptorSupplier;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e {
    public static OkHttpClient a(NetworkClientSettings networkClientSettings) {
        f94 f94Var;
        OkHttpClient.a aVar = new OkHttpClient.a();
        ts6 ts6Var = ts6.HTTP_2;
        ts6 ts6Var2 = ts6.HTTP_1_1;
        ArrayList arrayList = new ArrayList(u96.i(ts6Var, ts6Var2));
        ts6 ts6Var3 = ts6.H2_PRIOR_KNOWLEDGE;
        if (!arrayList.contains(ts6Var3) && !arrayList.contains(ts6Var2)) {
            eg.d(arrayList, "protocols must contain h2_prior_knowledge or http/1.1: ");
            return null;
        }
        if (arrayList.contains(ts6Var3) && arrayList.size() > 1) {
            eg.d(arrayList, "protocols containing h2_prior_knowledge cannot use other protocols: ");
            return null;
        }
        if (arrayList.contains(ts6.HTTP_1_0)) {
            eg.d(arrayList, "protocols must not contain http/1.0: ");
            return null;
        }
        if (arrayList.contains(null)) {
            fg.c("protocols must not contain null");
            return null;
        }
        arrayList.remove(ts6.SPDY_3);
        if (!arrayList.equals(aVar.s)) {
            aVar.B = null;
        }
        List<? extends ts6> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        listUnmodifiableList.getClass();
        aVar.s = listUnmodifiableList;
        Integer readTimeout = networkClientSettings.getReadTimeout();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (readTimeout != null) {
            long jIntValue = readTimeout.intValue();
            timeUnit.getClass();
            aVar.y = gb9.b(jIntValue, timeUnit);
        }
        Integer connectTimeout = networkClientSettings.getConnectTimeout();
        if (connectTimeout != null) {
            long jIntValue2 = connectTimeout.intValue();
            timeUnit.getClass();
            aVar.x = gb9.b(jIntValue2, timeUnit);
        }
        Long callTimeout = networkClientSettings.getCallTimeout();
        if (callTimeout != null) {
            long jLongValue = callTimeout.longValue();
            timeUnit.getClass();
            aVar.w = gb9.b(jLongValue, timeUnit);
        }
        Boolean instanceFollowRedirects = networkClientSettings.getInstanceFollowRedirects();
        if (instanceFollowRedirects != null) {
            aVar.h = instanceFollowRedirects.booleanValue();
        }
        try {
            String systemProperty = SystemPropertiesHelper.readSystemProperty("debug.yndx.iaa.okhttp.mock");
            InterceptorSupplier interceptorSupplier = ta8.M(systemProperty) ? null : (InterceptorSupplier) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(systemProperty, InterceptorSupplier.class);
            if (interceptorSupplier != null && (f94Var = interceptorSupplier.get()) != null) {
                aVar.c.add(f94Var);
            }
        } catch (Throwable unused) {
        }
        SSLSocketFactory sslSocketFactory = networkClientSettings.getSslSocketFactory();
        if (sslSocketFactory != null) {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                ArrayList arrayList2 = new ArrayList();
                for (TrustManager trustManager : trustManagers) {
                    if (trustManager instanceof X509TrustManager) {
                        arrayList2.add(trustManager);
                    }
                }
                X509TrustManager x509TrustManager = (X509TrustManager) qn1.V(arrayList2);
                if (x509TrustManager != null) {
                    if (!sslSocketFactory.equals(aVar.p) || !x509TrustManager.equals(aVar.q)) {
                        aVar.B = null;
                    }
                    aVar.p = sslSocketFactory;
                    z86 z86Var = z86.a;
                    aVar.v = z86.a.b(x509TrustManager);
                    aVar.q = x509TrustManager;
                }
            } catch (Throwable unused2) {
            }
        }
        Boolean useCaches = networkClientSettings.getUseCaches();
        if (useCaches != null && !useCaches.booleanValue()) {
            aVar.k = null;
        }
        return new OkHttpClient(aVar);
    }
}
