package io.appmetrica.analytics.push.lazypush;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface LazyPushTransformRule {
    String getNewValue(String str);

    List<String> getPatternList();
}
