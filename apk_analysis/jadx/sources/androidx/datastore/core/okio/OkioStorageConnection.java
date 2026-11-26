package androidx.datastore.core.okio;

import androidx.datastore.core.Closeable;
import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.ReadScope;
import androidx.datastore.core.StorageConnection;
import androidx.datastore.core.WriteScope;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j46;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r57;
import defpackage.sj0;
import defpackage.w93;
import defpackage.yg5;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class OkioStorageConnection<T> implements StorageConnection<T> {
    private final AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final w93 fileSystem;
    private final ll3<j59> onClose;
    private final j46 path;
    private final OkioSerializer<T> serializer;
    private final yg5 transactionMutex;

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioStorageConnection$readScope$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.okio.OkioStorageConnection", f = "OkioStorage.kt", l = {113}, m = "readScope")
    public static final class AnonymousClass1<R> extends f02 {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OkioStorageConnection<T> okioStorageConnection, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = okioStorageConnection;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioStorageConnection$writeScope$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.okio.OkioStorageConnection", f = "OkioStorage.kt", l = {WebmConstants.MkvEbmlElement.VOID, 137}, m = "writeScope")
    public static final class C06811 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06811(OkioStorageConnection<T> okioStorageConnection, e02<? super C06811> e02Var) {
            super(e02Var);
            this.this$0 = okioStorageConnection;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public OkioStorageConnection(w93 w93Var, j46 j46Var, OkioSerializer<T> okioSerializer, InterProcessCoordinator interProcessCoordinator, ll3<j59> ll3Var) {
        w93Var.getClass();
        j46Var.getClass();
        okioSerializer.getClass();
        interProcessCoordinator.getClass();
        ll3Var.getClass();
        this.fileSystem = w93Var;
        this.path = j46Var;
        this.serializer = okioSerializer;
        this.coordinator = interProcessCoordinator;
        this.onClose = ll3Var;
        this.closed = new AtomicBoolean(false);
        this.transactionMutex = new ch5();
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            ah.f("StorageConnection has already been disposed.");
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    @Override // androidx.datastore.core.StorageConnection
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0074 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0076  */
    /* JADX WARN: Code duplicated, block: B:55:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.StorageConnection
    public <R> Object readScope(dm3<? super ReadScope<T>, ? super Boolean, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super R> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        boolean zTryLock;
        Throwable th;
        Closeable closeable;
        OkioStorageConnection<T> okioStorageConnection;
        boolean z;
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
        if (i2 == 0) {
            r57.b(obj);
            checkNotClosed();
            zTryLock = this.transactionMutex.tryLock(null);
            try {
                OkioReadScope okioReadScope = new OkioReadScope(this.fileSystem, this.path, this.serializer);
                try {
                    Boolean boolValueOf = Boolean.valueOf(zTryLock);
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = okioReadScope;
                    anonymousClass1.Z$0 = zTryLock;
                    anonymousClass1.label = 1;
                    Object objInvoke = dm3Var.invoke(okioReadScope, boolValueOf, anonymousClass1);
                    if (objInvoke == a32Var) {
                        return a32Var;
                    }
                    okioStorageConnection = this;
                    z = zTryLock;
                    obj = objInvoke;
                    closeable = okioReadScope;
                    closeable.close();
                    th = null;
                    if (th != null) {
                        throw th;
                    }
                    if (z) {
                        okioStorageConnection.transactionMutex.unlock(null);
                    }
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    closeable = okioReadScope;
                    closeable.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = anonymousClass1.Z$0;
            closeable = (Closeable) anonymousClass1.L$1;
            okioStorageConnection = (OkioStorageConnection) anonymousClass1.L$0;
            try {
                r57.b(obj);
                try {
                    closeable.close();
                    th = null;
                } catch (Throwable th4) {
                    th = th4;
                }
                if (th != null) {
                    if (z) {
                        okioStorageConnection.transactionMutex.unlock(null);
                    }
                    return obj;
                }
                try {
                    throw th;
                } catch (Throwable th5) {
                    th = th5;
                    zTryLock = z;
                    this = okioStorageConnection;
                }
            } catch (Throwable th6) {
                zTryLock = z;
                this = okioStorageConnection;
                th = th6;
                try {
                    closeable.close();
                    throw th;
                } catch (Throwable th7) {
                    sj0.c(th, th7);
                    throw th;
                }
            }
        }
        if (zTryLock) {
            this.transactionMutex.unlock(null);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c1 A[Catch: all -> 0x00d1, IOException -> 0x00d4, TRY_ENTER, TryCatch #1 {all -> 0x00d1, blocks: (B:37:0x00c1, B:39:0x00c9, B:45:0x00d7, B:48:0x00df, B:55:0x00ee, B:54:0x00eb), top: B:71:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c9 A[Catch: all -> 0x00d1, IOException -> 0x00d4, TRY_LEAVE, TryCatch #1 {all -> 0x00d1, blocks: (B:37:0x00c1, B:39:0x00c9, B:45:0x00d7, B:48:0x00df, B:55:0x00ee, B:54:0x00eb), top: B:71:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00df A[Catch: all -> 0x00d1, IOException -> 0x00d4, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00d1, blocks: (B:37:0x00c1, B:39:0x00c9, B:45:0x00d7, B:48:0x00df, B:55:0x00ee, B:54:0x00eb), top: B:71:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [w93] */
    /* JADX WARN: Type inference failed for: r0v10, types: [yg5] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, w93] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v1, types: [j46] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [yg5] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.datastore.core.StorageConnection
    public Object writeScope(bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) throws Throwable {
        C06811 c06811;
        ?? r11;
        ?? r10;
        ?? r1;
        bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var2;
        j46 j46Var;
        j46 j46Var2;
        OkioWriteScope okioWriteScope;
        Closeable closeable;
        Throwable th;
        OkioStorageConnection<T> okioStorageConnection;
        ?? r0;
        j46 j46Var3;
        if (e02Var instanceof C06811) {
            C06811 c06812 = (C06811) e02Var;
            int i = c06812.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06812.label = i - Integer.MIN_VALUE;
                c06811 = c06812;
            } else {
                c06811 = new C06811(this, e02Var);
            }
        } else {
            c06811 = new C06811(this, e02Var);
        }
        Object obj = c06811.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06811.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (i2 == 0) {
                                r57.b(obj);
                                checkNotClosed();
                                j46 j46VarD = this.path.d();
                                if (j46VarD == null) {
                                    ah.f("must have a parent path");
                                    return null;
                                }
                                this.fileSystem.e(j46VarD);
                                yg5 yg5Var = this.transactionMutex;
                                c06811.L$0 = this;
                                c06811.L$1 = bm3Var;
                                c06811.L$2 = j46VarD;
                                c06811.L$3 = yg5Var;
                                c06811.label = 1;
                                if (yg5Var.lock(null, c06811) != a32Var) {
                                    bm3Var2 = bm3Var;
                                    j46Var = j46VarD;
                                    r11 = yg5Var;
                                }
                                return a32Var;
                            }
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                closeable = (Closeable) c06811.L$3;
                                j46 j46Var4 = (bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object>) ((j46) c06811.L$2);
                                yg5 yg5Var2 = (yg5) c06811.L$1;
                                okioStorageConnection = (OkioStorageConnection) c06811.L$0;
                                try {
                                    r57.b(obj);
                                    r0 = yg5Var2;
                                    j46Var3 = j46Var4;
                                    j59 j59Var = j59.a;
                                    try {
                                        closeable.close();
                                        th = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    if (th == null) {
                                        throw th;
                                    }
                                    if (okioStorageConnection.fileSystem.n(j46Var3)) {
                                        okioStorageConnection.fileSystem.b(j46Var3, okioStorageConnection.path);
                                    }
                                    j59 j59Var2 = j59.a;
                                    r0.unlock(null);
                                    return j59.a;
                                } catch (Throwable th3) {
                                    th = th3;
                                    try {
                                        closeable.close();
                                    } catch (Throwable th4) {
                                        sj0.c(th, th4);
                                    }
                                    throw th;
                                }
                            }
                            yg5 yg5Var3 = (yg5) c06811.L$3;
                            j46Var = (j46) c06811.L$2;
                            bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var3 = (bm3) c06811.L$1;
                            OkioStorageConnection<T> okioStorageConnection2 = (OkioStorageConnection) c06811.L$0;
                            r57.b(obj);
                            r11 = yg5Var3;
                            this = okioStorageConnection2;
                            bm3Var2 = bm3Var3;
                            c06811.L$0 = this;
                            c06811.L$1 = r11;
                            c06811.L$2 = j46Var2;
                            c06811.L$3 = okioWriteScope;
                            c06811.label = 2;
                            if (bm3Var2.invoke(okioWriteScope, c06811) != a32Var) {
                                okioStorageConnection = this;
                                closeable = okioWriteScope;
                                r0 = r11;
                                j46Var3 = j46Var2;
                                j59 j59Var3 = j59.a;
                                closeable.close();
                                th = null;
                                if (th == null) {
                                    throw th;
                                }
                                if (okioStorageConnection.fileSystem.n(j46Var3)) {
                                    okioStorageConnection.fileSystem.b(j46Var3, okioStorageConnection.path);
                                }
                                j59 j59Var4 = j59.a;
                                r0.unlock(null);
                                return j59.a;
                            }
                            return a32Var;
                        } catch (Throwable th5) {
                            closeable = okioWriteScope;
                            th = th5;
                            closeable.close();
                            throw th;
                        }
                        this.fileSystem.g(j46Var2);
                        okioWriteScope = new OkioWriteScope(this.fileSystem, j46Var2, this.serializer);
                    } catch (IOException e) {
                        r1 = this;
                        e = e;
                        r10 = j46Var2;
                        r11 = r11;
                        if (!r1.fileSystem.n(r10)) {
                            throw e;
                        }
                        try {
                            ?? r2 = r1.fileSystem;
                            r2.getClass();
                            r2.g(r10);
                            throw e;
                        } catch (IOException unused) {
                            throw e;
                        }
                    }
                    j46Var2 = (bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object>) j46Var.f(this.path.c().concat(".tmp"));
                } catch (Throwable th6) {
                    th = th6;
                    r11.unlock(null);
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
                r11 = ".tmp";
                r11.unlock(null);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            r11 = ".tmp";
            r1 = c06811;
            r10 = bm3Var;
        }
    }
}
