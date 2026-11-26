package io.appmetrica.analytics.coreutils.internal.limitation;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public class BytesTrimmer extends BaseTrimmer<byte[]> {
    public BytesTrimmer(int i, String str, PublicLogger publicLogger) {
        super(i, str, publicLogger);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.Trimmer
    public byte[] trim(byte[] bArr) {
        if (bArr == null || bArr.length <= getMaxSize()) {
            return bArr;
        }
        byte[] bArr2 = new byte[getMaxSize()];
        System.arraycopy(bArr, 0, bArr2, 0, getMaxSize());
        this.mPublicLogger.warning("\"%s\" %s exceeded limit of %d bytes", getLogName(), bArr, Integer.valueOf(getMaxSize()));
        return bArr2;
    }
}
