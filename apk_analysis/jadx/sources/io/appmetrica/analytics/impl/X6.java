package io.appmetrica.analytics.impl;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class X6 implements W6 {
    private final Mg a;

    public X6(Mg mg) {
        this.a = mg;
    }

    @Override // io.appmetrica.analytics.impl.W6
    public File a(Context context, String str) {
        return new File(context.getNoBackupFilesDir(), this.a.a(str));
    }
}
