package com.google.mlkit.vision.common.internal;

import com.google.android.gms.internal.mlkit_vision_common.zzp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import defpackage.fdb;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class VisionCommonRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        return zzp.zzi(Component.builder(a.class).add(Dependency.setOf((Class<?>) a.C0144a.class)).factory(fdb.a).build());
    }
}
