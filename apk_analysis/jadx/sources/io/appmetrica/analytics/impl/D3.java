package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import defpackage.me0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class D3 implements J5 {
    @Override // io.appmetrica.analytics.impl.J5, defpackage.nl3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map<String, String> invoke(ContentValues contentValues) {
        String asString = contentValues.getAsString("clids");
        HashMap mapC = AbstractC1305ub.c(asString);
        if (Vm.a(mapC)) {
            return mapC;
        }
        AbstractC1287tj.a(me0.c("Passed clids (", asString, ") are invalid."), new Object[0]);
        return null;
    }
}
