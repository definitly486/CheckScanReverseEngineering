package defpackage;

import android.app.Application;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.core.SurfaceRequest;
import com.my.target.a3;
import com.my.target.b2;
import com.my.target.d1;
import com.my.target.e2;
import com.my.target.i2;
import com.my.target.j2;
import com.my.target.m1;
import com.my.target.p2;
import com.my.target.q2;
import com.my.target.u2;
import com.my.target.z2;
import com.my.tracker.MyTracker;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.CookieManager;
import java.net.CookieStore;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import yads.j5;
import yads.o25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qh5 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qh5(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:130:0x02c1  */
    @Override // java.lang.Runnable
    public final void run() throws CertificateException {
        ft9 eVar;
        CookieStore gq9Var;
        b2 p2Var;
        j2 u2Var;
        CertificateFactory certificateFactory;
        KeyStore keyStore;
        TrustManagerFactory trustManagerFactory;
        X509TrustManager x509TrustManager;
        SSLContext sSLContextB;
        pw9 pw9Var;
        switch (this.b) {
            case 0:
                kt9 kt9Var = (kt9) this.c;
                Context context = (Context) this.d;
                Context context2 = kt9Var.a;
                int i = 0;
                try {
                    SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = context2.openOrCreateDatabase("com_my_target_sdk.db", 0, null);
                    if (sQLiteDatabaseOpenOrCreateDatabase == null) {
                        y14.u(null, "MyTargetDatabase error: can't open database");
                        eVar = new e();
                    } else {
                        if (sQLiteDatabaseOpenOrCreateDatabase.getVersion() != 2) {
                            sQLiteDatabaseOpenOrCreateDatabase.close();
                            context2.deleteDatabase("com_my_target_sdk.db");
                            sQLiteDatabaseOpenOrCreateDatabase = dv9.b(context2);
                        }
                        eVar = new dv9(sQLiteDatabaseOpenOrCreateDatabase);
                    }
                } catch (Throwable th) {
                    y14.r(null, "MyTargetDatabase error: exception occurred while initialization database, " + th);
                    eVar = new e();
                }
                ft9 ft9Var = eVar;
                SQLiteDatabase sQLiteDatabaseA = ft9Var.a();
                if (sQLiteDatabaseA != null) {
                    try {
                        gq9Var = new gq9(sQLiteDatabaseA);
                    } catch (Throwable th2) {
                        y14.r(null, "CookieStore error: " + th2);
                        gq9Var = null;
                    }
                } else {
                    gq9Var = null;
                }
                if (gq9Var == null) {
                    gq9Var = new jo9();
                }
                ln9 ln9Var = new ln9(new CookieManager(gq9Var, null));
                SQLiteDatabase sQLiteDatabaseA2 = ft9Var.a();
                if (sQLiteDatabaseA2 != null) {
                    try {
                        p2Var = new p2(sQLiteDatabaseA2);
                        try {
                            u2Var = new u2(sQLiteDatabaseA2);
                        } catch (Exception unused) {
                            u2Var = null;
                        }
                    } catch (Exception unused2) {
                        p2Var = null;
                        u2Var = null;
                    }
                } else {
                    p2Var = null;
                    u2Var = null;
                }
                if (p2Var == null) {
                    p2Var = new i2();
                }
                b2 b2Var = p2Var;
                if (u2Var == null) {
                    u2Var = new q2();
                }
                z2 z2Var = new z2(w4a.e, b2Var, new d1(), ln9Var, kt9Var);
                a3.a = u2Var;
                j2 j2Var = a3.a;
                if (j2Var != null) {
                    ConcurrentHashMap all = j2Var.getAll();
                    Iterator it = all.keySet().iterator();
                    while (it.hasNext()) {
                        a3.a((String) it.next());
                    }
                    a3.d.putAll(all);
                }
                z2Var.a.execute(new dy2(z2Var, 2));
                synchronized (m1.class) {
                    try {
                        if (m1.a == null) {
                            m1.a = new m1.a(z2Var);
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                e2.g = kt9Var;
                e2.h = ln9Var;
                if (ho9.a.a) {
                    mu9.a |= 2;
                }
                try {
                    try {
                        Class.forName("com.unity3d.player.UnityPlayerActivity");
                        mu9.a |= 1;
                    } catch (Throwable unused3) {
                        Runtime.getRuntime().loadLibrary("unity");
                        mu9.a |= 1;
                    }
                    break;
                } catch (Throwable unused4) {
                }
                if (!y14.l) {
                    try {
                        certificateFactory = CertificateFactory.getInstance("X.509");
                    } catch (CertificateException e) {
                        y14.w(null, "CertManager: exception: " + y14.p(e));
                        certificateFactory = null;
                    }
                    if (certificateFactory == null) {
                        y14.w(null, "CertManager: Error make certData – certificateFactory is null");
                    } else {
                        try {
                            KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
                            keyStore2.load(null, null);
                            keyStore = keyStore2;
                        } catch (Throwable th4) {
                            y14.w(null, "CertManager: exception: " + y14.p(th4));
                            keyStore = null;
                        }
                        if (keyStore == null) {
                            y14.w(null, "CertManager: Error make certData – keyStore is null");
                        } else {
                            oy9.a(keyStore, certificateFactory, "russian_trusted_root_ca", y14.e);
                            oy9.a(keyStore, certificateFactory, "russian_trusted_root_ca_gost_2025", y14.f);
                            oy9.a(keyStore, certificateFactory, "russian_trusted_sub_ca", y14.g);
                            oy9.a(keyStore, certificateFactory, "russian_trusted_sub_ca_2024", y14.h);
                            oy9.a(keyStore, certificateFactory, "russian_trusted_sub_ca_gost_2025", y14.i);
                            ArrayList arrayList = new ArrayList();
                            try {
                                KeyStore keyStore3 = KeyStore.getInstance("AndroidCAStore");
                                if (keyStore3 != null) {
                                    keyStore3.load(null, null);
                                    Enumeration<String> enumerationAliases = keyStore3.aliases();
                                    while (enumerationAliases.hasMoreElements()) {
                                        try {
                                            X509Certificate x509Certificate = (X509Certificate) keyStore3.getCertificate(enumerationAliases.nextElement());
                                            if (x509Certificate != null) {
                                                arrayList.add(x509Certificate);
                                            }
                                        } catch (Throwable th5) {
                                            y14.w(null, "CertManager: exception: " + y14.p(th5));
                                        }
                                    }
                                }
                            } catch (Throwable th6) {
                                y14.w(null, "CertManager: exception: " + y14.p(th6));
                            }
                            int size = arrayList.size();
                            int i2 = 0;
                            while (i2 < size) {
                                int i3 = i2 + 1;
                                X509Certificate x509Certificate2 = (X509Certificate) arrayList.get(i2);
                                try {
                                    keyStore.setCertificateEntry(x509Certificate2.getIssuerDN().getName(), x509Certificate2);
                                } catch (KeyStoreException e2) {
                                    y14.w(null, "CertManager: exception: " + y14.p(e2));
                                }
                                i2 = i3;
                            }
                            try {
                                TrustManagerFactory trustManagerFactory2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                                trustManagerFactory2.init(keyStore);
                                trustManagerFactory = trustManagerFactory2;
                            } catch (Throwable th7) {
                                y14.w(null, "CertManager: exception: " + y14.p(th7));
                                trustManagerFactory = null;
                            }
                            if (trustManagerFactory == null) {
                                y14.w(null, "CertManager: Error make certData – trustManagerFactory is null");
                            } else {
                                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                                int length = trustManagers.length;
                                while (true) {
                                    if (i < length) {
                                        TrustManager trustManager = trustManagers[i];
                                        if (trustManager instanceof X509TrustManager) {
                                            x509TrustManager = (X509TrustManager) trustManager;
                                        } else {
                                            i++;
                                        }
                                    } else {
                                        x509TrustManager = null;
                                    }
                                }
                                if (x509TrustManager == null) {
                                    y14.w(null, "CertManager: Error make certData – x509TrustManager is null");
                                } else {
                                    try {
                                        sSLContextB = oy9.b();
                                        sSLContextB.init(null, trustManagerFactory.getTrustManagers(), new SecureRandom());
                                    } catch (Throwable th8) {
                                        y14.w(null, "CertManager: exception: " + y14.p(th8));
                                        sSLContextB = null;
                                    }
                                    if (sSLContextB == null) {
                                        y14.w(null, "CertManager: Error make certData – sslContext is null");
                                    } else {
                                        pw9Var = new pw9(sSLContextB, trustManagerFactory);
                                    }
                                    y14.k = pw9Var;
                                    if (pw9Var == null) {
                                        y14.u(null, "DigitalGovCertsUtils: can't init digital gov certs – certData is null");
                                    }
                                    y14.l = true;
                                }
                            }
                        }
                    }
                    pw9Var = null;
                    y14.k = pw9Var;
                    if (pw9Var == null) {
                        y14.u(null, "DigitalGovCertsUtils: can't init digital gov certs – certData is null");
                    }
                    y14.l = true;
                }
                zfa.a(kt9Var);
                at9 at9Var = at9.l;
                AtomicBoolean atomicBoolean = rh5.a;
                at9Var.getClass();
                if (w4a.b()) {
                    y14.r(null, "FingerprintDataProvider: You must not call collectData method from main thread");
                } else {
                    at9Var.a.U(context);
                    at9Var.b.V(context);
                    at9Var.d.U(context);
                    at9Var.f.U(context);
                }
                if (!y14.n) {
                    try {
                        String str = (String) context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("com.my.target.myTrackerSdkKey");
                        if (str != null) {
                            MyTracker.initTracker(str, (Application) context.getApplicationContext());
                        } else {
                            y14.r(null, "MyTrackerUtils: myTracker SDK key is not provided");
                        }
                    } catch (Throwable th9) {
                        fg.e(null, new StringBuilder("MyTrackerUtils: Unable to initialize myTracker - "), th9);
                    }
                    y14.n = true;
                }
                ArrayList arrayList2 = w4a.f;
                synchronized (arrayList2) {
                    try {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            w4a.c.execute((Runnable) it2.next());
                        }
                        w4a.f.clear();
                        w4a.j.set(true);
                    } catch (Throwable th10) {
                        throw th10;
                    }
                    break;
                }
                du9 du9Var = at9.l.b.p;
                if (du9Var == null) {
                    y14.k(StringUtils.UNDEFINED, StringUtils.UNDEFINED, StringUtils.UNDEFINED, StringUtils.UNDEFINED);
                    return;
                } else {
                    y14.k(du9Var.a, du9Var.b, du9Var.c, du9Var.d);
                    return;
                }
            case 1:
                ((SurfaceRequest.TransformationInfoListener) this.c).onTransformationInfoUpdate((SurfaceRequest.TransformationInfo) this.d);
                return;
            default:
                o25.a((o25) this.c, (j5) this.d);
                return;
        }
    }
}
