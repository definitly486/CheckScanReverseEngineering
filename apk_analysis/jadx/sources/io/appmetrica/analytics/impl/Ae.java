package io.appmetrica.analytics.impl;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class Ae implements W6 {
    public final File a;
    public final Mg b;

    public Ae(File file, Mg mg) {
        this.a = file;
        this.b = mg;
    }

    @Override // io.appmetrica.analytics.impl.W6
    public final File a(Context context, String str) {
        return new File(this.a, this.b.a(str));
    }
}
