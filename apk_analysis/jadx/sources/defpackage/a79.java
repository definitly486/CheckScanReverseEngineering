package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class a79 extends e79 {
    public final /* synthetic */ Method b;
    public final /* synthetic */ Object c;

    public a79(Method method, Object obj) {
        this.b = method;
        this.c = obj;
    }

    @Override // defpackage.e79
    public final <T> T a(Class<T> cls) {
        String strA = px1.a(cls);
        if (strA == null) {
            return (T) this.b.invoke(this.c, cls);
        }
        xg.d("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        return null;
    }
}
