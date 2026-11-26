package androidx.compose.runtime.composer.linkbuffer.changelist;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class OperationArgContainerKt {
    public static final long getLong(OperationArgContainer operationArgContainer, int i, int i2) {
        return (((long) operationArgContainer.getInt(i)) << 32) | (((long) operationArgContainer.getInt(i2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }
}
