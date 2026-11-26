package io.appmetrica.analytics.screenshot.impl;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;
import io.appmetrica.analytics.screenshot.internal.ClientSideScreenshotConfigWrapper;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1536g implements BundleToServiceConfigConverter {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ClientSideScreenshotConfigWrapper fromBundle(Bundle bundle) {
        boolean z = bundle.getBoolean(TJAdUnitConstants.String.ENABLED, AbstractC1542m.a);
        C1538i c1538i = new C1538i(bundle.getBoolean("api_captor_enabled", AbstractC1542m.c));
        C1541l c1541l = new C1541l(bundle.getBoolean("service_captor_enabled", AbstractC1542m.d), bundle.getLong("service_captor_delay_seconds", AbstractC1542m.e));
        boolean z2 = bundle.getBoolean("content_observer_enabled", AbstractC1542m.f);
        List stringArrayList = bundle.getStringArrayList("content_observer_media_store_column_names");
        if (stringArrayList == null) {
            stringArrayList = AbstractC1542m.b;
        }
        return ClientSideScreenshotConfigWrapper.Companion.toWrapper$screenshot_release(new C1540k(z, c1538i, c1541l, new C1539j(z2, stringArrayList, bundle.getLong("content_observer_detect_window_seconds", AbstractC1542m.g))));
    }
}
