package androidx.datastore.core.okio;

import androidx.datastore.core.ReadScope;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c84;
import defpackage.e02;
import defpackage.f02;
import defpackage.iy6;
import defpackage.j46;
import defpackage.r57;
import defpackage.sj0;
import defpackage.w93;
import java.io.Closeable;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public class OkioReadScope<T> implements ReadScope<T> {
    private final AtomicBoolean closed;
    private final w93 fileSystem;
    private final j46 path;
    private final OkioSerializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioReadScope$readData$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.okio.OkioReadScope", f = "OkioStorage.kt", l = {180, WebmConstants.MkvEbmlElement.CUE_POINT}, m = "readData$suspendImpl")
    public static final class AnonymousClass1<T> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OkioReadScope<T> okioReadScope, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = okioReadScope;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OkioReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    public OkioReadScope(w93 w93Var, j46 j46Var, OkioSerializer<T> okioSerializer) {
        w93Var.getClass();
        j46Var.getClass();
        okioSerializer.getClass();
        this.fileSystem = w93Var;
        this.path = j46Var;
        this.serializer = okioSerializer;
        this.closed = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x008c A[Catch: FileNotFoundException -> 0x0086, TryCatch #7 {FileNotFoundException -> 0x0086, blocks: (B:46:0x008c, B:47:0x0090, B:42:0x0082, B:39:0x007d), top: B:80:0x007d, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0090 A[Catch: FileNotFoundException -> 0x0086, TRY_LEAVE, TryCatch #7 {FileNotFoundException -> 0x0086, blocks: (B:46:0x008c, B:47:0x0090, B:42:0x0082, B:39:0x007d), top: B:80:0x007d, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x009b  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:80:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static <T> Object readData$suspendImpl(OkioReadScope<T> okioReadScope, e02<? super T> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        OkioReadScope<T> okioReadScope2;
        Closeable closeable;
        Throwable th;
        iy6 iy6VarF;
        Throwable th2;
        Closeable closeable2;
        Object from;
        Throwable th3;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(okioReadScope, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(okioReadScope, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        Throwable th4 = null;
        if (i2 == 0) {
            r57.b(obj);
            okioReadScope.checkClose();
            try {
                iy6 iy6VarF2 = c84.f(((OkioReadScope) okioReadScope).fileSystem.Q(((OkioReadScope) okioReadScope).path));
                try {
                    OkioSerializer<T> okioSerializer = ((OkioReadScope) okioReadScope).serializer;
                    anonymousClass1.L$0 = okioReadScope;
                    anonymousClass1.L$1 = iy6VarF2;
                    anonymousClass1.label = 1;
                    Object from2 = okioSerializer.readFrom(iy6VarF2, anonymousClass1);
                    if (from2 != a32Var) {
                        closeable = iy6VarF2;
                        obj = from2;
                        if (closeable != null) {
                            closeable.close();
                        }
                        th3 = null;
                        if (th3 == null) {
                            throw th3;
                        }
                        obj.getClass();
                        return obj;
                    }
                    return a32Var;
                } catch (Throwable th5) {
                    okioReadScope2 = okioReadScope;
                    closeable = iy6VarF2;
                    th = th5;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th3 = th;
                    obj = null;
                }
            } catch (FileNotFoundException unused) {
                if (((OkioReadScope) okioReadScope).fileSystem.n(((OkioReadScope) okioReadScope).path)) {
                    return ((OkioReadScope) okioReadScope).serializer.getDefaultValue();
                }
                iy6VarF = c84.f(((OkioReadScope) okioReadScope).fileSystem.Q(((OkioReadScope) okioReadScope).path));
                OkioSerializer<T> okioSerializer2 = ((OkioReadScope) okioReadScope).serializer;
                anonymousClass1.L$0 = iy6VarF;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                from = okioSerializer2.readFrom(iy6VarF, anonymousClass1);
                if (from != a32Var) {
                    obj = from;
                    closeable2 = iy6VarF;
                    if (closeable2 != null) {
                        closeable2.close();
                    }
                    if (th4 != null) {
                        throw th4;
                    }
                    obj.getClass();
                    return obj;
                }
            }
        } else {
            if (i2 == 1) {
                closeable = (Closeable) anonymousClass1.L$1;
                okioReadScope2 = (OkioReadScope) anonymousClass1.L$0;
                try {
                    r57.b(obj);
                    if (closeable != null) {
                        try {
                            closeable.close();
                        } catch (Throwable th6) {
                            th3 = th6;
                        }
                    }
                    th3 = null;
                } catch (Throwable th7) {
                    th = th7;
                    if (closeable != null) {
                        try {
                            try {
                                closeable.close();
                            } catch (Throwable th8) {
                                sj0.c(th, th8);
                            }
                        } catch (FileNotFoundException unused2) {
                            okioReadScope = okioReadScope2;
                            if (((OkioReadScope) okioReadScope).fileSystem.n(((OkioReadScope) okioReadScope).path)) {
                                return ((OkioReadScope) okioReadScope).serializer.getDefaultValue();
                            }
                            iy6VarF = c84.f(((OkioReadScope) okioReadScope).fileSystem.Q(((OkioReadScope) okioReadScope).path));
                            try {
                                OkioSerializer<T> okioSerializer3 = ((OkioReadScope) okioReadScope).serializer;
                                anonymousClass1.L$0 = iy6VarF;
                                anonymousClass1.L$1 = null;
                                anonymousClass1.label = 2;
                                from = okioSerializer3.readFrom(iy6VarF, anonymousClass1);
                                if (from != a32Var) {
                                    obj = from;
                                    closeable2 = iy6VarF;
                                    if (closeable2 != null) {
                                        closeable2.close();
                                    }
                                    if (th4 != null) {
                                        throw th4;
                                    }
                                    obj.getClass();
                                    return obj;
                                }
                                return a32Var;
                            } catch (Throwable th9) {
                                th2 = th9;
                                closeable2 = iy6VarF;
                                if (closeable2 != null) {
                                    closeable2.close();
                                }
                                th4 = th2;
                                obj = null;
                            }
                        }
                    }
                    th3 = th;
                    obj = null;
                }
                if (th3 == null) {
                    throw th3;
                }
                obj.getClass();
                return obj;
            }
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeable2 = (Closeable) anonymousClass1.L$0;
            try {
                r57.b(obj);
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Throwable th10) {
                        th4 = th10;
                    }
                }
            } catch (Throwable th11) {
                th2 = th11;
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Throwable th12) {
                        sj0.c(th2, th12);
                    }
                }
                th4 = th2;
                obj = null;
            }
        }
        if (th4 != null) {
            throw th4;
        }
        obj.getClass();
        return obj;
    }

    public final void checkClose() {
        if (this.closed.get()) {
            ah.f("This scope has already been closed.");
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    public final w93 getFileSystem() {
        return this.fileSystem;
    }

    public final j46 getPath() {
        return this.path;
    }

    public final OkioSerializer<T> getSerializer() {
        return this.serializer;
    }

    @Override // androidx.datastore.core.ReadScope
    public Object readData(e02<? super T> e02Var) {
        return readData$suspendImpl(this, e02Var);
    }
}
