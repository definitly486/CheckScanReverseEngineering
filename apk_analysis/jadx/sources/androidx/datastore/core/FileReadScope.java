package androidx.datastore.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.m96;
import defpackage.r57;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public class FileReadScope<T> implements ReadScope<T> {
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    private final File file;
    private final Serializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.FileReadScope$readData$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.FileReadScope", f = "FileStorage.kt", l = {169, 178}, m = "readData$suspendImpl")
    public static final class AnonymousClass1<T> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FileReadScope<T> fileReadScope, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = fileReadScope;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    public FileReadScope(File file, Serializer<T> serializer) {
        file.getClass();
        serializer.getClass();
        this.file = file;
        this.serializer = serializer;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0080  */
    /* JADX WARN: Code duplicated, block: B:45:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.datastore.core.FileReadScope] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v21 */
    public static <T> Object readData$suspendImpl(FileReadScope<T> fileReadScope, e02<? super T> e02Var) {
        AnonymousClass1 anonymousClass1;
        FileInputStream fileInputStream;
        Throwable th;
        java.io.Closeable closeable;
        Object from;
        java.io.Closeable closeable2;
        Throwable th2;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(fileReadScope, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(fileReadScope, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        ?? r2 = anonymousClass1.label;
        try {
            if (r2 != 0) {
                if (r2 == 1) {
                    closeable2 = (java.io.Closeable) anonymousClass1.L$1;
                    r2 = (FileReadScope) anonymousClass1.L$0;
                    try {
                        r57.b(obj);
                        m96.c(closeable2, null);
                        return obj;
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            throw th2;
                        } catch (Throwable th4) {
                            m96.c(closeable2, th2);
                            throw th4;
                        }
                    }
                }
                if (r2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                closeable = (java.io.Closeable) anonymousClass1.L$0;
                try {
                    r57.b(obj);
                    m96.c(closeable, null);
                    return obj;
                } catch (Throwable th5) {
                    th = th5;
                    try {
                        throw th;
                    } catch (Throwable th6) {
                        m96.c(closeable, th);
                        throw th6;
                    }
                }
            }
            r57.b(obj);
            fileReadScope.checkNotClosed();
            try {
                FileInputStream fileInputStream2 = new FileInputStream(((FileReadScope) fileReadScope).file);
                try {
                    Serializer<T> serializer = ((FileReadScope) fileReadScope).serializer;
                    anonymousClass1.L$0 = fileReadScope;
                    anonymousClass1.L$1 = fileInputStream2;
                    anonymousClass1.label = 1;
                    Object from2 = serializer.readFrom(fileInputStream2, anonymousClass1);
                    if (from2 != a32Var) {
                        closeable2 = fileInputStream2;
                        obj = from2;
                        m96.c(closeable2, null);
                        return obj;
                    }
                    return a32Var;
                } catch (Throwable th7) {
                    r2 = fileReadScope;
                    closeable2 = fileInputStream2;
                    th2 = th7;
                    throw th2;
                }
            } catch (FileNotFoundException unused) {
                if (((FileReadScope) fileReadScope).file.exists()) {
                    return ((FileReadScope) fileReadScope).serializer.getDefaultValue();
                }
                fileInputStream = new FileInputStream(((FileReadScope) fileReadScope).file);
                try {
                    Serializer<T> serializer2 = ((FileReadScope) fileReadScope).serializer;
                    anonymousClass1.L$0 = fileInputStream;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                    from = serializer2.readFrom(fileInputStream, anonymousClass1);
                    if (from != a32Var) {
                        obj = from;
                        closeable = fileInputStream;
                        m96.c(closeable, null);
                        return obj;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    closeable = fileInputStream;
                    throw th;
                }
            }
        } catch (FileNotFoundException unused2) {
            fileReadScope = (FileReadScope<T>) r2;
            if (((FileReadScope) fileReadScope).file.exists()) {
                return ((FileReadScope) fileReadScope).serializer.getDefaultValue();
            }
            fileInputStream = new FileInputStream(((FileReadScope) fileReadScope).file);
            Serializer<T> serializer3 = ((FileReadScope) fileReadScope).serializer;
            anonymousClass1.L$0 = fileInputStream;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            from = serializer3.readFrom(fileInputStream, anonymousClass1);
            if (from != a32Var) {
                obj = from;
                closeable = fileInputStream;
                m96.c(closeable, null);
                return obj;
            }
            return a32Var;
        }
    }

    public final void checkNotClosed() {
        if (this.closed.get()) {
            ah.f("This scope has already been closed.");
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    public final File getFile() {
        return this.file;
    }

    public final Serializer<T> getSerializer() {
        return this.serializer;
    }

    @Override // androidx.datastore.core.ReadScope
    public Object readData(e02<? super T> e02Var) {
        return readData$suspendImpl(this, e02Var);
    }
}
