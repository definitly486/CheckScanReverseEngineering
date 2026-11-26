package androidx.datastore.core.okio;

import androidx.datastore.core.WriteScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.hy6;
import defpackage.j46;
import defpackage.j59;
import defpackage.m93;
import defpackage.r57;
import defpackage.sj0;
import defpackage.w93;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public final class OkioWriteScope<T> extends OkioReadScope<T> implements WriteScope<T> {

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioWriteScope$writeData$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.okio.OkioWriteScope", f = "OkioStorage.kt", l = {216}, m = "writeData")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioWriteScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OkioWriteScope<T> okioWriteScope, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = okioWriteScope;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeData(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkioWriteScope(w93 w93Var, j46 j46Var, OkioSerializer<T> okioSerializer) {
        super(w93Var, j46Var, okioSerializer);
        w93Var.getClass();
        j46Var.getClass();
        okioSerializer.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v8, types: [m93] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, m93] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.Closeable] */
    @Override // androidx.datastore.core.WriteScope
    public Object writeData(T t, e02<? super j59> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        ?? E;
        ?? r0;
        Closeable closeable;
        j59 j59Var;
        Throwable th;
        j59 j59Var2;
        ?? r8;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        Throwable th2 = null;
        if (i2 == 0) {
            r57.b(obj);
            checkClose();
            w93 fileSystem = getFileSystem();
            j46 path = getPath();
            fileSystem.getClass();
            path.getClass();
            E = fileSystem.E(path);
            try {
                hy6 hy6Var = new hy6(m93.y(E));
                try {
                    OkioSerializer<T> serializer = getSerializer();
                    anonymousClass1.L$0 = E;
                    anonymousClass1.L$1 = E;
                    anonymousClass1.L$2 = hy6Var;
                    anonymousClass1.label = 1;
                    if (serializer.writeTo(t, hy6Var, anonymousClass1) == a32Var) {
                        return a32Var;
                    }
                    ?? r9 = E;
                    r0 = r9;
                    closeable = hy6Var;
                    r8 = r9;
                } catch (Throwable th3) {
                    th = th3;
                    r0 = E;
                    closeable = hy6Var;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th = th;
                    j59Var2 = null;
                }
            } catch (Throwable th4) {
                th = th4;
                if (E != 0) {
                    E.close();
                }
                th2 = th;
                j59Var = null;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeable = (Closeable) anonymousClass1.L$2;
            m93 m93Var = (m93) anonymousClass1.L$1;
            r0 = (Closeable) anonymousClass1.L$0;
            try {
                r57.b(obj);
                r0 = r0;
                r8 = m93Var;
            } catch (Throwable th5) {
                th = th5;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (Throwable th6) {
                        try {
                            sj0.c(th, th6);
                        } catch (Throwable th7) {
                            th = th7;
                            E = r0;
                            if (E != 0) {
                                try {
                                    E.close();
                                } catch (Throwable th8) {
                                    sj0.c(th, th8);
                                }
                            }
                            th2 = th;
                            j59Var = null;
                        }
                    }
                }
                th = th;
                j59Var2 = null;
            }
        }
        r8.flush();
        j59Var2 = j59.a;
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th9) {
                th = th9;
            }
        }
        th = null;
        ?? r10 = r0;
        if (th != null) {
            throw th;
        }
        j59Var2.getClass();
        j59Var = j59.a;
        if (r10 != 0) {
            try {
                r10.close();
            } catch (Throwable th10) {
                th2 = th10;
            }
        }
        if (th2 != null) {
            throw th2;
        }
        j59Var.getClass();
        return j59.a;
    }
}
