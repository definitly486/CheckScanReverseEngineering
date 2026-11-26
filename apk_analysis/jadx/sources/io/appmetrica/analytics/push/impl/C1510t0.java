package io.appmetrica.analytics.push.impl;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.fm3;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.notification.NotificationCustomizer;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;
import io.appmetrica.analytics.push.notification.providers.AdditionalActionsProvider;
import io.appmetrica.analytics.push.notification.providers.AutoCancelProvider;
import io.appmetrica.analytics.push.notification.providers.CategoryProvider;
import io.appmetrica.analytics.push.notification.providers.ChannelIdProvider;
import io.appmetrica.analytics.push.notification.providers.ColorProvider;
import io.appmetrica.analytics.push.notification.providers.ContentInfoProvider;
import io.appmetrica.analytics.push.notification.providers.ContentIntentProvider;
import io.appmetrica.analytics.push.notification.providers.ContentTextProvider;
import io.appmetrica.analytics.push.notification.providers.ContentTitleProvider;
import io.appmetrica.analytics.push.notification.providers.DefaultsProvider;
import io.appmetrica.analytics.push.notification.providers.DeleteIntentProvider;
import io.appmetrica.analytics.push.notification.providers.GroupProvider;
import io.appmetrica.analytics.push.notification.providers.GroupSummaryProvider;
import io.appmetrica.analytics.push.notification.providers.LargeIconProvider;
import io.appmetrica.analytics.push.notification.providers.LightsProvider;
import io.appmetrica.analytics.push.notification.providers.NumberProvider;
import io.appmetrica.analytics.push.notification.providers.OngoingProvider;
import io.appmetrica.analytics.push.notification.providers.OnlyAlertOnceProvider;
import io.appmetrica.analytics.push.notification.providers.PriorityProvider;
import io.appmetrica.analytics.push.notification.providers.ShowWhenProvider;
import io.appmetrica.analytics.push.notification.providers.SmallIconProvider;
import io.appmetrica.analytics.push.notification.providers.SortKeyProvider;
import io.appmetrica.analytics.push.notification.providers.SoundProvider;
import io.appmetrica.analytics.push.notification.providers.StyleProvider;
import io.appmetrica.analytics.push.notification.providers.SubTextProvider;
import io.appmetrica.analytics.push.notification.providers.TickerProvider;
import io.appmetrica.analytics.push.notification.providers.TimeoutProvider;
import io.appmetrica.analytics.push.notification.providers.VibrateProvider;
import io.appmetrica.analytics.push.notification.providers.VisibilityProvider;
import io.appmetrica.analytics.push.notification.providers.WhenProvider;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1510t0 {
    public final LinkedHashMap a = new LinkedHashMap();

    public C1510t0(Context context) {
        a(Z.a, new AdditionalActionsProvider(context));
        a(C1484k0.a, new AutoCancelProvider());
        a(C1490m0.a, new CategoryProvider());
        a(C1493n0.a, new ChannelIdProvider(context));
        a(C1496o0.a, new ColorProvider());
        a(C1499p0.a, new ContentInfoProvider());
        a(C1502q0.a, new ContentIntentProvider(context));
        a(C1504r0.a, new ContentTextProvider());
        a(C1507s0.a, new ContentTitleProvider());
        a(O.a, new DefaultsProvider());
        a(P.a, new DeleteIntentProvider(context));
        a(Q.a, new GroupProvider());
        a(S.a, new GroupSummaryProvider());
        a(T.a, new LargeIconProvider());
        a(U.a, new LightsProvider());
        a(V.a, new NumberProvider());
        a(W.a, new OngoingProvider());
        a(X.a, new OnlyAlertOnceProvider());
        a(Y.a, new PriorityProvider());
        a(C1444a0.a, new ShowWhenProvider());
        a(C1448b0.a, new SmallIconProvider(context));
        a(C1452c0.a, new SortKeyProvider());
        a(C1456d0.a, new SoundProvider());
        a(C1460e0.a, new StyleProvider());
        a(C1464f0.a, new SubTextProvider());
        a(C1468g0.a, new TickerProvider());
        a(C1472h0.a, new TimeoutProvider(context));
        a(C1476i0.a, new VibrateProvider());
        a(C1480j0.a, new VisibilityProvider());
        a(C1487l0.a, new WhenProvider());
    }

    public static final void a(fm3 fm3Var, NotificationValueProvider notificationValueProvider, NotificationCompat.Builder builder, PushMessage pushMessage) {
        List list = (List) notificationValueProvider.get(pushMessage);
        if (list != null) {
        }
    }

    public static final void b(bm3 bm3Var, NotificationValueProvider notificationValueProvider, NotificationCompat.Builder builder, PushMessage pushMessage) {
        Object obj = notificationValueProvider.get(pushMessage);
        if (obj != null) {
        }
    }

    public static final void a(bm3 bm3Var, NotificationValueProvider notificationValueProvider, NotificationCompat.Builder builder, PushMessage pushMessage) {
        List list = (List) notificationValueProvider.get(pushMessage);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                bm3Var.invoke(builder, it.next());
            }
        }
    }

    public final void a(final bm3 bm3Var, final NotificationValueProvider notificationValueProvider) {
        this.a.put(bm3Var, new NotificationCustomizer() { // from class: io.appmetrica.analytics.push.impl.c3
            @Override // io.appmetrica.analytics.push.notification.NotificationCustomizer
            public final void invoke(NotificationCompat.Builder builder, PushMessage pushMessage) {
                C1510t0.b(bm3Var, notificationValueProvider, builder, pushMessage);
            }
        });
    }

    public final void a(final U u, final LightsProvider lightsProvider) {
        this.a.put(u, new NotificationCustomizer() { // from class: io.appmetrica.analytics.push.impl.b3
            @Override // io.appmetrica.analytics.push.notification.NotificationCustomizer
            public final void invoke(NotificationCompat.Builder builder, PushMessage pushMessage) {
                C1510t0.a(u, lightsProvider, builder, pushMessage);
            }
        });
    }

    public final void a(final Z z, final AdditionalActionsProvider additionalActionsProvider) {
        this.a.put(z, new NotificationCustomizer() { // from class: io.appmetrica.analytics.push.impl.a3
            @Override // io.appmetrica.analytics.push.notification.NotificationCustomizer
            public final void invoke(NotificationCompat.Builder builder, PushMessage pushMessage) {
                C1510t0.a(z, additionalActionsProvider, builder, pushMessage);
            }
        });
    }
}
