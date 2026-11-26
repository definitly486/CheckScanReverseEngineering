package yads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.UserManager;
import defpackage.k57;

/* JADX INFO: loaded from: classes4.dex */
public final class bk5 {
    public static SharedPreferences a(Context context, String str, bk5 bk5Var) {
        Object aVar;
        bk5Var.getClass();
        try {
            Object systemService = context.getSystemService("user");
            systemService.getClass();
            aVar = Boolean.valueOf(((UserManager) systemService).isUserUnlocked());
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = Boolean.TRUE;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return !((Boolean) aVar).booleanValue() ? context.createDeviceProtectedStorageContext().getSharedPreferences(str, 0) : context.getSharedPreferences(str, 0);
    }
}
