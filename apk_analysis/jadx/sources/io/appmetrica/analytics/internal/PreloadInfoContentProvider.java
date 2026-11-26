package io.appmetrica.analytics.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import defpackage.ni0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.impl.AbstractC1287tj;
import io.appmetrica.analytics.impl.C1278ta;
import io.appmetrica.analytics.impl.C1283tf;
import io.appmetrica.analytics.impl.C1309uf;
import io.appmetrica.analytics.impl.D3;
import io.appmetrica.analytics.impl.E3;
import io.appmetrica.analytics.impl.L5;
import io.appmetrica.analytics.impl.M5;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes5.dex */
public class PreloadInfoContentProvider extends ContentProvider {
    private boolean a = false;
    private final UriMatcher b = new UriMatcher(-1);

    private void a(M5 m5, ContentValues contentValues) {
        Context context = getContext();
        Context applicationContext = context == null ? null : context.getApplicationContext();
        if (applicationContext != null) {
            try {
                Object objInvoke = m5.a.invoke(contentValues);
                if (objInvoke != null) {
                    m5.c.b(applicationContext);
                    if (((Boolean) m5.b.invoke(objInvoke)).booleanValue()) {
                        AbstractC1287tj.a("Successfully saved " + m5.d, new Object[0]);
                    } else {
                        AbstractC1287tj.a("Did not save " + m5.d + " because data is already present", new Object[0]);
                    }
                }
            } catch (Throwable th) {
                ImportantLogger.INSTANCE.info("AppMetrica-Attribution", "Unexpected error occurred\n" + StringUtils.throwableToString(th), new Object[0]);
            }
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        AbstractC1287tj.a("Deleting is not supported", new Object[0]);
        return -1;
    }

    public synchronized void disable() {
        this.a = true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        synchronized (this) {
            try {
                if (this.a) {
                    return null;
                }
                if (contentValues != null) {
                    int iMatch = this.b.match(uri);
                    if (iMatch == 1) {
                        a(new M5(new C1283tf(), new C1309uf(), C1278ta.d, "preload info"), contentValues);
                    } else if (iMatch != 2) {
                        AbstractC1287tj.a("Bad content provider uri.", new Object[0]);
                    } else {
                        a(new M5(new D3(), new E3(), C1278ta.d, "clids"), contentValues);
                    }
                }
                CountDownLatch countDownLatch = L5.a;
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        Context applicationContext = context == null ? null : context.getApplicationContext();
        String strC = ni0.c(applicationContext != null ? applicationContext.getPackageName() : "", ".appmetrica.preloadinfo.retail");
        this.b.addURI(strC, "preloadinfo", 1);
        this.b.addURI(strC, "clids", 2);
        L5.a = new CountDownLatch(1);
        L5.b = this;
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        AbstractC1287tj.a("Query is not supported", new Object[0]);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        AbstractC1287tj.a("Updating is not supported", new Object[0]);
        return -1;
    }
}
