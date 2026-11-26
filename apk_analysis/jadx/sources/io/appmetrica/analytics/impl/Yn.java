package io.appmetrica.analytics.impl;

import defpackage.u96;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle;

/* JADX INFO: loaded from: classes5.dex */
public final class Yn {
    public final S3 a;
    public final No b;
    public final ConjunctiveCompositeThreadSafeToggle c;

    public Yn(Toggle toggle) {
        S3 s3 = new S3(Fa.k().y());
        this.a = s3;
        No no = new No();
        this.b = no;
        this.c = new ConjunctiveCompositeThreadSafeToggle(u96.i(s3, no, toggle == null ? new Eo() : toggle), "loc-def");
    }
}
