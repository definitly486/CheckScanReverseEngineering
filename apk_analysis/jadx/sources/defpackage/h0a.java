package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h0a extends y14 {
    public volatile HashMap o;

    public final synchronized Map U(Context context) {
        final int i;
        if (w4a.b()) {
            y14.r(null, "AppSetIdDataProvider: You must not call collectData method from main thread");
            return new HashMap();
        }
        if (this.o != null) {
            return new HashMap(this.o);
        }
        this.o = new HashMap();
        final n6a n6aVarA = n6a.a(context);
        final String strC = n6aVarA.c("asid");
        try {
            i = n6aVarA.a.getInt("asis", -1);
        } catch (Throwable th) {
            y14.t("PrefsCache exception - " + th);
            i = 0;
        }
        if (!TextUtils.isEmpty(strC)) {
            this.o.put("asid", strC);
        }
        if (i != -1) {
            this.o.put("asis", String.valueOf(i));
        }
        try {
            AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(w4a.b, new OnSuccessListener() { // from class: g0a
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    h0a h0aVar = this.b;
                    int i2 = i;
                    n6a n6aVar = n6aVarA;
                    String str = strC;
                    AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                    h0aVar.getClass();
                    int scope = appSetIdInfo.getScope();
                    if (scope != i2) {
                        try {
                            SharedPreferences.Editor editorEdit = n6aVar.a.edit();
                            editorEdit.putInt("asis", scope);
                            editorEdit.commit();
                        } catch (Throwable th2) {
                            y14.t("PrefsCache exception - " + th2);
                        }
                        synchronized (h0aVar) {
                            h0aVar.o.put("asis", String.valueOf(scope));
                        }
                        y14.r(null, "AppSetIdDataProvider: new scope value has been received: " + scope);
                    }
                    String id = appSetIdInfo.getId();
                    if (id.equals(str)) {
                        return;
                    }
                    n6aVar.b("asid", id);
                    synchronized (h0aVar) {
                        h0aVar.o.put("asid", id);
                    }
                    y14.r(null, "AppSetIdDataProvider: new id value has been received: ".concat(id));
                }
            });
        } catch (Throwable unused) {
            y14.r(null, "AppSetIdDataProvider: error occurred while trying to access app set id info");
        }
        return new HashMap(this.o);
    }
}
