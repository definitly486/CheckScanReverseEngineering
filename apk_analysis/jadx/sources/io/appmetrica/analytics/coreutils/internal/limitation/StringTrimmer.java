package io.appmetrica.analytics.coreutils.internal.limitation;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public class StringTrimmer extends BaseTrimmer<String> {
    public StringTrimmer(int i, String str) {
        this(i, str, PublicLogger.getAnonymousInstance());
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.Trimmer
    public String trim(String str) {
        if (str == null || str.length() <= getMaxSize()) {
            return str;
        }
        String strSubstring = str.substring(0, getMaxSize());
        this.mPublicLogger.warning("\"%s\" %s size exceeded limit of %d characters", getLogName(), str, Integer.valueOf(getMaxSize()));
        return strSubstring;
    }

    public StringTrimmer(int i, String str, PublicLogger publicLogger) {
        super(i, str, publicLogger);
    }
}
