package com.google.firebase.datatransport;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import defpackage.a39;
import defpackage.b39;
import defpackage.c39;
import defpackage.d39;
import defpackage.kx0;
import defpackage.t29;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t29 lambda$getComponents$0(ComponentContainer componentContainer) {
        d39.b((Context) componentContainer.get(Context.class));
        return d39.a().c(kx0.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t29 lambda$getComponents$1(ComponentContainer componentContainer) {
        d39.b((Context) componentContainer.get(Context.class));
        return d39.a().c(kx0.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t29 lambda$getComponents$2(ComponentContainer componentContainer) {
        d39.b((Context) componentContainer.get(Context.class));
        return d39.a().c(kx0.e);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(t29.class).name(LIBRARY_NAME).add(Dependency.required((Class<?>) Context.class)).factory(new a39()).build(), Component.builder(Qualified.qualified(LegacyTransportBackend.class, t29.class)).add(Dependency.required((Class<?>) Context.class)).factory(new b39()).build(), Component.builder(Qualified.qualified(TransportBackend.class, t29.class)).add(Dependency.required((Class<?>) Context.class)).factory(new c39()).build(), LibraryVersionComponent.create(LIBRARY_NAME, "19.0.0"));
    }
}
