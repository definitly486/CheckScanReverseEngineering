package defpackage;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class ca3 {
    public static void a(File file) throws IOException {
        file.getClass();
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        av.c(file, "Unable to create parent directories of ");
    }
}
