package com.warefly.checkscan.data.network.deserializers;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.gson.Gson;
import defpackage.k57;
import defpackage.k70;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferShowcaseDeserializer implements nc4<k70.b> {
    public final Gson a = new Gson();
    public final HashMap b = new HashMap();

    @Override // defpackage.nc4
    public final k70.b deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        Object aVar;
        pc4Var.getClass();
        try {
            kd4 kd4VarD = pc4Var.d();
            Object objB = this.a.b(kd4VarD, (Class) this.b.get(kd4VarD.h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).g()));
            objB.getClass();
            aVar = (k70.b) objB;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = k70.i.a;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return (k70.b) aVar;
    }
}
