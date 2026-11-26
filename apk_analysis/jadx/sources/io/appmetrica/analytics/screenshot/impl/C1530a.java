package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.screenshot.impl.C1530a;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1530a extends gh4 implements ll3 {
    public final /* synthetic */ C1533d a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1530a(C1533d c1533d) {
        super(0);
        this.a = c1533d;
    }

    public static final void a(C1533d c1533d) {
        ((C1549u) c1533d.b).a("AndroidApiScreenshotCaptor");
    }

    @Override // defpackage.ll3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Activity.ScreenCaptureCallback invoke() {
        final C1533d c1533d = this.a;
        return new Activity.ScreenCaptureCallback() { // from class: sm9
            @Override // android.app.Activity.ScreenCaptureCallback
            public final void onScreenCaptured() {
                C1530a.a(c1533d);
            }
        };
    }
}
