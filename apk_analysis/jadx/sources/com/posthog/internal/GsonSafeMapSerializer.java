package com.posthog.internal;

import defpackage.ac4;
import defpackage.kd4;
import defpackage.nb6;
import defpackage.pc4;
import defpackage.vd4;
import defpackage.wd4;
import defpackage.x39;
import defpackage.yr;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonSafeMapSerializer implements wd4<Map<String, ? extends Object>> {
    public final nb6 a;
    public final Type b;

    public static final class a extends x39<Map<String, ? extends Object>> {
    }

    public GsonSafeMapSerializer(nb6 nb6Var) {
        this.a = nb6Var;
        Type type = new a().b;
        type.getClass();
        this.b = type;
    }

    public final ac4 a(List list, vd4 vd4Var) {
        pc4 pc4VarB;
        ac4 ac4Var = new ac4();
        for (Object obj : list) {
            if (obj != null && (pc4VarB = b(obj, "list-element", vd4Var)) != null) {
                ac4Var.b.add(pc4VarB);
            }
        }
        return ac4Var;
    }

    public final pc4 b(Object obj, String str, vd4 vd4Var) {
        nb6 nb6Var = this.a;
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            return a((List) obj, vd4Var);
        }
        if (obj instanceof Object[]) {
            return a(yr.h0((Object[]) obj), vd4Var);
        }
        if (obj instanceof Map) {
            return serialize((Map) obj, this.b, vd4Var);
        }
        try {
            return nb6Var.b().a.n(obj);
        } catch (Throwable th) {
            nb6Var.v.a("Property '" + str + "' with value '" + obj + "' cannot be serialized to JSON: " + th + ". This property will be ignored.");
            return null;
        }
    }

    @Override // defpackage.wd4
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final kd4 serialize(Map map, Type type, vd4 vd4Var) {
        type.getClass();
        vd4Var.getClass();
        kd4 kd4Var = new kd4();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                pc4 pc4VarB = b(entry.getValue(), str, vd4Var);
                if (pc4VarB != null) {
                    kd4Var.b.put(str, pc4VarB);
                }
            }
        }
        return kd4Var;
    }
}
