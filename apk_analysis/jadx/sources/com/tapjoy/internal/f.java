package com.tapjoy.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.SystemClock;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {
    public static h a;

    /* JADX WARN: Code duplicated, block: B:23:0x004d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0063  */
    public static void a(Activity activity) {
        t2 t2Var;
        int taskId;
        Intent intent;
        Set<String> categories;
        ComponentName component;
        h hVar = a;
        if (hVar != null) {
            if (activity != null && (taskId = activity.getTaskId()) != -1 && (intent = activity.getIntent()) != null && (categories = intent.getCategories()) != null && categories.contains("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(intent.getAction()) && (component = intent.getComponent()) != null) {
                Integer num = (Integer) hVar.b.put(component.getClassName(), Integer.valueOf(taskId));
                if (num == null || num.intValue() != taskId) {
                    hVar.e.c();
                } else if (!hVar.d) {
                    t2Var = hVar.c;
                    t2Var.getClass();
                    if (SystemClock.elapsedRealtime() - t2Var.b > t2Var.a) {
                        hVar.e.c();
                    }
                }
            } else if (!hVar.d) {
                t2Var = hVar.c;
                t2Var.getClass();
                try {
                    if (SystemClock.elapsedRealtime() - t2Var.b > t2Var.a) {
                        hVar.e.c();
                    }
                } catch (NullPointerException unused) {
                }
            }
            hVar.d = true;
        }
    }
}
