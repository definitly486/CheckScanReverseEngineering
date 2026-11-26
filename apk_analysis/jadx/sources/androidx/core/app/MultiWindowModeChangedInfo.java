package androidx.core.app;

import android.content.res.Configuration;
import defpackage.ah;

/* JADX INFO: loaded from: classes.dex */
public final class MultiWindowModeChangedInfo {
    private final boolean isInMultiWindowMode;
    private Configuration newConfiguration;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiWindowModeChangedInfo(boolean z, Configuration configuration) {
        this(z);
        configuration.getClass();
        this.newConfiguration = configuration;
    }

    public final Configuration getNewConfig() {
        Configuration configuration = this.newConfiguration;
        if (configuration != null) {
            return configuration;
        }
        ah.f("MultiWindowModeChangedInfo must be constructed with the constructor that takes a Configuration to access the newConfig. Are you running on an API 26 or higher device that makes this information available?");
        return null;
    }

    public final boolean isInMultiWindowMode() {
        return this.isInMultiWindowMode;
    }

    public MultiWindowModeChangedInfo(boolean z) {
        this.isInMultiWindowMode = z;
    }
}
