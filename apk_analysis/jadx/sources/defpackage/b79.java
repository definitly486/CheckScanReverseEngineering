package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class b79 extends e79 {
    public final /* synthetic */ Method b;
    public final /* synthetic */ int c;

    public b79(int i, Method method) {
        this.b = method;
        this.c = i;
    }

    @Override // defpackage.e79
    public final <T> T a(Class<T> cls) {
        String strA = px1.a(cls);
        if (strA == null) {
            return (T) this.b.invoke(null, cls, Integer.valueOf(this.c));
        }
        xg.d("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        return null;
    }
}
