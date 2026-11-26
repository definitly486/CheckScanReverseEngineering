package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class f72 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    public f72() {
        fn9 fn9Var = fn9.b;
    }

    public final String a(String str) {
        String str2;
        synchronized (this) {
            str2 = (String) this.a.get(str);
        }
        return str2;
    }

    public final void b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this) {
            try {
                if ("exb".equals(str)) {
                    fn9.b.getClass();
                    if (!TextUtils.isEmpty(str2)) {
                        SystemClock.elapsedRealtime();
                    }
                }
                if (str2 == null) {
                    c(str);
                } else {
                    this.a.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(String str) {
        synchronized (this) {
            try {
                if (!this.a.containsKey(str)) {
                    return false;
                }
                this.a.remove(str);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
