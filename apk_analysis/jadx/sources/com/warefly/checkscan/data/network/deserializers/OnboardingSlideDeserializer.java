package com.warefly.checkscan.data.network.deserializers;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.gson.Gson;
import defpackage.fx5;
import defpackage.k57;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.qo5;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingSlideDeserializer implements nc4<fx5> {
    public final Gson a = new Gson();
    public final HashMap b = new HashMap();

    @Override // defpackage.nc4
    public final fx5 deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        Object aVar;
        pc4Var.getClass();
        try {
            kd4 kd4VarD = pc4Var.d();
            Object objB = this.a.b(kd4VarD, (Class) this.b.get(kd4VarD.h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).g()));
            objB.getClass();
            aVar = (fx5) objB;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = qo5.a;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return (fx5) aVar;
    }
}
