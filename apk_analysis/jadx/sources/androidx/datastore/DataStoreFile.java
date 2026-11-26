package androidx.datastore;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreFile {
    public static final File dataStoreFile(Context context, String str) {
        context.getClass();
        str.getClass();
        return new File(context.getApplicationContext().getFilesDir(), "datastore/".concat(str));
    }
}
