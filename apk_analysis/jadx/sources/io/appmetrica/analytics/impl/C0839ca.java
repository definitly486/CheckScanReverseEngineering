package io.appmetrica.analytics.impl;

import android.content.pm.FeatureInfo;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ca, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0839ca extends AbstractC0865da {
    @Override // io.appmetrica.analytics.impl.AbstractC0865da
    public final C0890ea b(FeatureInfo featureInfo) {
        return new C0890ea(featureInfo.name, -1, (featureInfo.flags & 1) != 0);
    }
}
