package io.appmetrica.analytics.screenshot.impl;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import defpackage.aq5;
import defpackage.j59;
import defpackage.ll3;
import defpackage.m96;
import defpackage.ra8;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class G extends ContentObserver {
    public static final String d = MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString();
    public final ClientContext a;
    public final ll3 b;
    public volatile C1539j c;

    public G(ClientContext clientContext, C1545p c1545p) {
        super(clientContext.getClientExecutorProvider().getDefaultExecutor().getHandler());
        this.a = clientContext;
        this.b = c1545p;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z, Uri uri) {
        C1539j c1539j;
        super.onChange(z, uri);
        if (!ra8.C(String.valueOf(uri), d, false) || (c1539j = this.c) == null) {
            return;
        }
        try {
            String[] strArr = (String[]) aq5.z(c1539j.b, new String[]{"date_added"});
            Cursor cursorQuery = this.a.getContext().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, "date_added >= ?", new String[]{String.valueOf(new SystemTimeProvider().currentTimeSeconds() - c1539j.c)}, "date_added DESC");
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        for (String str : strArr) {
                        }
                        Iterator it = c1539j.b.iterator();
                        while (it.hasNext()) {
                            if (ta8.D(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow((String) it.next())).toLowerCase(Locale.ROOT), "screenshot", false)) {
                                this.b.invoke();
                            }
                        }
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(cursorQuery, th);
                        throw th2;
                    }
                }
            }
            j59 j59Var = j59.a;
            m96.c(cursorQuery, null);
        } catch (Exception unused) {
        }
    }
}
