package com.warefly.checkscan.data.network.deserializers;

import com.google.gson.Gson;
import defpackage.ja7;
import defpackage.k57;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.y97;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class SSEDataDeserializer implements nc4<y97> {
    public final Gson a = new Gson();
    public final HashMap b = new HashMap();

    @Override // defpackage.nc4
    public final y97 deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        Object aVar;
        pc4Var.getClass();
        try {
            kd4 kd4VarD = pc4Var.d();
            Object objB = this.a.b(kd4VarD, (Class) this.b.get(kd4VarD.h("kind").g()));
            objB.getClass();
            aVar = (y97) objB;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = ja7.a;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return (y97) aVar;
    }
}
