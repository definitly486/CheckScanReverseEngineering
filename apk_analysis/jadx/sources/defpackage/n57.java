package defpackage;

import java.util.EnumMap;

/* JADX INFO: loaded from: classes4.dex */
public final class n57 {
    public final String a;
    public final w57[] b;
    public EnumMap c;

    public n57(String str, w57[] w57VarArr) {
        System.currentTimeMillis();
        this.a = str;
        this.b = w57VarArr;
        this.c = null;
    }

    public final void a(u57 u57Var, Object obj) {
        EnumMap enumMap = this.c;
        if (enumMap == null) {
            enumMap = new EnumMap(u57.class);
            this.c = enumMap;
        }
        enumMap.put(u57Var, obj);
    }

    public final String toString() {
        return this.a;
    }
}
