package io.grpc;

import com.tapjoy.TJKeyValueStorageKt;
import defpackage.o8;
import defpackage.od5;
import defpackage.xc2;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static final b h;
    public final xc2 a;
    public final Executor b;
    public final Object[][] c;
    public final List<c.a> d;
    public final Boolean e;
    public final Integer f;
    public final Integer g;

    public static class a {
        public xc2 a;
        public Executor b;
        public Object[][] c;
        public List<c.a> d;
        public Boolean e;
        public Integer f;
        public Integer g;
    }

    /* JADX INFO: renamed from: io.grpc.b$b, reason: collision with other inner class name */
    public static final class C0204b<T> {
        public final String a;

        public C0204b(String str) {
            this.a = str;
        }

        public final String toString() {
            return this.a;
        }
    }

    static {
        a aVar = new a();
        aVar.c = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        aVar.d = Collections.EMPTY_LIST;
        h = new b(aVar);
    }

    public b(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
    }

    public static a c(b bVar) {
        a aVar = new a();
        aVar.a = bVar.a;
        aVar.b = bVar.b;
        aVar.c = bVar.c;
        aVar.d = bVar.d;
        aVar.e = bVar.e;
        aVar.f = bVar.f;
        aVar.g = bVar.g;
        return aVar;
    }

    public final <T> T a(C0204b<T> c0204b) {
        o8.l(c0204b, TJKeyValueStorageKt.KEY);
        int i = 0;
        while (true) {
            Object[][] objArr = this.c;
            if (i >= objArr.length) {
                return null;
            }
            Object[] objArr2 = objArr[i];
            if (c0204b == objArr2[0]) {
                return (T) objArr2[1];
            }
            i++;
        }
    }

    public final boolean b() {
        return Boolean.TRUE.equals(this.e);
    }

    public final <T> b d(C0204b<T> c0204b, T t) {
        Object[][] objArr;
        o8.l(c0204b, TJKeyValueStorageKt.KEY);
        o8.l(t, "value");
        a aVarC = c(this);
        int i = 0;
        while (true) {
            objArr = this.c;
            if (i >= objArr.length) {
                i = -1;
                break;
            }
            if (c0204b == objArr[i][0]) {
                break;
            }
            i++;
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length + (i == -1 ? 1 : 0), 2);
        aVarC.c = objArr2;
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        Object[][] objArr3 = aVarC.c;
        if (i == -1) {
            objArr3[objArr.length] = new Object[]{c0204b, t};
        } else {
            objArr3[i] = new Object[]{c0204b, t};
        }
        return new b(aVarC);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.a, "deadline");
        aVarB.d(null, "authority");
        aVarB.d(null, "callCredentials");
        Executor executor = this.b;
        aVarB.d(executor != null ? executor.getClass() : null, "executor");
        aVarB.d(null, "compressorName");
        aVarB.d(Arrays.deepToString(this.c), "customOptions");
        aVarB.c("waitForReady", b());
        aVarB.d(this.f, "maxInboundMessageSize");
        aVarB.d(this.g, "maxOutboundMessageSize");
        aVarB.d(null, "onReadyThreshold");
        aVarB.d(this.d, "streamTracerFactories");
        return aVarB.toString();
    }
}
