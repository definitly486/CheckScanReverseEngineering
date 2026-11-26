package com.posthog.internal.surveys;

import com.google.gson.internal.bind.TreeTypeAdapter;
import defpackage.mc4;
import defpackage.nb6;
import defpackage.nc4;
import defpackage.nl3;
import defpackage.pc4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GsonSurveyEnumAdapter<T> implements wd4<T>, nc4<T> {
    public final nb6 a;
    public final nl3<T, String> b;
    public final nl3<String, T> c;

    /* JADX WARN: Multi-variable type inference failed */
    public GsonSurveyEnumAdapter(nb6 nb6Var, nl3<? super T, String> nl3Var, nl3<? super String, ? extends T> nl3Var2) {
        this.a = nb6Var;
        this.b = nl3Var;
        this.c = nl3Var2;
    }

    @Override // defpackage.nc4
    public final T deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        try {
            nl3<String, T> nl3Var = this.c;
            String strG = pc4Var.g();
            strG.getClass();
            return nl3Var.invoke(strG);
        } catch (Throwable th) {
            this.a.v.a(pc4Var.g() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // defpackage.wd4
    public final pc4 serialize(T t, Type type, vd4 vd4Var) {
        type.getClass();
        vd4Var.getClass();
        pc4 pc4VarB = ((TreeTypeAdapter.a) vd4Var).b(this.b.invoke(t));
        pc4VarB.getClass();
        return pc4VarB;
    }
}
