package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class c79 extends e79 {
    public final /* synthetic */ Method b;

    public c79(Method method) {
        this.b = method;
    }

    @Override // defpackage.e79
    public final <T> T a(Class<T> cls) {
        String strA = px1.a(cls);
        if (strA == null) {
            return (T) this.b.invoke(null, cls, Object.class);
        }
        xg.d("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        return null;
    }
}
