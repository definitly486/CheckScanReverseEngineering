package defpackage;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class fd4 {
    public static final wl2.a<Map<String, Integer>> a = new wl2.a<>();

    public static final int a(mp7 mp7Var, xb4 xb4Var, String str) {
        mp7Var.getClass();
        xb4Var.getClass();
        str.getClass();
        d(xb4Var, mp7Var);
        int iC = mp7Var.c(str);
        if (iC != -3 || !xb4Var.a.f) {
            return iC;
        }
        wl2 wl2Var = xb4Var.c;
        eb ebVar = new eb(1, mp7Var, xb4Var);
        ConcurrentHashMap concurrentHashMap = wl2Var.a;
        Map map = (Map) concurrentHashMap.get(mp7Var);
        wl2.a<Map<String, Integer>> aVar = a;
        Object obj = map != null ? map.get(aVar) : null;
        Object objInvoke = obj != null ? obj : null;
        if (objInvoke == null) {
            objInvoke = ebVar.invoke();
            Object concurrentHashMap2 = concurrentHashMap.get(mp7Var);
            if (concurrentHashMap2 == null) {
                concurrentHashMap2 = new ConcurrentHashMap(2);
                concurrentHashMap.put(mp7Var, concurrentHashMap2);
            }
            ((Map) concurrentHashMap2).put(aVar, objInvoke);
        }
        Integer num = (Integer) ((Map) objInvoke).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final int b(mp7 mp7Var, xb4 xb4Var, String str, String str2) {
        mp7Var.getClass();
        xb4Var.getClass();
        str.getClass();
        int iA = a(mp7Var, xb4Var, str);
        if (iA != -3) {
            return iA;
        }
        throw new SerializationException(mp7Var.h() + " does not contain element with name '" + str + '\'' + str2);
    }

    public static final boolean c(xb4 xb4Var, mp7 mp7Var) {
        mp7Var.getClass();
        xb4Var.getClass();
        if (xb4Var.a.a) {
            return true;
        }
        List<Annotation> annotations = mp7Var.getAnnotations();
        if ((annotations instanceof Collection) && annotations.isEmpty()) {
            return false;
        }
        Iterator<T> it = annotations.iterator();
        while (it.hasNext()) {
            if (((Annotation) it.next()) instanceof zc4) {
                return true;
            }
        }
        return false;
    }

    public static final void d(xb4 xb4Var, mp7 mp7Var) {
        mp7Var.getClass();
        xb4Var.getClass();
        aa4.e(mp7Var.getKind(), eb8.a.a);
    }
}
