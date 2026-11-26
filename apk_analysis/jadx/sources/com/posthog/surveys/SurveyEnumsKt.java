package com.posthog.surveys;

import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyEnumsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends Enum<T>> T enumFromValue(String str, T[] tArr, nl3<? super T, String> nl3Var) {
        for (T t : tArr) {
            if (aa4.e(nl3Var.invoke(t), str)) {
                return t;
            }
        }
        return null;
    }
}
