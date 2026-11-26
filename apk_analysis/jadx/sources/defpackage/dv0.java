package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class dv0 {

    public static final class a extends dv0 {
        @Override // defpackage.dv0
        public final List<? extends gy0.a> a(Executor executor) {
            return Arrays.asList(new gq1(), new gh2(executor));
        }

        @Override // defpackage.dv0
        public final List<? extends i02.a> b() {
            return Collections.singletonList(new sz5());
        }
    }

    public List<? extends gy0.a> a(Executor executor) {
        return Collections.singletonList(new gh2(executor));
    }

    public List<? extends i02.a> b() {
        return Collections.EMPTY_LIST;
    }
}
