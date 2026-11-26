package yads;

import android.content.Context;
import defpackage.jx6;
import defpackage.nl3;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import yads.bv3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bv3 {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();

    public static final zu3 a(Context context, String str) {
        ConcurrentHashMap concurrentHashMap = a;
        final jx6 jx6Var = new jx6(2, context, str);
        return (zu3) concurrentHashMap.computeIfAbsent(str, new Function() { // from class: jp9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return bv3.a(jx6Var, obj);
            }
        });
    }

    public static final zu3 a(Context context, String str, String str2) {
        return new av3(context, str);
    }

    public static final zu3 a(nl3 nl3Var, Object obj) {
        return (zu3) nl3Var.invoke(obj);
    }
}
