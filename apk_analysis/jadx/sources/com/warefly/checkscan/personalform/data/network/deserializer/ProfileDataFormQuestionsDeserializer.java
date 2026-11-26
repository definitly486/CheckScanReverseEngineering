package com.warefly.checkscan.personalform.data.network.deserializer;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.gson.Gson;
import defpackage.k57;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.yk6;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfileDataFormQuestionsDeserializer implements nc4<yk6.a.g> {
    public final Gson a = new Gson();
    public final HashMap b = new HashMap();

    @Override // defpackage.nc4
    public final yk6.a.g deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        Object aVar;
        pc4Var.getClass();
        try {
            kd4 kd4VarD = pc4Var.d();
            Object objB = this.a.b(kd4VarD, (Class) this.b.get(kd4VarD.h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).g()));
            objB.getClass();
            aVar = (yk6.a.g) objB;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = yk6.a.e.a;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return (yk6.a.g) aVar;
    }
}
