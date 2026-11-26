package androidx.camera.video.internal.utils;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import androidx.camera.core.Logger;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class OutputUtil {
    private static final String TAG = "OutputUtil";

    private OutputUtil() {
    }

    public static boolean createParentFolder(File file) {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return false;
        }
        return parentFile.exists() ? parentFile.isDirectory() : parentFile.mkdirs();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.database.Cursor] */
    public static String getAbsolutePathFromUri(ContentResolver contentResolver, Uri uri, String str) {
        Throwable th;
        Uri uri2;
        RuntimeException runtimeException;
        Cursor cursorQuery;
        ?? r2 = 0;
        try {
            try {
                try {
                    uri2 = uri;
                    try {
                        cursorQuery = contentResolver.query(uri2, new String[]{str}, null, null, null);
                        if (cursorQuery == null) {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return null;
                        }
                        try {
                            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(str);
                            cursorQuery.moveToFirst();
                            String string = cursorQuery.getString(columnIndexOrThrow);
                            cursorQuery.close();
                            return string;
                        } catch (RuntimeException e) {
                            runtimeException = e;
                            Logger.e(TAG, "Failed in getting absolute path for Uri " + uri2.toString() + " with Exception " + runtimeException.toString());
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return null;
                        }
                    } catch (RuntimeException e2) {
                        e = e2;
                        runtimeException = e;
                        cursorQuery = null;
                        Logger.e(TAG, "Failed in getting absolute path for Uri " + uri2.toString() + " with Exception " + runtimeException.toString());
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (RuntimeException e3) {
                    e = e3;
                    uri2 = uri;
                }
            } catch (Throwable th2) {
                th = th2;
                if (r2 == 0) {
                    throw th;
                }
                r2.close();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            r2 = contentResolver;
        }
    }
}
