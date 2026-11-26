package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class TJApiDecoded {
    public static final TJApiDecoded INSTANCE = new TJApiDecoded();
    public static SharedPreferences a;
    public static String b;

    public final void decode(String str) {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorPutString;
        SharedPreferences.Editor editorPutString2;
        str.getClass();
        b = str;
        Context context = TapjoyConnectCore.getInstance().getContext();
        a = context != null ? context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0) : null;
        try {
            com.tapjoy.internal.e eVar = new com.tapjoy.internal.e(str);
            if (eVar.c != 1) {
                throw new IllegalArgumentException("The given API key was not for Android.");
            }
            String str2 = eVar.d;
            str2.getClass();
            if (str2.length() <= 0) {
                throw new IllegalArgumentException("The given API key is corrupted.");
            }
            SharedPreferences sharedPreferences = a;
            if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null || (editorPutString = editorEdit.putString("pref_app_id", eVar.d)) == null || (editorPutString2 = editorPutString.putString("pref_secret", eVar.e)) == null) {
                return;
            }
            editorPutString2.apply();
        } catch (IllegalArgumentException e) {
            throw new TapjoyIntegrationException(e.getMessage());
        }
    }

    public final String getAppID() {
        String string;
        SharedPreferences sharedPreferences = a;
        return (sharedPreferences == null || (string = sharedPreferences.getString("pref_app_id", "")) == null) ? "" : string;
    }

    public final String getSdkKey() {
        return b;
    }

    public final String getSecretKey() {
        String string;
        SharedPreferences sharedPreferences = a;
        return (sharedPreferences == null || (string = sharedPreferences.getString("pref_secret", "")) == null) ? "" : string;
    }
}
