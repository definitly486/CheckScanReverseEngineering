package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.ra8;
import defpackage.ta8;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class TJKeyValueStorage {
    public final SharedPreferences a;

    public TJKeyValueStorage(Context context) {
        context.getClass();
        this.a = context.getSharedPreferences("tjJSSharedPreference", 0);
    }

    public final boolean contains(String str) {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.contains(str);
        }
        return false;
    }

    public final Map<String, ?> getAll() {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.getAll();
        }
        return null;
    }

    public final boolean getBoolean(String str, boolean z) {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str, z);
        }
        return false;
    }

    public final double getDouble(String str, double d) {
        SharedPreferences sharedPreferences = this.a;
        return Double.longBitsToDouble(sharedPreferences != null ? sharedPreferences.getLong(str, (long) d) : -1L);
    }

    public final float getFloat(String str, float f) {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.getFloat(str, f);
        }
        return -1.0f;
    }

    public final int getInt(String str, int i) {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.getInt(str, i);
        }
        return -1;
    }

    public final long getLong(String str, long j) {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.getLong(str, j);
        }
        return -1L;
    }

    public final int getSize() {
        Map<String, ?> all;
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null || (all = sharedPreferences.getAll()) == null) {
            return 0;
        }
        return all.size();
    }

    public final String getString(String str, String str2) {
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences != null) {
            return sharedPreferences.getString(str, str2);
        }
        return null;
    }

    public final Object getValue(String str) {
        Map<String, ?> all;
        SharedPreferences sharedPreferences = this.a;
        Object obj = (sharedPreferences == null || (all = sharedPreferences.getAll()) == null) ? null : all.get(str);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof String)) {
            return obj instanceof Long ? Double.valueOf(Double.longBitsToDouble(((Number) obj).longValue())) : obj;
        }
        CharSequence charSequence = (CharSequence) obj;
        if (ta8.D(charSequence, "tjJSON@", false)) {
            return new JSONObject(ra8.y((String) obj, "tjJSON@", ""));
        }
        return ta8.D(charSequence, "tjJSONArray@", false) ? new JSONArray(ra8.y((String) obj, "tjJSONArray@", "")) : obj;
    }

    public final Object getValueType(String str) {
        Map<String, ?> all;
        Object obj;
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null || (all = sharedPreferences.getAll()) == null || (obj = all.get(str)) == null) {
            return null;
        }
        return obj.getClass();
    }

    public final void remove(String str) {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorRemove;
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null || (editorRemove = editorEdit.remove(str)) == null) {
            return;
        }
        editorRemove.apply();
    }

    public final void reset() {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorClear;
        SharedPreferences sharedPreferences = this.a;
        if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null || (editorClear = editorEdit.clear()) == null) {
            return;
        }
        editorClear.apply();
    }

    public final void setValue(String str, Object obj) {
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorRemove;
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit2;
        SharedPreferences.Editor editorPutBoolean;
        SharedPreferences.Editor editorEdit3;
        SharedPreferences.Editor editorPutFloat;
        SharedPreferences.Editor editorEdit4;
        SharedPreferences.Editor editorPutLong;
        SharedPreferences.Editor editorEdit5;
        SharedPreferences.Editor editorPutLong2;
        SharedPreferences.Editor editorEdit6;
        SharedPreferences.Editor editorEdit7;
        SharedPreferences.Editor editorEdit8;
        SharedPreferences.Editor editorPutInt;
        SharedPreferences.Editor editorEdit9;
        SharedPreferences.Editor editorPutString;
        if (obj == null || obj == JSONObject.NULL) {
            SharedPreferences sharedPreferences2 = this.a;
            if (sharedPreferences2 == null || (editorEdit = sharedPreferences2.edit()) == null || (editorRemove = editorEdit.remove(str)) == null) {
                return;
            }
            editorRemove.apply();
            return;
        }
        if (obj instanceof String) {
            SharedPreferences sharedPreferences3 = this.a;
            if (sharedPreferences3 == null || (editorEdit9 = sharedPreferences3.edit()) == null || (editorPutString = editorEdit9.putString(str, (String) obj)) == null) {
                return;
            }
            editorPutString.apply();
            return;
        }
        if (obj instanceof Integer) {
            SharedPreferences sharedPreferences4 = this.a;
            if (sharedPreferences4 == null || (editorEdit8 = sharedPreferences4.edit()) == null || (editorPutInt = editorEdit8.putInt(str, ((Number) obj).intValue())) == null) {
                return;
            }
            editorPutInt.apply();
            return;
        }
        if (obj instanceof JSONObject) {
            SharedPreferences sharedPreferences5 = this.a;
            if (sharedPreferences5 == null || (editorEdit7 = sharedPreferences5.edit()) == null) {
                return;
            }
            SharedPreferences.Editor editorPutString2 = editorEdit7.putString(str, "tjJSON@" + obj);
            if (editorPutString2 != null) {
                editorPutString2.apply();
                return;
            }
            return;
        }
        if (obj instanceof JSONArray) {
            SharedPreferences sharedPreferences6 = this.a;
            if (sharedPreferences6 == null || (editorEdit6 = sharedPreferences6.edit()) == null) {
                return;
            }
            SharedPreferences.Editor editorPutString3 = editorEdit6.putString(str, "tjJSONArray@" + obj);
            if (editorPutString3 != null) {
                editorPutString3.apply();
                return;
            }
            return;
        }
        if (obj instanceof Long) {
            SharedPreferences sharedPreferences7 = this.a;
            if (sharedPreferences7 == null || (editorEdit5 = sharedPreferences7.edit()) == null || (editorPutLong2 = editorEdit5.putLong(str, ((Number) obj).longValue())) == null) {
                return;
            }
            editorPutLong2.apply();
            return;
        }
        if (obj instanceof Double) {
            SharedPreferences sharedPreferences8 = this.a;
            if (sharedPreferences8 == null || (editorEdit4 = sharedPreferences8.edit()) == null || (editorPutLong = editorEdit4.putLong(str, Double.doubleToRawLongBits(((Number) obj).doubleValue()))) == null) {
                return;
            }
            editorPutLong.apply();
            return;
        }
        if (obj instanceof Float) {
            SharedPreferences sharedPreferences9 = this.a;
            if (sharedPreferences9 == null || (editorEdit3 = sharedPreferences9.edit()) == null || (editorPutFloat = editorEdit3.putFloat(str, ((Number) obj).floatValue())) == null) {
                return;
            }
            editorPutFloat.apply();
            return;
        }
        if (!(obj instanceof Boolean) || (sharedPreferences = this.a) == null || (editorEdit2 = sharedPreferences.edit()) == null || (editorPutBoolean = editorEdit2.putBoolean(str, ((Boolean) obj).booleanValue())) == null) {
            return;
        }
        editorPutBoolean.apply();
    }

    public TJKeyValueStorage(Context context, String str) {
        context.getClass();
        this.a = context.getSharedPreferences(str, 0);
    }
}
