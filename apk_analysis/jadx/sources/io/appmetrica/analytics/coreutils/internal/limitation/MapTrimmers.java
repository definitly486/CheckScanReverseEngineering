package io.appmetrica.analytics.coreutils.internal.limitation;

import defpackage.ni0;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public class MapTrimmers {
    public static final int DEFAULT_KEY_MAX_LENGTH = 50;
    public static final int DEFAULT_MAP_MAX_SIZE = 30;
    public static final int DEFAULT_VALUE_MAX_LENGTH = 4000;
    private final StringTrimmer a;
    private final StringTrimmer b;
    private final CollectionLimitation c;
    private final PublicLogger d;
    private final String e;

    public MapTrimmers(int i, int i2, int i3, String str, PublicLogger publicLogger) {
        this(new CollectionLimitation(i), new StringTrimmer(i2, ni0.c(str, "map key"), publicLogger), new StringTrimmer(i3, ni0.c(str, "map value"), publicLogger), str, publicLogger);
    }

    public CollectionLimitation getCollectionLimitation() {
        return this.c;
    }

    public StringTrimmer getKeyTrimmer() {
        return this.a;
    }

    public StringTrimmer getValueTrimmer() {
        return this.b;
    }

    public void logContainerLimitReached(String str) {
        this.d.warning("The %s has reached the limit of %d items. Item with key %s will be ignored", this.e, Integer.valueOf(this.c.getMaxSize()), str);
    }

    public MapTrimmers(CollectionLimitation collectionLimitation, StringTrimmer stringTrimmer, StringTrimmer stringTrimmer2, String str, PublicLogger publicLogger) {
        this.c = collectionLimitation;
        this.a = stringTrimmer;
        this.b = stringTrimmer2;
        this.e = str;
        this.d = publicLogger;
    }
}
