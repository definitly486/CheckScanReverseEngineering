package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.KeyCommand;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ClipboardKeyCommandsHandler {
    private final nl3<KeyCommand, j59> handler;

    private /* synthetic */ ClipboardKeyCommandsHandler(nl3 nl3Var) {
        this.handler = nl3Var;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ClipboardKeyCommandsHandler m2695boximpl(nl3 nl3Var) {
        return new ClipboardKeyCommandsHandler(nl3Var);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static nl3<? super KeyCommand, ? extends j59> m2696constructorimpl(nl3<? super KeyCommand, j59> nl3Var) {
        return nl3Var;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2697equalsimpl(nl3<? super KeyCommand, ? extends j59> nl3Var, Object obj) {
        return (obj instanceof ClipboardKeyCommandsHandler) && aa4.e(nl3Var, ((ClipboardKeyCommandsHandler) obj).m2701unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2698equalsimpl0(nl3<? super KeyCommand, ? extends j59> nl3Var, nl3<? super KeyCommand, ? extends j59> nl3Var2) {
        return aa4.e(nl3Var, nl3Var2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2699hashCodeimpl(nl3<? super KeyCommand, ? extends j59> nl3Var) {
        return nl3Var.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2700toStringimpl(nl3<? super KeyCommand, ? extends j59> nl3Var) {
        return "ClipboardKeyCommandsHandler(handler=" + nl3Var + ')';
    }

    public boolean equals(Object obj) {
        return m2697equalsimpl(this.handler, obj);
    }

    public final nl3<KeyCommand, j59> getHandler() {
        return this.handler;
    }

    public int hashCode() {
        return m2699hashCodeimpl(this.handler);
    }

    public String toString() {
        return m2700toStringimpl(this.handler);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ nl3 m2701unboximpl() {
        return this.handler;
    }
}
