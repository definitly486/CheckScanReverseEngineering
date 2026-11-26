package yads;

import android.content.Context;
import defpackage.j59;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class mv3 {
    public static ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new kr3(context));
        fe5 fe5VarA = yg5.a().a(context);
        if (fe5VarA == null || fe5VarA.g) {
            return arrayList;
        }
        if (r73.b == null) {
            synchronized (r73.a) {
                try {
                    if (r73.b == null) {
                        r73.b = new c23(context, "com.google.android.gms.location.LocationServices");
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        c23 c23Var = r73.b;
        if (c23Var == null) {
            defpackage.ah.f("Required value was null.");
            return null;
        }
        arrayList.add(c23Var);
        arrayList.add(q93.a(context));
        return arrayList;
    }
}
