package androidx.camera.video.internal;

import android.net.Uri;
import androidx.camera.core.Logger;
import androidx.camera.video.FileDescriptorOutputOptions;
import androidx.camera.video.FileOutputOptions;
import androidx.camera.video.MediaStoreOutputOptions;
import androidx.camera.video.OutputOptions;
import androidx.camera.video.internal.utils.StorageUtil;
import defpackage.jh2;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class OutputStorageImpl implements OutputStorage {
    private static final Companion Companion = new Companion(null);
    private static final String TAG = "OutputStorageImpl";
    private final OutputOptions outputOptions;

    public OutputStorageImpl(OutputOptions outputOptions) {
        outputOptions.getClass();
        this.outputOptions = outputOptions;
    }

    @Override // androidx.camera.video.internal.OutputStorage
    public long getAvailableBytes() {
        try {
            OutputOptions outputOptions = this.outputOptions;
            if (outputOptions instanceof FileOutputOptions) {
                File parentFile = ((FileOutputOptions) outputOptions).getFile().getParentFile();
                parentFile.getClass();
                return StorageUtil.getAvailableBytes(parentFile);
            }
            if (outputOptions instanceof MediaStoreOutputOptions) {
                Uri collectionUri = ((MediaStoreOutputOptions) outputOptions).getCollectionUri();
                collectionUri.getClass();
                return StorageUtil.getAvailableBytesForMediaStoreUri(collectionUri);
            }
            if (outputOptions instanceof FileDescriptorOutputOptions) {
                return Long.MAX_VALUE;
            }
            throw new AssertionError("Unknown OutputOptions: " + this.outputOptions);
        } catch (RuntimeException e) {
            Logger.w(TAG, "Fail to access the available bytes.", e);
            return Long.MAX_VALUE;
        }
    }

    @Override // androidx.camera.video.internal.OutputStorage
    public OutputOptions getOutputOptions() {
        return this.outputOptions;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
