package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import defpackage.aa4;
import defpackage.bm3;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements AppLovinCommunicatorSubscriber {
    public final bm3 a;

    public f(b bVar) {
        this.a = bVar;
    }

    public final String getCommunicatorId() {
        return "AppMetrica";
    }

    public final void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        Bundle messageData;
        String string;
        if (!aa4.e(appLovinCommunicatorMessage.getTopic(), "max_revenue_events") || (messageData = appLovinCommunicatorMessage.getMessageData()) == null || (string = messageData.getString(TtmlNode.ATTR_ID)) == null) {
            return;
        }
        this.a.invoke(string, messageData);
    }
}
