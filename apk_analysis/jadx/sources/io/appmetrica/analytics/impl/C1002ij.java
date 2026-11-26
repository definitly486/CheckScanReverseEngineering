package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ij, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1002ij implements InterfaceC1028jj {
    public final Context a;
    public final String b = "content://" + a() + "/clids";
    public final String c = "clid_key";
    public final String d = "clid_value";

    public C1002ij(Context context) {
        this.a = context;
    }

    public final String a() {
        return "com.yandex.preinstallsatellite.appmetrica.provider";
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1028jj, defpackage.ll3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final F3 invoke() {
        Throwable th;
        Cursor cursorQuery;
        if (!PackageManagerUtils.hasContentProvider(this.a, "com.yandex.preinstallsatellite.appmetrica.provider")) {
            AbstractC1287tj.a("Satellite content provider with clids was not found.", new Object[0]);
            return null;
        }
        try {
            cursorQuery = this.a.getContentResolver().query(Uri.parse(this.b), null, null, null, null);
            try {
                if (cursorQuery == null) {
                    AbstractC1287tj.a("No Satellite content provider found", new Object[0]);
                    xo.a(cursorQuery);
                    return null;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(this.c));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(this.d));
                        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                            AbstractC1287tj.a("Invalid clid {%s : %s}", string, string2);
                        } else {
                            linkedHashMap.put(string, string2);
                        }
                    } catch (Throwable unused) {
                    }
                }
                AbstractC1287tj.a("Clids from satellite: %s", linkedHashMap);
                F3 f3 = new F3(linkedHashMap, EnumC0914f8.e);
                xo.a(cursorQuery);
                return f3;
            } catch (Throwable th2) {
                th = th2;
                try {
                    ImportantLogger.INSTANCE.info("AppMetrica-Attribution", "Error while getting satellite clids\n" + StringUtils.throwableToString(th), new Object[0]);
                } finally {
                    xo.a(cursorQuery);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }
}
