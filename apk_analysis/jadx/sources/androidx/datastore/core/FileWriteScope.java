package androidx.datastore.core;

import androidx.compose.runtime.ComposerKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.m96;
import defpackage.r57;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class FileWriteScope<T> extends FileReadScope<T> implements WriteScope<T> {

    /* JADX INFO: renamed from: androidx.datastore.core.FileWriteScope$writeData$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.FileWriteScope", f = "FileStorage.kt", l = {ComposerKt.providerKey}, m = "writeData")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileWriteScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FileWriteScope<T> fileWriteScope, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = fileWriteScope;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeData(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope(File file, Serializer<T> serializer) {
        super(file, serializer);
        file.getClass();
        serializer.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.WriteScope
    public Object writeData(T t, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        java.io.Closeable closeable;
        FileOutputStream fileOutputStream;
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
            FileOutputStream fileOutputStream2 = new FileOutputStream(getFile());
            try {
                Serializer<T> serializer = getSerializer();
                UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(fileOutputStream2);
                anonymousClass1.L$0 = fileOutputStream2;
                anonymousClass1.L$1 = fileOutputStream2;
                anonymousClass1.label = 1;
                if (serializer.writeTo(t, uncloseableOutputStream, anonymousClass1) == a32Var) {
                    return a32Var;
                }
                fileOutputStream = fileOutputStream2;
                closeable = fileOutputStream;
            } catch (Throwable th) {
                th = th;
                closeable = fileOutputStream2;
                throw th;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            fileOutputStream = (FileOutputStream) anonymousClass1.L$1;
            closeable = (java.io.Closeable) anonymousClass1.L$0;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    m96.c(closeable, th);
                    throw th3;
                }
            }
        }
        fileOutputStream.getFD().sync();
        j59 j59Var = j59.a;
        m96.c(closeable, null);
        return j59.a;
    }
}
