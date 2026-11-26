package com.google.firebase.ktx;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseCommonLegacyRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return u96.h(LibraryVersionComponent.create(LoggingKt.LIBRARY_NAME, "21.0.0"));
    }
}
