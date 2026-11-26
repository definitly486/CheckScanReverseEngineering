package io.appmetrica.analytics.impl;

import defpackage.kx2;
import defpackage.u96;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.coreutils.internal.executors.BlockingExecutor;
import io.appmetrica.analytics.coreutils.internal.executors.SynchronizedBlockingExecutor;
import io.appmetrica.analytics.coreutils.internal.network.UserAgent;
import io.appmetrica.analytics.networktasks.internal.AESRSARequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.AllHostsExponentialBackoffPolicy;
import io.appmetrica.analytics.networktasks.internal.DefaultResponseValidityChecker;
import io.appmetrica.analytics.networktasks.internal.ExponentialBackoffDataHolder;
import io.appmetrica.analytics.networktasks.internal.FinalConfigProvider;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ie, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0998ie {
    public static final C0998ie a = new C0998ie();
    public static final LinkedHashMap b = new LinkedHashMap();
    public static final String c = UserAgent.getFor(BuildConfig.LIBRARY_PACKAGE_NAME, "8.4.1", "50165453");

    public static final NetworkTask a(Qm qm, C1238rm c1238rm) {
        ExponentialBackoffDataHolder exponentialBackoffDataHolder;
        C1135nm c1135nm = new C1135nm(new C1230re(), Fa.I.p());
        FinalConfigProvider finalConfigProvider = new FinalConfigProvider(c1238rm);
        SynchronizedBlockingExecutor synchronizedBlockingExecutor = new SynchronizedBlockingExecutor();
        A5 a5 = new A5(qm.a.a);
        C0998ie c0998ie = a;
        EnumC0946ge enumC0946ge = EnumC0946ge.STARTUP;
        synchronized (c0998ie) {
            try {
                LinkedHashMap linkedHashMap = b;
                Object exponentialBackoffDataHolder2 = linkedHashMap.get(enumC0946ge);
                if (exponentialBackoffDataHolder2 == null) {
                    exponentialBackoffDataHolder2 = new ExponentialBackoffDataHolder(new La(Fa.I.y(), enumC0946ge), "STARTUP");
                    linkedHashMap.put(enumC0946ge, exponentialBackoffDataHolder2);
                }
                exponentialBackoffDataHolder = (ExponentialBackoffDataHolder) exponentialBackoffDataHolder2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new NetworkTask(synchronizedBlockingExecutor, a5, new AllHostsExponentialBackoffPolicy(exponentialBackoffDataHolder), new Om(qm, new C0980hm(), new FullUrlFormer(c1135nm, finalConfigProvider), new RequestDataHolder(), new ResponseDataHolder(new DefaultResponseValidityChecker()), finalConfigProvider), kx2.b, c);
    }

    public static final NetworkTask a(C0989i5 c0989i5) {
        ExponentialBackoffDataHolder exponentialBackoffDataHolder;
        AESRSARequestBodyEncrypter aESRSARequestBodyEncrypter = new AESRSARequestBodyEncrypter();
        C0949gh c0949gh = new C0949gh(aESRSARequestBodyEncrypter);
        Nb nb = new Nb(c0989i5);
        BlockingExecutor blockingExecutor = new BlockingExecutor();
        A5 a5 = new A5(c0989i5.a);
        C0998ie c0998ie = a;
        EnumC0946ge enumC0946ge = EnumC0946ge.REPORT;
        synchronized (c0998ie) {
            try {
                LinkedHashMap linkedHashMap = b;
                Object exponentialBackoffDataHolder2 = linkedHashMap.get(enumC0946ge);
                if (exponentialBackoffDataHolder2 == null) {
                    exponentialBackoffDataHolder2 = new ExponentialBackoffDataHolder(new La(Fa.I.y(), enumC0946ge), "REPORT");
                    linkedHashMap.put(enumC0946ge, exponentialBackoffDataHolder2);
                }
                exponentialBackoffDataHolder = (ExponentialBackoffDataHolder) exponentialBackoffDataHolder2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new NetworkTask(blockingExecutor, a5, new AllHostsExponentialBackoffPolicy(exponentialBackoffDataHolder), new Ah(c0989i5, c0949gh, nb, new FullUrlFormer(c0949gh, nb), new RequestDataHolder(), new ResponseDataHolder(new DefaultResponseValidityChecker()), aESRSARequestBodyEncrypter), u96.h(new wo()), c);
    }
}
