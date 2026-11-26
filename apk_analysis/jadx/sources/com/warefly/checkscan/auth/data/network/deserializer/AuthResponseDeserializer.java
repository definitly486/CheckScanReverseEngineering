package com.warefly.checkscan.auth.data.network.deserializer;

import com.google.gson.JsonParseException;
import com.google.gson.internal.bind.TreeTypeAdapter;
import defpackage.ex;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.xq4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class AuthResponseDeserializer implements nc4<ex> {
    @Override // defpackage.nc4
    public final ex deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        kd4 kd4VarD = pc4Var.d();
        xq4<String, pc4> xq4Var = kd4VarD.b;
        if (xq4Var.containsKey("confirmType")) {
            Object objA = ((TreeTypeAdapter.a) mc4Var).a(kd4VarD, ex.a.class);
            objA.getClass();
            return (ex) objA;
        }
        if (!xq4Var.containsKey("callPhone")) {
            throw new JsonParseException("Unknown response format received");
        }
        Object objA2 = ((TreeTypeAdapter.a) mc4Var).a(kd4VarD, ex.b.class);
        objA2.getClass();
        return (ex) objA2;
    }
}
