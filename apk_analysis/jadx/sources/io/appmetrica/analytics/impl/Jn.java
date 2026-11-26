package io.appmetrica.analytics.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJVerifierKt;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Jn {
    public static final List a = CollectionUtils.createSortedListWithoutRepetitions(TtmlNode.ATTR_ID, "scope", "data", TJVerifierKt.TJC_TIMESTAMP);
}
