package androidx.compose.ui;

import defpackage.aa4;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.xp;

/* JADX INFO: loaded from: classes2.dex */
public final class CombinedModifier implements Modifier {
    public static final int $stable = 0;
    private final Modifier inner;
    private final Modifier outer;

    /* JADX INFO: renamed from: androidx.compose.ui.CombinedModifier$toString$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<String, Modifier.Element, String> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public final String invoke(String str, Modifier.Element element) {
            if (str.length() == 0) {
                return element.toString();
            }
            return str + ", " + element;
        }
    }

    public CombinedModifier(Modifier modifier, Modifier modifier2) {
        this.outer = modifier;
        this.inner = modifier2;
    }

    @Override // androidx.compose.ui.Modifier
    public boolean all(nl3<? super Modifier.Element, Boolean> nl3Var) {
        return this.outer.all(nl3Var) && this.inner.all(nl3Var);
    }

    @Override // androidx.compose.ui.Modifier
    public boolean any(nl3<? super Modifier.Element, Boolean> nl3Var) {
        return this.outer.any(nl3Var) || this.inner.any(nl3Var);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CombinedModifier)) {
            return false;
        }
        CombinedModifier combinedModifier = (CombinedModifier) obj;
        return aa4.e(this.outer, combinedModifier.outer) && aa4.e(this.inner, combinedModifier.inner);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.Modifier
    public <R> R foldIn(R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
        return (R) this.inner.foldIn(this.outer.foldIn(r, bm3Var), bm3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.Modifier
    public <R> R foldOut(R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
        return (R) this.outer.foldOut(this.inner.foldOut(r, bm3Var), bm3Var);
    }

    public final Modifier getInner$ui() {
        return this.inner;
    }

    public final Modifier getOuter$ui() {
        return this.outer;
    }

    public int hashCode() {
        return (this.inner.hashCode() * 31) + this.outer.hashCode();
    }

    public String toString() {
        return xp.e(new StringBuilder("["), (String) foldIn("", AnonymousClass1.INSTANCE), ']');
    }
}
