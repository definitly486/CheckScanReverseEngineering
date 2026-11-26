package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1094m7 {
    public final W6 a;
    public final List b;
    public final boolean c;

    public C1094m7(W6 w6, ArrayList arrayList, boolean z) {
        this.a = w6;
        this.b = arrayList;
        this.c = z;
    }

    public final void a(Context context, String str, File file) {
        List list = this.b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File fileA = ((W6) it.next()).a(context, str);
            if (fileA.exists()) {
                try {
                    if (this.c) {
                        FileUtils.copyToNullable(fileA, file);
                    } else {
                        FileUtils.move(fileA, file);
                    }
                    String path = fileA.getPath();
                    String path2 = file.getPath();
                    for (String str2 : u96.i("-journal", "-shm", "-wal")) {
                        File file2 = new File(path + str2);
                        File file3 = new File(path2 + str2);
                        if (this.c) {
                            FileUtils.copyToNullable(file2, file3);
                        } else {
                            FileUtils.move(file2, file3);
                        }
                    }
                    return;
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
    }

    public final String a(Context context, InterfaceC1042k7 interfaceC1042k7) {
        File parentFile;
        try {
            File fileA = this.a.a(context, interfaceC1042k7.b());
            if (!fileA.exists() && (parentFile = fileA.getParentFile()) != null && (parentFile.exists() || parentFile.mkdirs())) {
                a(context, interfaceC1042k7.a(), fileA);
            }
            return fileA.getPath();
        } catch (Throwable unused) {
            return interfaceC1042k7.b();
        }
    }
}
