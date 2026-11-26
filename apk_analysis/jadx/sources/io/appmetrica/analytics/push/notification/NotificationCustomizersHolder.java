package io.appmetrica.analytics.push.notification;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.cm3;
import defpackage.dm3;
import defpackage.fm3;
import io.appmetrica.analytics.push.impl.C1491m1;
import io.appmetrica.analytics.push.impl.C1494n1;
import io.appmetrica.analytics.push.impl.C1497o1;
import io.appmetrica.analytics.push.impl.C1500p1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class NotificationCustomizersHolder {
    private final HashMap a = new HashMap();
    private ExtraBundleProvider b;
    private NotificationCustomizer c;
    private NotificationCustomizer d;

    public NotificationCustomizer getAfterCustomizer() {
        return this.d;
    }

    public NotificationCustomizer getBeforeCustomizer() {
        return this.c;
    }

    public final Map<cm3, NotificationCustomizer> getCustomizers() {
        return new HashMap(this.a);
    }

    public ExtraBundleProvider getExtraBundleProvider() {
        return this.b;
    }

    public NotificationCustomizersHolder useAfterCustomizer(NotificationCustomizer notificationCustomizer) {
        this.d = notificationCustomizer;
        return this;
    }

    public NotificationCustomizersHolder useBeforeCustomizer(NotificationCustomizer notificationCustomizer) {
        this.c = notificationCustomizer;
        return this;
    }

    public final NotificationCustomizersHolder useExtraBundleProvider(ExtraBundleProvider extraBundleProvider) {
        this.b = extraBundleProvider;
        return this;
    }

    public final <T> NotificationCustomizersHolder useListProviderFor(bm3<NotificationCompat.Builder, T, NotificationCompat.Builder> bm3Var, NotificationValueProvider<List<T>> notificationValueProvider) {
        this.a.put(bm3Var, new C1500p1(bm3Var, notificationValueProvider));
        return this;
    }

    public final <T> NotificationCustomizersHolder useProviderFor(bm3<NotificationCompat.Builder, T, NotificationCompat.Builder> bm3Var, NotificationValueProvider<T> notificationValueProvider) {
        this.a.put(bm3Var, new C1491m1(bm3Var, notificationValueProvider));
        return this;
    }

    public final <T> NotificationCustomizersHolder useProviderFor(dm3<NotificationCompat.Builder, T, T, NotificationCompat.Builder> dm3Var, NotificationValueProvider<List<T>> notificationValueProvider) {
        this.a.put(dm3Var, new C1494n1(dm3Var, notificationValueProvider));
        return this;
    }

    public final <T> NotificationCustomizersHolder useProviderFor(fm3<NotificationCompat.Builder, T, T, T, NotificationCompat.Builder> fm3Var, NotificationValueProvider<List<T>> notificationValueProvider) {
        this.a.put(fm3Var, new C1497o1(fm3Var, notificationValueProvider));
        return this;
    }
}
