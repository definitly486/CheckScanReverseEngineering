package com.posthog.internal;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.gson.internal.bind.TreeTypeAdapter;
import defpackage.aa4;
import defpackage.iv4;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.xr6;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class PropertyGroupDeserializer implements nc4<xr6> {
    @Override // defpackage.nc4
    public final xr6 deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        iv4 iv4Var;
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        kd4 kd4VarD = pc4Var.d();
        pc4 pc4VarH = kd4VarD.h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        String strG = pc4VarH != null ? pc4VarH.g() : null;
        if (aa4.e(strG, "AND")) {
            iv4Var = iv4.AND;
        } else {
            iv4Var = aa4.e(strG, "OR") ? iv4.OR : null;
        }
        pc4 pc4VarH2 = kd4VarD.h("values");
        return new xr6(iv4Var, pc4VarH2 != null ? (c) ((TreeTypeAdapter.a) mc4Var).a(pc4VarH2, c.class) : null);
    }
}
