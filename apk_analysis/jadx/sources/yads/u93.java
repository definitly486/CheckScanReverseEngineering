package yads;

import defpackage.k57;
import java.net.InetAddress;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class u93 {
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public final ConcurrentHashMap a = b;

    public final boolean a(int i, String str) {
        Object aVar;
        ConcurrentHashMap concurrentHashMap = this.a;
        Object objValueOf = concurrentHashMap.get(str);
        if (objValueOf == null) {
            try {
                aVar = Boolean.valueOf(InetAddress.getByName(str).isReachable(i));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            Boolean bool = (Boolean) aVar;
            objValueOf = Boolean.valueOf(bool != null ? bool.booleanValue() : false);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(str, objValueOf);
            if (objPutIfAbsent != null) {
                objValueOf = objPutIfAbsent;
            }
        }
        return ((Boolean) objValueOf).booleanValue();
    }
}
