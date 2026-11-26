package io.appmetrica.analytics.impl;

import defpackage.me0;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.oe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1153oe {
    public static final N9 a(C1153oe c1153oe, W9 w9) {
        int i;
        c1153oe.getClass();
        N9 n9 = new N9();
        switch (w9) {
            case UNKNOWN:
                i = 0;
                break;
            case APPSFLYER:
                i = 1;
                break;
            case ADJUST:
                i = 2;
                break;
            case KOCHAVA:
                i = 3;
                break;
            case TENJIN:
                i = 4;
                break;
            case AIRBRIDGE:
                i = 5;
                break;
            case SINGULAR:
                i = 6;
                break;
            default:
                me0.e();
                return null;
        }
        n9.a = i;
        return n9;
    }
}
