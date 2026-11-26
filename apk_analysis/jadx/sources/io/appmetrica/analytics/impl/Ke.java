package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.ra8;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public final class Ke {
    public final Context a;
    public final Ao b;
    public final Bo c;

    public Ke(Context context) {
        this(context, new Ao(), new Bo());
    }

    public final String a(String str) {
        try {
            this.c.getClass();
            if (!Bo.a(str)) {
                this.b.getClass();
                str = ra8.y(UUID.randomUUID().toString(), "-", "").toLowerCase(Locale.US);
            }
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.a, "uuid.dat");
            if (fileFromSdkStorage != null && str != null) {
                Xa.a(str, new FileOutputStream(fileFromSdkStorage));
            }
            return str;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Ke(Context context, Ao ao, Bo bo) {
        this.a = context;
        this.b = ao;
        this.c = bo;
    }

    public final void a() {
        File fileFromAppStorage;
        File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.a, "uuid.dat");
        if (fileFromSdkStorage == null || fileFromSdkStorage.exists() || (fileFromAppStorage = FileUtils.getFileFromAppStorage(this.a, "uuid.dat")) == null || !fileFromAppStorage.exists()) {
            return;
        }
        FileUtils.copyToNullable(fileFromAppStorage, fileFromSdkStorage);
    }
}
