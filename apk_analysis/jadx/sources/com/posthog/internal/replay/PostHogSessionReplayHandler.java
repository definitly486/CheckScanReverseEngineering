package com.posthog.internal.replay;

import defpackage.n1;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface PostHogSessionReplayHandler {

    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void onEvent$default(PostHogSessionReplayHandler postHogSessionReplayHandler, String str, Map map, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: onEvent");
                return;
            }
            if ((i & 2) != 0) {
                map = null;
            }
            postHogSessionReplayHandler.onEvent(str, map);
        }
    }

    boolean isActive();

    void onEvent(String str, Map<String, ? extends Object> map);

    void onSessionIdChanged();

    void start(boolean z);

    void stop();
}
