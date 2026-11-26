package io.appmetrica.analytics.push.impl;

import defpackage.ti0;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1473h1 {
    public String a;

    public final String a() {
        String str = this.a;
        if (str != null) {
            return str;
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            String str2 = (String) cls.getMethod("getProcessName", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            this.a = str2;
            return str2;
        } catch (Exception e) {
            ti0.f(e);
            return null;
        }
    }
}
