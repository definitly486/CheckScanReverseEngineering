package com.posthog.internal.replay;

import com.google.gson.internal.bind.TreeTypeAdapter;
import defpackage.mc4;
import defpackage.nb6;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonRREventTypeSerializer implements wd4<RREventType>, nc4<RREventType> {
    private final nb6 config;

    public GsonRREventTypeSerializer(nb6 nb6Var) {
        nb6Var.getClass();
        this.config = nb6Var;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.nc4
    public RREventType deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        try {
            return RREventType.Companion.fromValue(pc4Var.b());
        } catch (Throwable th) {
            this.config.v.a(pc4Var.b() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // defpackage.wd4
    public pc4 serialize(RREventType rREventType, Type type, vd4 vd4Var) {
        rREventType.getClass();
        type.getClass();
        vd4Var.getClass();
        pc4 pc4VarB = ((TreeTypeAdapter.a) vd4Var).b(Integer.valueOf(rREventType.getValue()));
        pc4VarB.getClass();
        return pc4VarB;
    }
}
