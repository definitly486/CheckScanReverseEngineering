package com.warefly.checkscan.products.data.network.deserializer;

import com.google.gson.Gson;
import defpackage.ik6;
import defpackage.k57;
import defpackage.kd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.po5;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductsSelectionBlockDeserializer implements nc4<ik6> {
    public final String a;
    public final Gson b;
    public final HashMap c;

    public ProductsSelectionBlockDeserializer(int i) {
        this.a = "kind";
        this.b = new Gson();
        this.c = new HashMap();
    }

    @Override // defpackage.nc4
    public final ik6 deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        Object aVar;
        pc4Var.getClass();
        try {
            kd4 kd4VarD = pc4Var.d();
            Object objB = this.b.b(kd4VarD, (Class) this.c.get(kd4VarD.h(this.a).g()));
            objB.getClass();
            aVar = (ik6) objB;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = po5.a;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        return (ik6) aVar;
    }

    public ProductsSelectionBlockDeserializer() {
        this(0);
    }
}
