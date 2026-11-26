package androidx.camera.core.internal.utils;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class VideoUtil {
    private static final String TAG = "VideoUtil";

    private VideoUtil() {
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:? A[SYNTHETIC] */
    public static String getAbsolutePathFromUri(ContentResolver contentResolver, Uri uri) throws Throwable {
        Throwable th;
        Uri uri2;
        RuntimeException runtimeException;
        Cursor cursorQuery = null;
        try {
            try {
                uri2 = uri;
                try {
                    cursorQuery = contentResolver.query(uri2, new String[]{"_data"}, null, null, null);
                    Cursor cursor = (Cursor) Preconditions.checkNotNull(cursorQuery);
                    try {
                        int columnIndexOrThrow = cursor.getColumnIndexOrThrow("_data");
                        cursor.moveToFirst();
                        String string = cursor.getString(columnIndexOrThrow);
                        cursor.close();
                        return string;
                    } catch (RuntimeException e) {
                        runtimeException = e;
                        cursorQuery = cursor;
                        try {
                            Logger.e(TAG, "Failed in getting absolute path for Uri " + uri2.toString() + " with Exception " + runtimeException.toString());
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return "";
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursorQuery != null) {
                                throw th;
                            }
                            cursorQuery.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursorQuery = cursor;
                        if (cursorQuery != null) {
                            throw th;
                        }
                        cursorQuery.close();
                        throw th;
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                    runtimeException = e;
                    Logger.e(TAG, "Failed in getting absolute path for Uri " + uri2.toString() + " with Exception " + runtimeException.toString());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return "";
                }
            } catch (RuntimeException e3) {
                e = e3;
                uri2 = uri;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
