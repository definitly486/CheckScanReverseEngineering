package defpackage;

import defpackage.jh5;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class xd9<View extends jh5> {
    public ArrayList a;
    public HashMap b;

    public final b78 a(wd9<View> wd9Var) {
        b78 b78Var = (b78) se5.c.get(wd9Var.getStrategyType());
        if (b78Var != null) {
            return b78Var;
        }
        try {
            b78 b78VarNewInstance = wd9Var.getStrategyType().newInstance();
            this.b.put(wd9Var.getStrategyType(), b78VarNewInstance);
            return b78VarNewInstance;
        } catch (IllegalAccessException unused) {
            throw new IllegalArgumentException("Unable to create state strategy: " + wd9Var.toString());
        } catch (InstantiationException unused2) {
            throw new IllegalArgumentException("Unable to create state strategy: " + wd9Var.toString());
        }
    }
}
