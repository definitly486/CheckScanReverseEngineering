package io.appmetrica.analytics.push.impl;

import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;

/* JADX INFO: loaded from: classes5.dex */
class G1 {
    public static int a(int i, boolean z) {
        return i | (z ? GroupFlagsKt.HasAuxSlotFlag : 67108864);
    }
}
