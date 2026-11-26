package com.google.mlkit.common.internal;

import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import defpackage.a27;
import defpackage.c3b;
import defpackage.coa;
import defpackage.ddb;
import defpackage.el1;
import defpackage.ihb;
import defpackage.jb5;
import defpackage.kb5;
import defpackage.km1;
import defpackage.mc5;
import defpackage.p8b;
import defpackage.shb;
import defpackage.vva;
import defpackage.wlb;
import defpackage.x13;
import defpackage.xt7;
import defpackage.xya;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CommonComponentRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        return zzaf.zzi(xt7.b, Component.builder(mc5.class).add(Dependency.required((Class<?>) jb5.class)).factory(new coa()).build(), Component.builder(kb5.class).factory(new vva()).build(), Component.builder(a27.class).add(Dependency.setOf((Class<?>) a27.a.class)).factory(new xya()).build(), Component.builder(x13.class).add(Dependency.requiredProvider((Class<?>) kb5.class)).factory(new c3b()).build(), Component.builder(el1.class).factory(new p8b()).build(), Component.builder(km1.class).add(Dependency.required((Class<?>) el1.class)).factory(new ddb()).build(), Component.builder(ihb.class).add(Dependency.required((Class<?>) jb5.class)).factory(new shb()).build(), Component.intoSetBuilder(a27.a.class).add(Dependency.requiredProvider((Class<?>) ihb.class)).factory(new wlb()).build());
    }
}
