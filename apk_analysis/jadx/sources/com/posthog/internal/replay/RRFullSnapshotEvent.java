package com.posthog.internal.replay;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.b36;
import defpackage.n05;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class RRFullSnapshotEvent extends RREvent {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RRFullSnapshotEvent(List<RRWireframe> list, int i, int i2, long j) {
        super(RREventType.FullSnapshot, j, n05.e(new b36("wireframes", list), new b36("initialOffset", n05.e(new b36("top", Integer.valueOf(i)), new b36(TtmlNode.LEFT, Integer.valueOf(i2))))));
        list.getClass();
    }
}
