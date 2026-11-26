package kotlin.io;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class FileSystemException extends IOException {
    public FileSystemException(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        sb.append(": ".concat(str));
        super(sb.toString());
    }
}
