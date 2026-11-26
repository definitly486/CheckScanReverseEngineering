package defpackage;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class t93 implements e47<File> {
    public final File b;

    public t93(File file) {
        r96.c(file, "Argument must not be null");
        this.b = file;
    }

    @Override // defpackage.e47
    public final Class<File> a() {
        return this.b.getClass();
    }

    @Override // defpackage.e47
    public final File get() {
        return this.b;
    }

    @Override // defpackage.e47
    public final int getSize() {
        return 1;
    }

    @Override // defpackage.e47
    public final void recycle() {
    }
}
