package io.appmetrica.analytics.impl;

import android.content.pm.FeatureInfo;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0865da {
    public final C0890ea a(FeatureInfo featureInfo) {
        int i;
        if (featureInfo.name == null && (i = featureInfo.reqGlEsVersion) != 0) {
            return new C0890ea("openGlFeature", i, (featureInfo.flags & 1) != 0);
        }
        return b(featureInfo);
    }

    public abstract C0890ea b(FeatureInfo featureInfo);
}
