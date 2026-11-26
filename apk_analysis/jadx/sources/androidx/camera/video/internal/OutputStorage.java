package androidx.camera.video.internal;

import androidx.camera.video.OutputOptions;

/* JADX INFO: loaded from: classes.dex */
public interface OutputStorage {

    public interface Factory {
        OutputStorage create(OutputOptions outputOptions);
    }

    long getAvailableBytes();

    OutputOptions getOutputOptions();
}
