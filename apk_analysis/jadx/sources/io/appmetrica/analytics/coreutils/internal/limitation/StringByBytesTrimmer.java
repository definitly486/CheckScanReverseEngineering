package io.appmetrica.analytics.coreutils.internal.limitation;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public class StringByBytesTrimmer extends BaseTrimmer<String> {
    public StringByBytesTrimmer(int i, String str) {
        this(i, str, PublicLogger.getAnonymousInstance());
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.Trimmer
    public String trim(String str) {
        if (!StringUtils.isNullOrEmpty(str)) {
            Charset charset = StandardCharsets.UTF_8;
            byte[] bytes = str.getBytes(charset);
            if (bytes.length > getMaxSize()) {
                String str2 = new String(bytes, 0, getMaxSize(), charset);
                this.mPublicLogger.warning("\"%s\" %s exceeded limit of %d bytes", getLogName(), str, Integer.valueOf(getMaxSize()));
                return str2;
            }
        }
        return str;
    }

    public StringByBytesTrimmer(int i, String str, PublicLogger publicLogger) {
        super(i, str, publicLogger);
    }
}
