package androidx.datastore.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.av;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r57;
import defpackage.sj0;
import defpackage.yg5;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class FileStorageConnection<T> implements StorageConnection<T> {
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final File file;
    private final ll3<j59> onClose;
    private final Serializer<T> serializer;
    private final yg5 transactionMutex;

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$readScope$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {TypedValues.TYPE_TARGET}, m = "readScope")
    public static final class AnonymousClass1<R> extends f02 {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FileStorageConnection<T> fileStorageConnection, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = fileStorageConnection;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$writeScope$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {214, 118}, m = "writeScope")
    public static final class C06771 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06771(FileStorageConnection<T> fileStorageConnection, e02<? super C06771> e02Var) {
            super(e02Var);
            this.this$0 = fileStorageConnection;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public FileStorageConnection(File file, Serializer<T> serializer, InterProcessCoordinator interProcessCoordinator, ll3<j59> ll3Var) {
        file.getClass();
        serializer.getClass();
        interProcessCoordinator.getClass();
        ll3Var.getClass();
        this.file = file;
        this.serializer = serializer;
        this.coordinator = interProcessCoordinator;
        this.onClose = ll3Var;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
        this.transactionMutex = new ch5();
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            ah.f("StorageConnection has already been disposed.");
        }
    }

    private final void createParentDirectories(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
                return;
            }
            av.c(file, "Unable to create parent directories of ");
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

    /* JADX WARN: Code duplicated, block: B:28:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0074  */
    /* JADX WARN: Code duplicated, block: B:50:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v9 */
    @Override // androidx.datastore.core.StorageConnection
    public <R> Object readScope(dm3<? super ReadScope<T>, ? super Boolean, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super R> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Throwable th;
        Closeable closeable;
        FileStorageConnection<T> fileStorageConnection;
        boolean z;
        ?? r10;
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
        ?? r11 = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(r11);
                checkNotClosed();
                boolean zTryLock = this.transactionMutex.tryLock(null);
                FileReadScope fileReadScope = new FileReadScope(this.file, this.serializer);
                try {
                    Boolean boolValueOf = Boolean.valueOf(zTryLock);
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = fileReadScope;
                    anonymousClass1.Z$0 = zTryLock;
                    anonymousClass1.label = 1;
                    Object objInvoke = dm3Var.invoke(fileReadScope, boolValueOf, anonymousClass1);
                    if (objInvoke == a32Var) {
                        return a32Var;
                    }
                    fileStorageConnection = this;
                    z = zTryLock ? 1 : 0;
                    r10 = objInvoke;
                    closeable = fileReadScope;
                    closeable.close();
                    th = null;
                    if (th != null) {
                        throw th;
                    }
                    if (z) {
                        fileStorageConnection.transactionMutex.unlock(null);
                    }
                    return r10;
                } catch (Throwable th2) {
                    th = th2;
                    closeable = fileReadScope;
                    r11 = zTryLock;
                    closeable.close();
                    throw th;
                }
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = anonymousClass1.Z$0;
            closeable = (Closeable) anonymousClass1.L$1;
            fileStorageConnection = (FileStorageConnection) anonymousClass1.L$0;
            try {
                r57.b(r11);
                r10 = r11;
                try {
                    closeable.close();
                    th = null;
                } catch (Throwable th3) {
                    th = th3;
                }
                if (th != null) {
                    if (z) {
                        fileStorageConnection.transactionMutex.unlock(null);
                    }
                    return r10;
                }
                try {
                    throw th;
                } catch (Throwable th4) {
                    th = th4;
                    r11 = z;
                    this = fileStorageConnection;
                }
            } catch (Throwable th5) {
                r11 = z ? 1 : 0;
                this = fileStorageConnection;
                th = th5;
                try {
                    closeable.close();
                    throw th;
                } catch (Throwable th6) {
                    sj0.c(th, th6);
                    throw th;
                }
            }
        } catch (Throwable th7) {
            th = th7;
        }
        if (r11 != 0) {
            this.transactionMutex.unlock(null);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b7 A[Catch: all -> 0x00e7, IOException -> 0x00ea, TRY_ENTER, TryCatch #1 {IOException -> 0x00ea, blocks: (B:34:0x00b7, B:36:0x00bd, B:39:0x00c6, B:40:0x00e6, B:48:0x00f6, B:55:0x0104, B:54:0x0101), top: B:67:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f6 A[Catch: all -> 0x00e7, IOException -> 0x00ea, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x00ea, blocks: (B:34:0x00b7, B:36:0x00bd, B:39:0x00c6, B:40:0x00e6, B:48:0x00f6, B:55:0x0104, B:54:0x0101), top: B:67:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [yg5] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.File, java.lang.Object] */
    @Override // androidx.datastore.core.StorageConnection
    public Object writeScope(bm3<? super WriteScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) throws Throwable {
        C06771 c06771;
        ?? r10;
        ?? file;
        yg5 yg5Var;
        FileWriteScope fileWriteScope;
        Throwable th;
        Closeable closeable;
        FileStorageConnection<T> fileStorageConnection;
        ?? r2;
        ?? r9;
        if (e02Var instanceof C06771) {
            c06771 = (C06771) e02Var;
            int i = c06771.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06771.label = i - Integer.MIN_VALUE;
            } else {
                c06771 = new C06771(this, e02Var);
            }
        } else {
            c06771 = new C06771(this, e02Var);
        }
        Object obj = c06771.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06771.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (i2 == 0) {
                                r57.b(obj);
                                checkNotClosed();
                                createParentDirectories(this.file);
                                yg5Var = this.transactionMutex;
                                c06771.L$0 = this;
                                c06771.L$1 = bm3Var;
                                c06771.L$2 = yg5Var;
                                c06771.label = 1;
                                if (yg5Var.lock(null, c06771) != a32Var) {
                                }
                                r10 = yg5Var;
                                return a32Var;
                            }
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                closeable = (Closeable) c06771.L$3;
                                File file2 = (File) c06771.L$2;
                                yg5 yg5Var2 = (yg5) c06771.L$1;
                                fileStorageConnection = (FileStorageConnection) c06771.L$0;
                                try {
                                    r57.b(obj);
                                    r2 = yg5Var2;
                                    r9 = file2;
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
                                    if (r9.exists() && !FileMoves_androidKt.atomicMoveTo(r9, fileStorageConnection.file)) {
                                        throw new IOException("Unable to rename " + r9 + " to " + fileStorageConnection.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                    }
                                    j59 j59Var2 = j59.a;
                                    r2.unlock(null);
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
                            yg5 yg5Var3 = (yg5) c06771.L$2;
                            bm3Var = (bm3) c06771.L$1;
                            FileStorageConnection<T> fileStorageConnection2 = (FileStorageConnection) c06771.L$0;
                            r57.b(obj);
                            r10 = yg5Var3;
                            this = fileStorageConnection2;
                            c06771.L$0 = this;
                            c06771.L$1 = r10;
                            c06771.L$2 = file;
                            c06771.L$3 = fileWriteScope;
                            c06771.label = 2;
                            if (bm3Var.invoke(fileWriteScope, c06771) != a32Var) {
                                fileStorageConnection = this;
                                r2 = r10;
                                r9 = file;
                                closeable = fileWriteScope;
                                j59 j59Var3 = j59.a;
                                closeable.close();
                                th = null;
                                if (th == null) {
                                    throw th;
                                }
                                if (r9.exists()) {
                                    throw new IOException("Unable to rename " + r9 + " to " + fileStorageConnection.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                }
                                j59 j59Var4 = j59.a;
                                r2.unlock(null);
                                return j59.a;
                            }
                            r10 = yg5Var;
                            return a32Var;
                        } catch (Throwable th5) {
                            th = th5;
                            closeable = fileWriteScope;
                            closeable.close();
                            throw th;
                        }
                        fileWriteScope = new FileWriteScope(file, this.serializer);
                    } catch (IOException e) {
                        e = e;
                        if (file.exists()) {
                            file.delete();
                        }
                        throw e;
                    }
                    r10 = yg5Var;
                    file = new File(this.file.getAbsolutePath() + ".tmp");
                } catch (Throwable th6) {
                    th = th6;
                    r10.unlock(null);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                file = bm3Var;
                r10 = a32Var;
            }
        } catch (Throwable th7) {
            th = th7;
            r10 = a32Var;
            r10.unlock(null);
            throw th;
        }
    }
}
