package defpackage;

import com.google.protobuf.q;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class tz4 {
    public static final a b = new a();
    public final c a;

    public class a implements ga5 {
        @Override // defpackage.ga5
        public final boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // defpackage.ga5
        public final fa5 messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[qs6.values().length];
            a = iArr;
            try {
                iArr[qs6.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static class c implements ga5 {
        public ga5[] a;

        @Override // defpackage.ga5
        public final boolean isSupported(Class<?> cls) {
            for (ga5 ga5Var : this.a) {
                if (ga5Var.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // defpackage.ga5
        public final fa5 messageInfoFor(Class<?> cls) {
            for (ga5 ga5Var : this.a) {
                if (ga5Var.isSupported(cls)) {
                    return ga5Var.messageInfoFor(cls);
                }
            }
            n1.e("No factory is available for message type: ".concat(cls.getName()));
            return null;
        }
    }

    public tz4() {
        ga5 ga5Var;
        try {
            ga5Var = (ga5) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            ga5Var = b;
        }
        ga5[] ga5VarArr = {cp3.a, ga5Var};
        c cVar = new c();
        cVar.a = ga5VarArr;
        Charset charset = q.a;
        this.a = cVar;
    }
}
