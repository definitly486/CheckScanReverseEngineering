package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.z6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1425z6 {
    public final C1149oa a;
    public final C1197q6 b;
    public final Context c;
    public final C1123na d;

    public C1425z6(Context context) {
        this(context, new C1149oa(), new C1197q6(), C1123na.a(context));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void a(Ch ch) {
        boolean zMkdir;
        String str;
        J9 j9B;
        PrintWriter printWriter;
        C1123na c1123na;
        File crashesDirectory = FileUtils.getCrashesDirectory(this.c);
        this.b.getClass();
        if (crashesDirectory == null) {
            return;
        }
        try {
            try {
                if (crashesDirectory.exists()) {
                    if (!crashesDirectory.isDirectory()) {
                        if (!crashesDirectory.delete()) {
                            return;
                        } else {
                            zMkdir = crashesDirectory.mkdir();
                        }
                    }
                    Pf pf = ch.e.a;
                    str = pf.a.getAsInteger("PROCESS_CFG_PROCESS_ID") + "-" + pf.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
                    j9B = this.d.b(str);
                    j9B.a.lock();
                    j9B.b.a();
                    this.a.getClass();
                    printWriter = new PrintWriter(new BufferedOutputStream(new FileOutputStream(new File(crashesDirectory, str))));
                    printWriter.write(new C1380xb(ch.a, ch.e, ch.d).l());
                    xo.a((Closeable) printWriter);
                    j9B.c();
                    c1123na = this.d;
                    synchronized (c1123na) {
                        c1123na.b.remove(str);
                    }
                    return;
                }
                zMkdir = crashesDirectory.mkdir();
                printWriter.write(new C1380xb(ch.a, ch.e, ch.d).l());
                xo.a((Closeable) printWriter);
                j9B.c();
                c1123na = this.d;
                synchronized (c1123na) {
                    c1123na.b.remove(str);
                    return;
                }
            } catch (Throwable unused) {
                xo.a((Closeable) printWriter);
                j9B.c();
                this.d.a(str);
                return;
            }
            j9B.a.lock();
            j9B.b.a();
            this.a.getClass();
            printWriter = new PrintWriter(new BufferedOutputStream(new FileOutputStream(new File(crashesDirectory, str))));
        } catch (Throwable unused2) {
            printWriter = null;
        }
        if (!zMkdir) {
            return;
        }
        Pf pf2 = ch.e.a;
        str = pf2.a.getAsInteger("PROCESS_CFG_PROCESS_ID") + "-" + pf2.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
        j9B = this.d.b(str);
    }

    public C1425z6(Context context, C1149oa c1149oa, C1197q6 c1197q6, C1123na c1123na) {
        this.c = context;
        this.a = c1149oa;
        this.b = c1197q6;
        this.d = c1123na;
    }
}
