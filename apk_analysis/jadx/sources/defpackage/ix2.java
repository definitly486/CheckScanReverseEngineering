package defpackage;

import com.google.common.collect.k;
import com.google.common.collect.l;
import com.google.common.collect.x;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ix2 extends k<Object, Object> {
    public static final ix2 i = new ix2(x.h, 0);

    private Object readResolve() {
        return i;
    }

    @Override // defpackage.z24, com.google.common.collect.g, defpackage.eg5
    public final Map b() {
        return this.f;
    }

    @Override // defpackage.z24
    /* JADX INFO: renamed from: m */
    public final l<Object, Collection<Object>> b() {
        return this.f;
    }
}
