package io.appmetrica.analytics.logger.common.impl;

import defpackage.gh4;
import defpackage.ll3;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends gh4 implements ll3 {
    public static final h a = new h();

    public h() {
        super(0);
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return Pattern.compile("[\\p{Space},;]");
    }
}
