package io.appmetrica.analytics.push.notification;

import android.os.Bundle;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface ExtraBundleProvider {
    Bundle getExtraBundle(PushMessage pushMessage);
}
