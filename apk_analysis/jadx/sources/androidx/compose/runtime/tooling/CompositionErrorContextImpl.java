package androidx.compose.runtime.tooling;

import androidx.compose.runtime.InternalComposer;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import defpackage.bm3;
import defpackage.jh2;
import defpackage.o22;
import defpackage.xh0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionErrorContextImpl implements CompositionErrorContext, OperationErrorContext, o22.a {
    public static final int $stable = 0;
    public static final Key Key = new Key(null);
    private final InternalComposer composer;

    public CompositionErrorContextImpl(InternalComposer internalComposer) {
        this.composer = internalComposer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComposeStackTrace attachComposeStackTrace$lambda$0(CompositionErrorContextImpl compositionErrorContextImpl, Object obj) {
        return compositionErrorContextImpl.composer.stackTraceForValue$runtime(obj);
    }

    @Override // androidx.compose.runtime.tooling.CompositionErrorContext
    public boolean attachComposeStackTrace(Throwable th, Object obj) {
        return ComposeStackTraceKt.tryAttachComposeStackTrace(th, new xh0(1, this, obj));
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public List<ComposeStackTraceFrame> buildStackTrace(Integer num) {
        return this.composer.parentStackTrace$runtime();
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

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public boolean getSourceInformationEnabled() {
        return this.composer.getSourceMarkersEnabled$runtime();
    }

    @Override // defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }

    public static final class Key implements o22.b<CompositionErrorContextImpl> {
        public /* synthetic */ Key(jh2 jh2Var) {
            this();
        }

        public String toString() {
            return "CompositionErrorContext";
        }

        private Key() {
        }
    }
}
