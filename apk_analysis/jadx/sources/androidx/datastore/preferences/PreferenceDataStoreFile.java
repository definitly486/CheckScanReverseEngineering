package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreFile {
    public static final File preferencesDataStoreFile(Context context, String str) {
        context.getClass();
        str.getClass();
        return DataStoreFile.dataStoreFile(context, str.concat(".preferences_pb"));
    }
}
