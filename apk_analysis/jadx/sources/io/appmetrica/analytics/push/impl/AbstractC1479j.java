package io.appmetrica.analytics.push.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1479j {
    public static /* synthetic */ String a(int i) {
        switch (i) {
            case 1:
                return "receive";
            case 2:
                return "dismiss";
            case 3:
                return TtmlNode.TEXT_EMPHASIS_MARK_OPEN;
            case 4:
                return "custom";
            case 5:
                return "processed";
            case 6:
                return "shown";
            case 7:
                return "ignored";
            case 8:
                return "expired";
            case 9:
                return "removed";
            case 10:
                return "replace";
            default:
                throw null;
        }
    }
}
