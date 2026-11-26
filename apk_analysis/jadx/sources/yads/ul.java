package yads;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class ul {
    public final File a;
    public final File b;

    public ul(File file) {
        this.a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    public final FileInputStream a() {
        if (this.b.exists()) {
            this.a.delete();
            this.b.renameTo(this.a);
        }
        return new FileInputStream(this.a);
    }

    public final tl b() throws IOException {
        if (this.a.exists()) {
            boolean zExists = this.b.exists();
            File file = this.a;
            if (zExists) {
                file.delete();
            } else if (!file.renameTo(this.b)) {
                sv3.d("AtomicFile", "Couldn't rename file " + this.a + " to backup file " + this.b);
            }
        }
        try {
            return new tl(this.a);
        } catch (FileNotFoundException e) {
            File parentFile = this.a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                defpackage.c9.i("Couldn't create ", this.a, e);
                return null;
            }
            try {
                return new tl(this.a);
            } catch (FileNotFoundException e2) {
                defpackage.c9.i("Couldn't create ", this.a, e2);
                return null;
            }
        }
    }
}
