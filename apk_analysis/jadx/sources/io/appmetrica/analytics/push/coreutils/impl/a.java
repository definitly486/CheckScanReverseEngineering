package io.appmetrica.analytics.push.coreutils.impl;

import androidx.core.app.NotificationCompat;
import io.appmetrica.analytics.push.coreutils.internal.commands.Commands;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends HashMap {
    public a(b bVar, int i) {
        put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(i));
        put("command", bVar.b.getString(Commands.EXTRA_COMMAND));
    }
}
