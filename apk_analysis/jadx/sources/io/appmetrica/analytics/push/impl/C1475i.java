package io.appmetrica.analytics.push.impl;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C1475i {
    public final int a;

    public C1475i(int i) {
        this.a = i;
    }

    public JSONObject a() {
        return new JSONObject().put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, AbstractC1479j.a(this.a));
    }
}
