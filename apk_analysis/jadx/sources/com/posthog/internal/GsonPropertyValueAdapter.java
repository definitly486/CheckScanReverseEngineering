package com.posthog.internal;

import com.google.gson.internal.bind.TreeTypeAdapter;
import defpackage.mc4;
import defpackage.me0;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonPropertyValueAdapter implements nc4<c>, wd4<c> {
    public final PropertyValueDeserializer a = new PropertyValueDeserializer();

    @Override // defpackage.nc4
    public final c deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        return this.a.deserialize(pc4Var, type, mc4Var);
    }

    @Override // defpackage.wd4
    public final pc4 serialize(c cVar, Type type, vd4 vd4Var) {
        c cVar2 = cVar;
        type.getClass();
        vd4Var.getClass();
        if (cVar2 instanceof c.a) {
            return ((TreeTypeAdapter.a) vd4Var).b(((c.a) cVar2).a);
        }
        if (cVar2 instanceof c.b) {
            return ((TreeTypeAdapter.a) vd4Var).b(((c.b) cVar2).a);
        }
        if (cVar2 == null) {
            return null;
        }
        me0.e();
        return null;
    }
}
