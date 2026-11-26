package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class n6a {
    public static volatile n6a b;
    public final SharedPreferences a;

    public n6a(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public static n6a a(Context context) {
        n6a n6aVar;
        n6a n6aVar2 = b;
        if (n6aVar2 != null) {
            return n6aVar2;
        }
        synchronized (n6a.class) {
            try {
                n6aVar = b;
                if (n6aVar == null) {
                    b = new n6a(context.getSharedPreferences("mytarget_prefs", 0));
                    n6aVar = b;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return n6aVar;
    }

    public final void b(String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = this.a.edit();
            editorEdit.putString(str, str2);
            editorEdit.commit();
        } catch (Throwable th) {
            y14.t("PrefsCache exception - " + th);
        }
    }

    public final String c(String str) {
        try {
            String string = this.a.getString(str, null);
            return string != null ? string : "";
        } catch (Throwable th) {
            y14.t("PrefsCache exception - " + th);
            return "";
        }
    }
}
