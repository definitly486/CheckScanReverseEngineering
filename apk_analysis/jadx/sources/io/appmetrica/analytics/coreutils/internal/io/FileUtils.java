package io.appmetrica.analytics.coreutils.internal.io;

import android.content.Context;
import defpackage.da3;
import defpackage.j59;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class FileUtils {
    public static final FileUtils INSTANCE = new FileUtils();
    public static final String SDK_FILES_PREFIX = "appmetrica_analytics";
    public static final String SDK_STORAGE_RELATIVE_PATH = "/appmetrica/analytics";
    private static volatile File a;

    private FileUtils() {
    }

    public static final boolean copyToNullable(File file, File file2) {
        if (file != null && file2 != null && file.exists()) {
            try {
                da3.d(file, file2);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static final File getAppDataDir(Context context) {
        if (AndroidUtils.isApiAchieved(24)) {
            return AppDataDirProviderForN.INSTANCE.dataDir(context);
        }
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir.getParentFile();
        }
        return null;
    }

    public static final File getAppStorageDirectory(Context context) {
        return context.getNoBackupFilesDir();
    }

    public static final File getCrashesDirectory(Context context) {
        return getFileFromSdkStorage(context, "crashes");
    }

    public static final File getFileFromAppStorage(Context context, String str) {
        File appStorageDirectory = getAppStorageDirectory(context);
        if (appStorageDirectory != null) {
            return new File(appStorageDirectory, str);
        }
        return null;
    }

    public static final File getFileFromPath(String str) {
        return new File(str);
    }

    public static final File getFileFromSdkStorage(Context context, String str) {
        File fileSdkStorage = sdkStorage(context);
        if (fileSdkStorage != null) {
            return new File(fileSdkStorage, str);
        }
        return null;
    }

    public static final File getNativeCrashDirectory(Context context) {
        return getFileFromSdkStorage(context, "native_crashes");
    }

    public static final boolean move(File file, File file2) {
        FileUtils fileUtils = INSTANCE;
        return fileUtils.moveByRename(file, file2) || fileUtils.moveByCopy(file, file2);
    }

    public static final void resetSdkStorage() {
        synchronized (INSTANCE) {
            a = null;
            j59 j59Var = j59.a;
        }
    }

    public static final File sdkStorage(Context context) {
        File file;
        if (a == null) {
            synchronized (INSTANCE) {
                try {
                    File appStorageDirectory = getAppStorageDirectory(context);
                    if (appStorageDirectory == null) {
                        file = null;
                    } else {
                        File file2 = new File(appStorageDirectory, SDK_STORAGE_RELATIVE_PATH);
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        file = file2;
                    }
                    a = file;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public final boolean moveByCopy(File file, File file2) {
        if (file == null || file2 == null || !file.exists()) {
            return false;
        }
        try {
            da3.d(file, file2);
            file.delete();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean moveByRename(File file, File file2) {
        if (file2 == null) {
            return false;
        }
        Boolean boolValueOf = file != null ? Boolean.valueOf(file.renameTo(file2)) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }
}
