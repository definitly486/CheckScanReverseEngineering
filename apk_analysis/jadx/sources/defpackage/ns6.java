package defpackage;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a0;
import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ns6 {
    public static volatile j a = j.a();

    public static final class a<T extends a0> {
        public static final ThreadLocal<Reference<byte[]>> c = new ThreadLocal<>();
        public final x36<T> a;
        public final T b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(a0 a0Var) {
            o8.l(a0Var, "defaultInstance cannot be null");
            this.b = a0Var;
            this.a = (x36<T>) a0Var.getParserForType();
        }

        public final a0 a(InputStream inputStream) {
            byte[] bArr;
            if ((inputStream instanceof ms6) && ((ms6) inputStream).c == this.a) {
                try {
                    a0 a0Var = ((ms6) inputStream).b;
                    if (a0Var != null) {
                        return a0Var;
                    }
                    throw new IllegalStateException("message not available");
                } catch (IllegalStateException unused) {
                }
            }
            f fVarG = null;
            try {
                if (inputStream instanceof gg4) {
                    int iAvailable = inputStream.available();
                    if (iAvailable > 0 && iAvailable <= 4194304) {
                        ThreadLocal<Reference<byte[]>> threadLocal = c;
                        Reference<byte[]> reference = threadLocal.get();
                        if (reference == null || (bArr = reference.get()) == null || bArr.length < iAvailable) {
                            bArr = new byte[iAvailable];
                            threadLocal.set(new WeakReference(bArr));
                        }
                        int i = iAvailable;
                        while (i > 0) {
                            int i2 = inputStream.read(bArr, iAvailable - i, i);
                            if (i2 == -1) {
                                break;
                            }
                            i -= i2;
                        }
                        if (i != 0) {
                            throw new RuntimeException("size inaccurate: " + iAvailable + " != " + (iAvailable - i));
                        }
                        fVarG = f.f(bArr, 0, iAvailable, false);
                    } else if (iAvailable == 0) {
                        return this.b;
                    }
                }
                if (fVarG == null) {
                    fVarG = f.g(inputStream);
                }
                fVarG.c = Integer.MAX_VALUE;
                try {
                    o oVarA = this.a.a(fVarG, ns6.a);
                    try {
                        fVarG.a(0);
                        return oVarA;
                    } catch (InvalidProtocolBufferException e) {
                        e.b = oVarA;
                        throw e;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    throw h88.l.h("Invalid protobuf byte sequence").g(e2).a();
                }
            } catch (IOException e3) {
                ti0.f(e3);
                return null;
            }
        }

        public final ms6 b(Object obj) {
            return new ms6((a0) obj, this.a);
        }
    }
}
