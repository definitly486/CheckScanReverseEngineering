package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ke4 extends w93 {
    @Override // defpackage.w93
    public final m93 E(j46 j46Var) {
        return new je4(true, new RandomAccessFile(j46Var.toFile(), "rw"));
    }

    @Override // defpackage.w93
    public final s18 P(j46 j46Var, boolean z) throws IOException {
        j46Var.getClass();
        if (!z || !n(j46Var)) {
            return new t06(new FileOutputStream(j46Var.toFile(), false), new wv8());
        }
        throw new IOException(j46Var + " already exists.");
    }

    @Override // defpackage.w93
    public final v48 Q(j46 j46Var) {
        j46Var.getClass();
        return new t54(new FileInputStream(j46Var.toFile()), wv8.d);
    }

    @Override // defpackage.w93
    public final s18 a(j46 j46Var) {
        return new t06(new FileOutputStream(j46Var.toFile(), true), new wv8());
    }

    @Override // defpackage.w93
    public void b(j46 j46Var, j46 j46Var2) throws IOException {
        j46Var2.getClass();
        if (j46Var.toFile().renameTo(j46Var2.toFile())) {
            return;
        }
        throw new IOException("failed to move " + j46Var + " to " + j46Var2);
    }

    @Override // defpackage.w93
    public final void f(j46 j46Var) throws IOException {
        j46Var.getClass();
        if (j46Var.toFile().mkdir()) {
            return;
        }
        s93 s93VarV = v(j46Var);
        if (s93VarV == null || !s93VarV.b) {
            av.c(j46Var, "failed to create directory: ");
        }
    }

    @Override // defpackage.w93
    public final void g(j46 j46Var) throws IOException {
        j46Var.getClass();
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = j46Var.toFile();
        if (file.delete() || !file.exists()) {
            return;
        }
        av.c(j46Var, "failed to delete ");
    }

    @Override // defpackage.w93
    public final List<j46> o(j46 j46Var) throws IOException {
        j46Var.getClass();
        File file = j46Var.toFile();
        String[] list = file.list();
        if (list == null) {
            if (file.exists()) {
                av.c(j46Var, "failed to list ");
                return null;
            }
            v93.d(j46Var, "no such file: ");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            str.getClass();
            arrayList.add(j46Var.f(str));
        }
        nn1.I(arrayList);
        return arrayList;
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }

    @Override // defpackage.w93
    public s93 v(j46 j46Var) {
        j46Var.getClass();
        File file = j46Var.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (!zIsFile && !zIsDirectory && jLastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new s93(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null);
    }

    @Override // defpackage.w93
    public final m93 y(j46 j46Var) {
        j46Var.getClass();
        return new je4(false, new RandomAccessFile(j46Var.toFile(), "r"));
    }
}
