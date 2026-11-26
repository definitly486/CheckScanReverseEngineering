package io.appmetrica.analytics.impl;

import android.os.FileObserver;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class FileObserverC1171p6 extends FileObserver {
    public final Consumer a;
    public final File b;
    public final C1149oa c;

    public FileObserverC1171p6(File file, C1222r6 c1222r6, C1149oa c1149oa) {
        super(file.getAbsolutePath(), 8);
        this.a = c1222r6;
        this.b = file;
        this.c = c1149oa;
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        if (i != 8 || TextUtils.isEmpty(str)) {
            return;
        }
        Consumer consumer = this.a;
        C1149oa c1149oa = this.c;
        File file = this.b;
        c1149oa.getClass();
        consumer.consume(new File(file, str));
    }
}
