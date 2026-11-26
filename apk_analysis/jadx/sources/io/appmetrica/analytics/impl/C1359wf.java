package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1359wf implements InterfaceC1028jj {
    public final Context a;
    public final String b = "content://" + a() + "/preload_info";
    public final String c = "tracking_id";
    public final String d = "additional_parameters";

    public C1359wf(Context context) {
        this.a = context;
    }

    public final String a() {
        return "com.yandex.preinstallsatellite.appmetrica.provider";
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1028jj, defpackage.ll3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Df invoke() {
        Cursor cursorQuery;
        JSONObject jSONObject;
        if (!PackageManagerUtils.hasContentProvider(this.a, "com.yandex.preinstallsatellite.appmetrica.provider")) {
            AbstractC1287tj.a("Satellite content provider with preload info was not found.", new Object[0]);
            return null;
        }
        try {
            cursorQuery = this.a.getContentResolver().query(Uri.parse(this.b), null, null, null, null);
            try {
                if (cursorQuery == null) {
                    AbstractC1287tj.a("No Satellite content provider found", new Object[0]);
                } else {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(this.c));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(this.d));
                        if (string2 == null) {
                            JSONObject jSONObject2 = jSONObject;
                            if (!TextUtils.isEmpty(string)) {
                                AbstractC1287tj.a("Tracking id from Satellite is not a number.", new Object[0]);
                            }
                            AbstractC1287tj.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject2);
                            Df df = new Df(string, jSONObject2, !TextUtils.isEmpty(string), false, EnumC0914f8.e);
                            xo.a(cursorQuery);
                            return df;
                        }
                        try {
                            jSONObject = string2.length() == 0 ? new JSONObject() : new JSONObject(string2);
                        } catch (Throwable unused) {
                            jSONObject = new JSONObject();
                        }
                        JSONObject jSONObject3 = jSONObject;
                        if (!TextUtils.isEmpty(string) && ParseUtils.parseLong(string) == null) {
                            AbstractC1287tj.a("Tracking id from Satellite is not a number.", new Object[0]);
                        }
                        AbstractC1287tj.a("Preload info from Satellite: {tracking id = %s, additional parameters = %s}", string, jSONObject3);
                        Df df2 = new Df(string, jSONObject3, !TextUtils.isEmpty(string), false, EnumC0914f8.e);
                        xo.a(cursorQuery);
                        return df2;
                    }
                    AbstractC1287tj.a("No Preload Info data in Satellite content provider", new Object[0]);
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            cursorQuery = null;
        }
        xo.a(cursorQuery);
        return null;
    }
}
