package androidx.compose.runtime;

import androidx.compose.runtime.internal.Trace;
import defpackage.bm3;
import defpackage.it8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TracingContext implements o22.a, it8<j59> {
    public static final int $stable = 0;
    public static final Key Key = new Key(null);
    private final String name;

    public TracingContext(String str) {
        this.name = str;
    }

    @Override // defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) o22.a.C0306a.a(this, r, bm3Var);
    }

    @Override // defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public o22.b<?> getKey() {
        return Key;
    }

    @Override // defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }

    @Override // defpackage.it8
    public void restoreThreadContext(o22 o22Var, j59 j59Var) {
        Trace.INSTANCE.endSection(j59.a);
    }

    /* JADX INFO: renamed from: updateThreadContext, reason: avoid collision after fix types in other method */
    public void updateThreadContext2(o22 o22Var) {
        Trace.INSTANCE.beginSection(this.name);
    }

    public static final class Key implements o22.b<TracingContext> {
        public /* synthetic */ Key(jh2 jh2Var) {
            this();
        }

        private Key() {
        }
    }

    @Override // defpackage.it8
    public /* bridge */ /* synthetic */ j59 updateThreadContext(o22 o22Var) {
        updateThreadContext2(o22Var);
        return j59.a;
    }
}
