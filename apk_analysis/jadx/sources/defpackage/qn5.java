package defpackage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;

/* JADX INFO: loaded from: classes5.dex */
public final class qn5 extends ke4 {
    public static Long U(FileTime fileTime) {
        long millis = fileTime.toMillis();
        Long lValueOf = Long.valueOf(millis);
        if (millis != 0) {
            return lValueOf;
        }
        return null;
    }

    @Override // defpackage.ke4, defpackage.w93
    public final void b(j46 j46Var, j46 j46Var2) throws IOException {
        j46Var2.getClass();
        try {
            Path path = Paths.get(j46Var.b.x(), new String[0]);
            path.getClass();
            Path path2 = Paths.get(j46Var2.b.x(), new String[0]);
            path2.getClass();
            Files.move(path, path2, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            ki0.d("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // defpackage.ke4
    public final String toString() {
        return "NioSystemFileSystem";
    }

    @Override // defpackage.ke4, defpackage.w93
    public final s93 v(j46 j46Var) {
        j46 j46VarA;
        j46Var.getClass();
        Path path = Paths.get(j46Var.b.x(), new String[0]);
        path.getClass();
        try {
            BasicFileAttributes attributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            Path symbolicLink = attributes.isSymbolicLink() ? Files.readSymbolicLink(path) : null;
            boolean zIsRegularFile = attributes.isRegularFile();
            boolean zIsDirectory = attributes.isDirectory();
            if (symbolicLink != null) {
                String str = j46.c;
                j46VarA = j46.a.a(symbolicLink.toString(), false);
            } else {
                j46VarA = null;
            }
            Long lValueOf = Long.valueOf(attributes.size());
            FileTime fileTimeCreationTime = attributes.creationTime();
            Long lU = fileTimeCreationTime != null ? U(fileTimeCreationTime) : null;
            FileTime fileTimeLastModifiedTime = attributes.lastModifiedTime();
            Long lU2 = fileTimeLastModifiedTime != null ? U(fileTimeLastModifiedTime) : null;
            FileTime fileTimeLastAccessTime = attributes.lastAccessTime();
            return new s93(zIsRegularFile, zIsDirectory, j46VarA, lValueOf, lU, lU2, fileTimeLastAccessTime != null ? U(fileTimeLastAccessTime) : null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }
}
