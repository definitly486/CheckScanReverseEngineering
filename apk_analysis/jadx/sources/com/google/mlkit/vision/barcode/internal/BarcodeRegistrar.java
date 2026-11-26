package com.google.mlkit.vision.barcode.internal;

import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import defpackage.jb5;
import defpackage.jhb;
import defpackage.u2b;
import defpackage.upb;
import defpackage.x13;
import defpackage.yya;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BarcodeRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        return zzcs.zzh(Component.builder(upb.class).add(Dependency.required((Class<?>) jb5.class)).factory(new yya()).build(), Component.builder(jhb.class).add(Dependency.required((Class<?>) upb.class)).add(Dependency.required((Class<?>) x13.class)).add(Dependency.required((Class<?>) jb5.class)).factory(new u2b()).build());
    }
}
