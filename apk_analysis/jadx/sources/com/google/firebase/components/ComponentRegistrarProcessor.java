package com.google.firebase.components;

import defpackage.f2;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface ComponentRegistrarProcessor {
    public static final ComponentRegistrarProcessor NOOP = new f2(3);

    List<Component<?>> processRegistrar(ComponentRegistrar componentRegistrar);
}
