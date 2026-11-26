package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class TapjoyAppSettings {
    public static final TapjoyAppSettings INSTANCE = new TapjoyAppSettings();
    public static SharedPreferences a;

    public final String getConnectResult(String str, long j) {
        str.getClass();
        SharedPreferences sharedPreferences = a;
        String string = sharedPreferences != null ? sharedPreferences.getString(TapjoyConstants.PREF_LAST_CONNECT_RESULT, null) : null;
        if (string != null && string.length() != 0 && str.length() > 0) {
            SharedPreferences sharedPreferences2 = a;
            if (str.equals(sharedPreferences2 != null ? sharedPreferences2.getString(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH, null) : null)) {
                SharedPreferences sharedPreferences3 = a;
                long j2 = sharedPreferences3 != null ? sharedPreferences3.getLong(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES, -1L) : -1L;
                if (j2 < 0 || j2 >= j) {
                    return string;
                }
            }
        }
        return null;
    }

    public final String getLoggingLevel() {
        SharedPreferences sharedPreferences = a;
        if (sharedPreferences != null) {
            return sharedPreferences.getString(TapjoyConstants.PREF_LOG_LEVEL, null);
        }
        return null;
    }

    public final void initSettings(Context context) {
        context.getClass();
        a = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
    }

    public final void removeConnectResult() {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorRemove;
        SharedPreferences.Editor editorRemove2;
        SharedPreferences.Editor editorRemove3;
        SharedPreferences sharedPreferences = a;
        if ((sharedPreferences != null ? sharedPreferences.getString(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH, null) : null) != null) {
            SharedPreferences sharedPreferences2 = a;
            if (sharedPreferences2 != null && (editorEdit = sharedPreferences2.edit()) != null && (editorRemove = editorEdit.remove(TapjoyConstants.PREF_LAST_CONNECT_RESULT)) != null && (editorRemove2 = editorRemove.remove(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH)) != null && (editorRemove3 = editorRemove2.remove(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES)) != null) {
                editorRemove3.apply();
            }
            TapjoyLog.d("Removed connect result");
        }
    }

    public final void saveConnectResultAndParams(String str, String str2, long j) {
        str.getClass();
        if (str.length() == 0 || str2 == null || str2.length() == 0) {
            return;
        }
        SharedPreferences sharedPreferences = a;
        SharedPreferences.Editor editorEdit = sharedPreferences != null ? sharedPreferences.edit() : null;
        if (editorEdit != null) {
            editorEdit.putString(TapjoyConstants.PREF_LAST_CONNECT_RESULT, str);
        }
        if (editorEdit != null) {
            editorEdit.putString(TapjoyConstants.PREF_LAST_CONNECT_PARAMS_HASH, str2);
        }
        if (j >= 0) {
            if (editorEdit != null) {
                editorEdit.putLong(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES, j);
            }
        } else if (editorEdit != null) {
            editorEdit.remove(TapjoyConstants.PREF_LAST_CONNECT_RESULT_EXPIRES);
        }
        TapjoyLog.d("Stored connect result: ".concat(str));
        if (editorEdit != null) {
            editorEdit.apply();
        }
    }

    public final void saveLoggingLevel(String str) {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorRemove;
        SharedPreferences.Editor editorEdit2;
        SharedPreferences.Editor editorPutString;
        if (str == null || str.length() == 0) {
            SharedPreferences sharedPreferences = a;
            if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null || (editorRemove = editorEdit.remove(TapjoyConstants.PREF_LOG_LEVEL)) == null) {
                return;
            }
            editorRemove.apply();
            return;
        }
        SharedPreferences sharedPreferences2 = a;
        if (sharedPreferences2 != null && (editorEdit2 = sharedPreferences2.edit()) != null && (editorPutString = editorEdit2.putString(TapjoyConstants.PREF_LOG_LEVEL, str)) != null) {
            editorPutString.apply();
        }
        if (str.equals("internal")) {
            TapjoyLog.setLoggingLevel(TJLogLevel.DEBUG, true);
        }
        TapjoyLog.i("Server-side logging enabled");
    }
}
