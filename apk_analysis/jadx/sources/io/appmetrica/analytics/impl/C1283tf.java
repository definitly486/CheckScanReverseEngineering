package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.tf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1283tf implements J5 {
    @Override // io.appmetrica.analytics.impl.J5, defpackage.nl3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Df invoke(ContentValues contentValues) {
        String asString = contentValues.getAsString("tracking_id");
        if (StringUtils.isNullOrEmpty(asString)) {
            AbstractC1287tj.a("Tracking id is empty", new Object[0]);
            return null;
        }
        if (ParseUtils.parseLong(asString) == null) {
            AbstractC1287tj.a("Tracking id from preload info content provider is not a number", new Object[0]);
            return null;
        }
        try {
            String asString2 = contentValues.getAsString("additional_params");
            if (StringUtils.isNullOrEmpty(asString2)) {
                AbstractC1287tj.a("No additional params", new Object[0]);
                return null;
            }
            JSONObject jSONObject = new JSONObject(asString2);
            if (jSONObject.length() == 0) {
                AbstractC1287tj.a("Additional params are empty", new Object[0]);
                return null;
            }
            AbstractC1287tj.a("Successfully parsed preload info. Tracking id = %s, additionalParams = %s", asString, jSONObject);
            return new Df(asString, jSONObject, true, false, EnumC0914f8.f);
        } catch (Throwable th) {
            ImportantLogger.INSTANCE.info("AppMetrica-Attribution", "Could not parse additional parameters\n" + StringUtils.throwableToString(th), new Object[0]);
            return null;
        }
    }
}
