package io.appmetrica.analytics.impl;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes5.dex */
public final class Tc {
    public static final SparseArray c;
    public final String a;
    public final String b;

    static {
        SparseArray sparseArray = new SparseArray();
        c = sparseArray;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        sparseArray.put(5891, new Tc("jvm", "binder"));
        sparseArray.put(5890, new Tc("jvm", "file"));
        sparseArray.put(5889, new Tc("jvm", "file"));
        sparseArray.put(5897, new Tc("jni_native", "file"));
        sparseArray.put(5898, new Tc("jni_native", "file"));
    }

    public Tc(String str, String str2) {
        this.a = str;
        this.b = str2;
    }
}
