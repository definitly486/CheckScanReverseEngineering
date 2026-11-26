package com.google.firebase.inappmessaging.internal;

import android.app.Application;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.o;
import defpackage.a75;
import defpackage.dq1;
import defpackage.m75;
import defpackage.qp1;
import defpackage.x36;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public class ProtoStorageClient {
    private final Application application;
    private final String fileName;

    public ProtoStorageClient(Application application, String str) {
        this.application = application;
        this.fileName = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.google.protobuf.a lambda$read$1(x36 x36Var) {
        synchronized (this) {
            try {
                try {
                    FileInputStream fileInputStreamOpenFileInput = this.application.openFileInput(this.fileName);
                    try {
                        o oVarB = x36Var.b(fileInputStreamOpenFileInput);
                        if (fileInputStreamOpenFileInput != null) {
                            fileInputStreamOpenFileInput.close();
                        }
                        return oVarB;
                    } catch (Throwable th) {
                        if (fileInputStreamOpenFileInput != null) {
                            try {
                                fileInputStreamOpenFileInput.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            } catch (InvalidProtocolBufferException | FileNotFoundException e) {
                Logging.logi("Recoverable exception while reading cache: " + e.getMessage());
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$write$0(com.google.protobuf.a aVar) {
        synchronized (this) {
            FileOutputStream fileOutputStreamOpenFileOutput = this.application.openFileOutput(this.fileName, 0);
            try {
                fileOutputStreamOpenFileOutput.write(aVar.toByteArray());
                fileOutputStreamOpenFileOutput.close();
            } catch (Throwable th) {
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        return aVar;
    }

    public <T extends com.google.protobuf.a> a75<T> read(final x36<T> x36Var) {
        return new m75(new Callable() { // from class: ps6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.b.lambda$read$1(x36Var);
            }
        });
    }

    public qp1 write(final com.google.protobuf.a aVar) {
        return new dq1(new Callable() { // from class: os6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.b.lambda$write$0(aVar);
            }
        });
    }
}
