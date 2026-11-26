package io.appmetrica.analytics.coreutils.internal.io;

import defpackage.da3;
import defpackage.j59;
import defpackage.qn1;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor;
import io.appmetrica.analytics.coreutils.internal.buffering.DeferredBatchExecutor;
import io.appmetrica.analytics.coreutils.internal.buffering.LastValueTaskBuffer;
import io.appmetrica.analytics.coreutils.internal.io.BufferedFileWriter;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BufferedFileWriter {
    private final File a;
    private final Object b;
    private String c;
    private final DeferredBatchExecutor d;

    public BufferedFileWriter(IHandlerExecutor iHandlerExecutor, long j, File file) {
        this.a = file;
        String str = "[BufferedFileWriter-" + file.getName() + ']';
        this.b = new Object();
        this.d = new DeferredBatchExecutor(iHandlerExecutor, new LastValueTaskBuffer(), new BatchProcessor() { // from class: tu0
            @Override // io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor
            public final void processBatch(List list) {
                BufferedFileWriter.a(this.b, list);
            }
        }, j, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(BufferedFileWriter bufferedFileWriter, List list) {
        String str = (String) qn1.T(list);
        try {
            File parentFile = bufferedFileWriter.a.getParentFile();
            if (parentFile != null) {
                if (parentFile.exists()) {
                    parentFile = null;
                }
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
            }
            da3.f(bufferedFileWriter.a, str);
            synchronized (bufferedFileWriter.b) {
                bufferedFileWriter.c = null;
                j59 j59Var = j59.a;
            }
        } catch (Exception unused) {
        }
    }

    public final void flush() {
        this.d.flush();
    }

    public final void flushAsync() {
        this.d.flushAsync();
    }

    public final String readString() {
        String strE;
        synchronized (this.b) {
            strE = this.c;
            if (strE == null) {
                try {
                    strE = this.a.exists() ? da3.e(this.a) : null;
                } catch (Exception unused) {
                }
                if (strE != null) {
                    this.c = strE;
                }
            }
        }
        return strE;
    }

    public final void writeString(String str) {
        synchronized (this.b) {
            this.c = str;
            j59 j59Var = j59.a;
        }
        DeferredBatchExecutor.submit$default(this.d, str, false, 2, null);
    }
}
