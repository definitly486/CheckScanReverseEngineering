package io.appmetrica.analytics.impl;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJKeyValueStorageKt;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface E5 {
    public static final List a = CollectionUtils.createSortedListWithoutRepetitions(TJKeyValueStorageKt.KEY, "value", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
}
