package io.appmetrica.analytics.networkapi;

import com.google.firebase.perf.FirebasePerformance;
import defpackage.g03;
import defpackage.g2;
import defpackage.i03;
import defpackage.jh2;
import defpackage.n05;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Request {
    private final String a;
    private final Method b;
    private final byte[] c;
    private final Map d;

    public static final class Builder {
        private final String a;
        private Method b = Method.GET;
        private byte[] c = new byte[0];
        private final LinkedHashMap d = new LinkedHashMap();

        public Builder(String str) {
            this.a = str;
        }

        public final Builder addHeader(String str, String str2) {
            this.d.put(str, str2);
            return this;
        }

        public final Request build() {
            return new Request(this.a, this.b, this.c, n05.l(this.d), null);
        }

        public final Builder withBody(byte[] bArr) {
            this.c = bArr;
            return this;
        }

        public final Builder withMethod(Method method) {
            this.b = method;
            return this;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 io.appmetrica.analytics.networkapi.Request$Method[], still in use, count: 1, list:
      (r0v1 io.appmetrica.analytics.networkapi.Request$Method[]) from 0x004e: CONSTRUCTOR (r0v1 io.appmetrica.analytics.networkapi.Request$Method[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Method {
        GET("GET"),
        POST("POST"),
        HEAD(FirebasePerformance.HttpMethod.HEAD),
        PUT(FirebasePerformance.HttpMethod.PUT),
        DELETE(FirebasePerformance.HttpMethod.DELETE),
        PATCH(FirebasePerformance.HttpMethod.PATCH),
        OPTIONS(FirebasePerformance.HttpMethod.OPTIONS);

        private static final /* synthetic */ g03 c;
        private final String a;

        static {
            c = new i03(methodArr);
        }

        private Method(String str) {
            super(str, i);
            this.a = str;
        }

        public static g03<Method> getEntries() {
            return c;
        }

        public static Method valueOf(String str) {
            return (Method) Enum.valueOf(Method.class, str);
        }

        public static Method[] values() {
            return (Method[]) b.clone();
        }

        public final String getMethodName() {
            return this.a;
        }
    }

    private Request(String str, Method method, byte[] bArr, Map map) {
        this.a = str;
        this.b = method;
        this.c = bArr;
        this.d = map;
    }

    public final byte[] getBody() {
        return this.c;
    }

    public final Map<String, String> getHeaders() {
        return this.d;
    }

    public final Method getMethod() {
        return this.b;
    }

    public final String getUrl() {
        return this.a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request(url='");
        sb.append(this.a);
        sb.append("', method='");
        sb.append(this.b);
        sb.append("', bodyLength=");
        sb.append(this.c.length);
        sb.append(", headers=");
        return g2.c(sb, this.d, ')');
    }

    public /* synthetic */ Request(String str, Method method, byte[] bArr, Map map, jh2 jh2Var) {
        this(str, method, bArr, map);
    }
}
