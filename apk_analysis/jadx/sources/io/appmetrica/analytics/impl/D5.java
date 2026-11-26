package io.appmetrica.analytics.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class D5 {
    public static final List a = CollectionUtils.createSortedListWithoutRepetitions(TtmlNode.ATTR_ID, "session_id", "session_type", "number_in_session", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "global_number", "time", "event_description");
}
