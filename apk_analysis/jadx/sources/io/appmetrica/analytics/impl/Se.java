package io.appmetrica.analytics.impl;

import defpackage.rd0;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Se {
    public static Te a(String... strArr) {
        return new rd0(strArr);
    }

    public static final boolean b(String[] strArr) {
        for (String str : strArr) {
            if (ReflectionUtils.detectClassExists(str)) {
                return true;
            }
        }
        return false;
    }
}
