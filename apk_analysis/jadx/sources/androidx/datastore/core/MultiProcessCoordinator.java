package androidx.datastore.core;

import androidx.compose.ui.spatial.RectListKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.cl4;
import defpackage.e02;
import defpackage.f02;
import defpackage.fh8;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.m96;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ra8;
import defpackage.y22;
import defpackage.yg5;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiProcessCoordinator implements InterProcessCoordinator {
    public static final Companion Companion = new Companion(null);
    private static final String DEADLOCK_ERROR_MESSAGE = "Resource deadlock would occur";
    private static final long INITIAL_WAIT_MILLIS = 10;
    private static final long MAX_WAIT_MILLIS = 60000;
    private final String LOCK_ERROR_MESSAGE;
    private final String LOCK_SUFFIX;
    private final String VERSION_SUFFIX;
    private final o22 context;
    private final File file;
    private final yg5 inMemoryMutex;
    private final cl4<SharedCounter> lazySharedCounter;
    private final cl4 lockFile$delegate;
    private final hd3<j59> updateNotifications;

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$lock$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", l = {211, 47, 48}, m = "lock")
    public static final class AnonymousClass1<T> extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.lock(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$tryLock$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", l = {RectListKt.BitOffsetForGesturable, 87}, m = "tryLock")
    public static final class C06781<T> extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C06781(e02<? super C06781> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.tryLock(null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2", f = "MultiProcessCoordinator.android.kt", l = {WebmConstants.MkvEbmlElement.SIMPLE_BLOCK}, m = "invokeSuspend")
    public static final class AnonymousClass2<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<SharedCounter, e02<? super T>, Object> $block;
        int label;
        final /* synthetic */ MultiProcessCoordinator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super SharedCounter, ? super e02<? super T>, ? extends Object> bm3Var, MultiProcessCoordinator multiProcessCoordinator, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
            this.this$0 = multiProcessCoordinator;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$block, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            bm3<SharedCounter, e02<? super T>, Object> bm3Var = this.$block;
            SharedCounter sharedCounter = this.this$0.getSharedCounter();
            this.label = 1;
            Object objInvoke = bm3Var.invoke(sharedCounter, this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            return this.$block.invoke(this.this$0.getSharedCounter(), this);
        }
    }

    public MultiProcessCoordinator(o22 o22Var, File file) {
        o22Var.getClass();
        file.getClass();
        this.context = o22Var;
        this.file = file;
        this.updateNotifications = MulticastFileObserver.Companion.observe(file);
        this.LOCK_SUFFIX = ".lock";
        this.VERSION_SUFFIX = ".version";
        this.LOCK_ERROR_MESSAGE = "fcntl failed: EAGAIN";
        this.inMemoryMutex = new ch5();
        this.lockFile$delegate = new fh8(new MultiProcessCoordinator$lockFile$2(this));
        this.lazySharedCounter = new fh8(new MultiProcessCoordinator$lazySharedCounter$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createIfNotExists(File file) throws IOException {
        createParentDirectories(file);
        if (file.exists()) {
            return;
        }
        file.createNewFile();
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

    /* JADX INFO: Access modifiers changed from: private */
    public final File fileWithSuffix(String str) {
        return new File(this.file.getAbsolutePath() + str);
    }

    private final File getLockFile() {
        return (File) this.lockFile$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedCounter getSharedCounter() {
        return this.lazySharedCounter.getValue();
    }

    private final <T> Object withLazyCounter(bm3<? super SharedCounter, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return this.lazySharedCounter.isInitialized() ? bm3Var.invoke(getSharedCounter(), e02Var) : av0.d(this.context, new AnonymousClass2(bm3Var, this, null), e02Var);
    }

    public final File getFile() {
        return this.file;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public hd3<j59> getUpdateNotifications() {
        return this.updateNotifications;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object getVersion(e02<? super Integer> e02Var) {
        return this.lazySharedCounter.isInitialized() ? new Integer(getSharedCounter().getValue()) : av0.d(this.context, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), e02Var);
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object incrementAndGetVersion(e02<? super Integer> e02Var) {
        return this.lazySharedCounter.isInitialized() ? new Integer(getSharedCounter().incrementAndGetValue()) : av0.d(this.context, new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this, null), e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b7 A[Catch: all -> 0x00bb, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00bb, blocks: (B:41:0x00b7, B:55:0x00d5, B:56:0x00d8), top: B:72:0x0022, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5 A[Catch: all -> 0x00bb, TRY_ENTER, TryCatch #4 {all -> 0x00bb, blocks: (B:41:0x00b7, B:55:0x00d5, B:56:0x00d8), top: B:72:0x0022, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [yg5] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [yg5] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [nl3] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v23, types: [yg5] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.io.Closeable, java.lang.Object, nl3<? super e02<? super T>, ? extends java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    @Override // androidx.datastore.core.InterProcessCoordinator
    public <T> Object lock(nl3<? super e02<? super T>, ? extends Object> nl3Var, e02<? super T> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        yg5 yg5Var;
        ?? r9;
        FileOutputStream fileOutputStream;
        Throwable th;
        ?? r10;
        ?? r8;
        ?? r2;
        java.io.Closeable closeable;
        FileLock fileLock;
        FileLock fileLock2;
        Object objInvoke;
        ?? r0;
        ?? r11;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        ?? r12 = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            try {
                try {
                    if (i2 == 0) {
                        r57.b(r12);
                        yg5Var = this.inMemoryMutex;
                        anonymousClass1.L$0 = this;
                        anonymousClass1.L$1 = nl3Var;
                        anonymousClass1.L$2 = yg5Var;
                        anonymousClass1.label = 1;
                        if (yg5Var.lock(null, anonymousClass1) != a32Var) {
                        }
                        r9 = nl3Var;
                        r12 = yg5Var;
                        return a32Var;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                ah.f("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            fileLock = (FileLock) anonymousClass1.L$2;
                            closeable = (java.io.Closeable) anonymousClass1.L$1;
                            yg5 yg5Var2 = (yg5) anonymousClass1.L$0;
                            try {
                                r57.b(r12);
                                r0 = yg5Var2;
                                r11 = r12;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                try {
                                    m96.c(closeable, null);
                                    r0.unlock(null);
                                    return r11;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r12 = r0;
                                    r12.unlock(null);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        }
                        closeable = (java.io.Closeable) anonymousClass1.L$2;
                        r8 = (yg5) anonymousClass1.L$1;
                        nl3 nl3Var2 = (nl3) anonymousClass1.L$0;
                        try {
                            r57.b(r12);
                            r2 = nl3Var2;
                            r8 = r8;
                            r10 = r12;
                            fileLock2 = (FileLock) r10;
                            try {
                                anonymousClass1.L$0 = r8;
                                anonymousClass1.L$1 = closeable;
                                anonymousClass1.L$2 = fileLock2;
                                anonymousClass1.label = 3;
                                objInvoke = r2.invoke(anonymousClass1);
                                if (objInvoke != a32Var) {
                                    r0 = r8;
                                    fileLock = fileLock2;
                                    r11 = objInvoke;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    m96.c(closeable, null);
                                    r0.unlock(null);
                                    return r11;
                                }
                                r9 = nl3Var;
                                r12 = yg5Var;
                                return a32Var;
                            } catch (Throwable th4) {
                                fileLock = fileLock2;
                                th = th4;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            fileLock = null;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    }
                    yg5 yg5Var3 = (yg5) anonymousClass1.L$2;
                    boolean z = (nl3<? super e02<? super T>, ? extends Object>) ((nl3) anonymousClass1.L$1);
                    MultiProcessCoordinator multiProcessCoordinator = (MultiProcessCoordinator) anonymousClass1.L$0;
                    r57.b(r12);
                    r12 = yg5Var3;
                    this = multiProcessCoordinator;
                    r9 = z;
                    Companion companion = Companion;
                    anonymousClass1.L$0 = r9;
                    anonymousClass1.L$1 = r12;
                    anonymousClass1.L$2 = fileOutputStream;
                    anonymousClass1.label = 2;
                    Object exclusiveFileLockWithRetryIfDeadlock = companion.getExclusiveFileLockWithRetryIfDeadlock(fileOutputStream, anonymousClass1);
                    if (exclusiveFileLockWithRetryIfDeadlock != a32Var) {
                        ?? r7 = r12;
                        r10 = exclusiveFileLockWithRetryIfDeadlock;
                        r8 = r7;
                        r2 = r9;
                        closeable = fileOutputStream;
                        fileLock2 = (FileLock) r10;
                        anonymousClass1.L$0 = r8;
                        anonymousClass1.L$1 = closeable;
                        anonymousClass1.L$2 = fileLock2;
                        anonymousClass1.label = 3;
                        objInvoke = r2.invoke(anonymousClass1);
                        if (objInvoke != a32Var) {
                            r0 = r8;
                            fileLock = fileLock2;
                            r11 = objInvoke;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            m96.c(closeable, null);
                            r0.unlock(null);
                            return r11;
                        }
                    }
                    r9 = nl3Var;
                    r12 = yg5Var;
                    return a32Var;
                } catch (Throwable th6) {
                    th = th6;
                    fileLock = null;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
                r9 = nl3Var;
                r12 = yg5Var;
                fileOutputStream = new FileOutputStream(this.getLockFile());
            } catch (Throwable th7) {
                th = th7;
                r12.unlock(null);
                throw th;
            }
        } catch (Throwable th8) {
            r12 = anonymousClass1;
            try {
                throw th8;
            } catch (Throwable th9) {
                m96.c(nl3Var, th8);
                throw th9;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0075  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e0 A[Catch: all -> 0x00e4, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x00e4, blocks: (B:61:0x00e0, B:75:0x00fb, B:76:0x00fe), top: B:96:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:75:0x00fb A[Catch: all -> 0x00e4, TRY_ENTER, TryCatch #5 {all -> 0x00e4, blocks: (B:61:0x00e0, B:75:0x00fb, B:76:0x00fe), top: B:96:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v10, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v14, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v2, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.datastore.core.MultiProcessCoordinator$tryLock$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [yg5] */
    /* JADX WARN: Type inference failed for: r4v0, types: [a32, java.io.Closeable, java.lang.Object] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    public <T> Object tryLock(bm3<? super Boolean, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) throws Throwable {
        ?? c06781;
        ?? r1;
        ?? r2;
        FileLock fileLock;
        String message;
        FileLock fileLockTryLock;
        java.io.Closeable closeable;
        ?? r3;
        ?? r4;
        if (e02Var instanceof C06781) {
            C06781 c06782 = (C06781) e02Var;
            int i = c06782.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06782.label = i - Integer.MIN_VALUE;
                c06781 = c06782;
            } else {
                c06781 = new C06781(e02Var);
            }
        } else {
            c06781 = new C06781(e02Var);
        }
        Object objInvoke = ((C06781) c06781).result;
        ?? r5 = a32.COROUTINE_SUSPENDED;
        int i2 = ((C06781) c06781).label;
        try {
            if (i2 == 0) {
                r57.b(objInvoke);
                yg5 yg5Var = this.inMemoryMutex;
                boolean zTryLock = yg5Var.tryLock(null);
                try {
                    if (zTryLock) {
                        FileInputStream fileInputStream = new FileInputStream(getLockFile());
                        try {
                            try {
                                fileLockTryLock = fileInputStream.getChannel().tryLock(0L, Long.MAX_VALUE, true);
                            } catch (IOException e) {
                                String message2 = e.getMessage();
                                if ((message2 == null || !ra8.C(message2, this.LOCK_ERROR_MESSAGE, false)) && ((message = e.getMessage()) == null || !ra8.C(message, DEADLOCK_ERROR_MESSAGE, false))) {
                                    throw e;
                                }
                                fileLockTryLock = null;
                            }
                            try {
                                Boolean boolValueOf = Boolean.valueOf(fileLockTryLock != null);
                                ((C06781) c06781).L$0 = yg5Var;
                                ((C06781) c06781).L$1 = fileInputStream;
                                ((C06781) c06781).L$2 = fileLockTryLock;
                                ((C06781) c06781).Z$0 = zTryLock;
                                ((C06781) c06781).label = 2;
                                objInvoke = bm3Var.invoke(boolValueOf, (Object) c06781);
                                if (objInvoke != r5) {
                                    fileLock = fileLockTryLock;
                                    c06781 = yg5Var;
                                    r1 = zTryLock;
                                    closeable = fileInputStream;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    m96.c(closeable, null);
                                    if (r1 != 0) {
                                        ((yg5) c06781).unlock(null);
                                    }
                                    return objInvoke;
                                }
                            } catch (Throwable th) {
                                th = th;
                                fileLock = fileLockTryLock;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileLock = null;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    } else {
                        Boolean bool = Boolean.FALSE;
                        ((C06781) c06781).L$0 = yg5Var;
                        ((C06781) c06781).Z$0 = zTryLock;
                        ((C06781) c06781).label = 1;
                        objInvoke = bm3Var.invoke(bool, (Object) c06781);
                        if (objInvoke != r5) {
                            r3 = yg5Var;
                            r4 = zTryLock;
                            if (r4 != 0) {
                                r3.unlock(null);
                            }
                            return objInvoke;
                        }
                    }
                    return r5;
                } catch (Throwable th3) {
                    th = th3;
                    r2 = yg5Var;
                    r1 = zTryLock;
                }
            } else if (i2 == 1) {
                r1 = ((C06781) c06781).Z$0;
                r2 = (yg5) ((C06781) c06781).L$0;
                try {
                    r57.b(objInvoke);
                    r4 = r1;
                    r3 = r2;
                    if (r4 != 0) {
                        r3.unlock(null);
                    }
                    return objInvoke;
                } catch (Throwable th4) {
                    th = th4;
                }
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                boolean z = ((C06781) c06781).Z$0;
                fileLock = (FileLock) ((C06781) c06781).L$2;
                closeable = (java.io.Closeable) ((C06781) c06781).L$1;
                yg5 yg5Var2 = (yg5) ((C06781) c06781).L$0;
                try {
                    r57.b(objInvoke);
                    r1 = z;
                    c06781 = yg5Var2;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    try {
                        m96.c(closeable, null);
                        if (r1 != 0) {
                            ((yg5) c06781).unlock(null);
                        }
                        return objInvoke;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                try {
                    m96.c(r5, th7);
                    throw th8;
                } catch (Throwable th9) {
                    th = th9;
                    r1 = this;
                }
            }
        }
        r2 = c06781;
        if (r1 != 0) {
            r2.unlock(null);
        }
        throw th;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't wrap try/catch for region: R(3:31|17|18) */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        
            r1 = r0.getMessage();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        
            if (r1 == null) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x006b, code lost:
        
            r11.L$0 = r12;
            r11.J$0 = r3;
            r11.label = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
        
            if (defpackage.yk2.b(r3, r11) == r13) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0077, code lost:
        
            return r13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x007c, code lost:
        
            throw r0;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0075 -> B:27:0x0078). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object getExclusiveFileLockWithRetryIfDeadlock(java.io.FileOutputStream r12, defpackage.e02<? super java.nio.channels.FileLock> r13) throws java.io.IOException {
            /*
                r11 = this;
                boolean r0 = r13 instanceof androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1
                if (r0 == 0) goto L13
                r0 = r13
                androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 r0 = (androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 r0 = new androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1
                r0.<init>(r11, r13)
            L18:
                java.lang.Object r11 = r0.result
                a32 r13 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r0.label
                r2 = 1
                if (r1 == 0) goto L35
                if (r1 != r2) goto L2e
                long r3 = r0.J$0
                java.lang.Object r12 = r0.L$0
                java.io.FileOutputStream r12 = (java.io.FileOutputStream) r12
                defpackage.r57.b(r11)
                r11 = r0
                goto L78
            L2e:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r11)
                r11 = 0
                return r11
            L35:
                defpackage.r57.b(r11)
                long r3 = androidx.datastore.core.MultiProcessCoordinator.access$getINITIAL_WAIT_MILLIS$cp()
                r11 = r0
            L3d:
                long r0 = androidx.datastore.core.MultiProcessCoordinator.access$getMAX_WAIT_MILLIS$cp()
                int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                if (r0 > 0) goto L7d
                java.nio.channels.FileChannel r5 = r12.getChannel()     // Catch: java.io.IOException -> L59
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r10 = 0
                r6 = 0
                java.nio.channels.FileLock r0 = r5.lock(r6, r8, r10)     // Catch: java.io.IOException -> L59
                r0.getClass()     // Catch: java.io.IOException -> L59
                return r0
            L59:
                r0 = move-exception
                java.lang.String r1 = r0.getMessage()
                if (r1 == 0) goto L7c
                java.lang.String r5 = androidx.datastore.core.MultiProcessCoordinator.access$getDEADLOCK_ERROR_MESSAGE$cp()
                r6 = 0
                boolean r1 = defpackage.ta8.D(r1, r5, r6)
                if (r1 != r2) goto L7c
                r11.L$0 = r12
                r11.J$0 = r3
                r11.label = r2
                java.lang.Object r0 = defpackage.yk2.b(r3, r11)
                if (r0 != r13) goto L78
                return r13
            L78:
                r0 = 2
                long r3 = r3 * r0
                goto L3d
            L7c:
                throw r0
            L7d:
                java.nio.channels.FileChannel r5 = r12.getChannel()
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r10 = 0
                r6 = 0
                java.nio.channels.FileLock r11 = r5.lock(r6, r8, r10)
                r11.getClass()
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MultiProcessCoordinator.Companion.getExclusiveFileLockWithRetryIfDeadlock(java.io.FileOutputStream, e02):java.lang.Object");
        }

        private Companion() {
        }
    }
}
