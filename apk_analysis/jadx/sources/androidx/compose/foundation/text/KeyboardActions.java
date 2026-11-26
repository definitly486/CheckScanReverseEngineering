package androidx.compose.foundation.text;

import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class KeyboardActions {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final KeyboardActions Default = new KeyboardActions(null, null, null, null, null, null, 63, null);
    private final nl3<KeyboardActionScope, j59> onDone;
    private final nl3<KeyboardActionScope, j59> onGo;
    private final nl3<KeyboardActionScope, j59> onNext;
    private final nl3<KeyboardActionScope, j59> onPrevious;
    private final nl3<KeyboardActionScope, j59> onSearch;
    private final nl3<KeyboardActionScope, j59> onSend;

    public /* synthetic */ KeyboardActions(nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, nl3 nl3Var4, nl3 nl3Var5, nl3 nl3Var6, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : nl3Var, (i & 2) != 0 ? null : nl3Var2, (i & 4) != 0 ? null : nl3Var3, (i & 8) != 0 ? null : nl3Var4, (i & 16) != 0 ? null : nl3Var5, (i & 32) != 0 ? null : nl3Var6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardActions)) {
            return false;
        }
        KeyboardActions keyboardActions = (KeyboardActions) obj;
        return this.onDone == keyboardActions.onDone && this.onGo == keyboardActions.onGo && this.onNext == keyboardActions.onNext && this.onPrevious == keyboardActions.onPrevious && this.onSearch == keyboardActions.onSearch && this.onSend == keyboardActions.onSend;
    }

    public final nl3<KeyboardActionScope, j59> getOnDone() {
        return this.onDone;
    }

    public final nl3<KeyboardActionScope, j59> getOnGo() {
        return this.onGo;
    }

    public final nl3<KeyboardActionScope, j59> getOnNext() {
        return this.onNext;
    }

    public final nl3<KeyboardActionScope, j59> getOnPrevious() {
        return this.onPrevious;
    }

    public final nl3<KeyboardActionScope, j59> getOnSearch() {
        return this.onSearch;
    }

    public final nl3<KeyboardActionScope, j59> getOnSend() {
        return this.onSend;
    }

    public int hashCode() {
        nl3<KeyboardActionScope, j59> nl3Var = this.onDone;
        int iHashCode = (nl3Var != null ? nl3Var.hashCode() : 0) * 31;
        nl3<KeyboardActionScope, j59> nl3Var2 = this.onGo;
        int iHashCode2 = (iHashCode + (nl3Var2 != null ? nl3Var2.hashCode() : 0)) * 31;
        nl3<KeyboardActionScope, j59> nl3Var3 = this.onNext;
        int iHashCode3 = (iHashCode2 + (nl3Var3 != null ? nl3Var3.hashCode() : 0)) * 31;
        nl3<KeyboardActionScope, j59> nl3Var4 = this.onPrevious;
        int iHashCode4 = (iHashCode3 + (nl3Var4 != null ? nl3Var4.hashCode() : 0)) * 31;
        nl3<KeyboardActionScope, j59> nl3Var5 = this.onSearch;
        int iHashCode5 = (iHashCode4 + (nl3Var5 != null ? nl3Var5.hashCode() : 0)) * 31;
        nl3<KeyboardActionScope, j59> nl3Var6 = this.onSend;
        return iHashCode5 + (nl3Var6 != null ? nl3Var6.hashCode() : 0);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getDefault$annotations() {
        }

        public final KeyboardActions getDefault() {
            return KeyboardActions.Default;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public KeyboardActions(nl3<? super KeyboardActionScope, j59> nl3Var, nl3<? super KeyboardActionScope, j59> nl3Var2, nl3<? super KeyboardActionScope, j59> nl3Var3, nl3<? super KeyboardActionScope, j59> nl3Var4, nl3<? super KeyboardActionScope, j59> nl3Var5, nl3<? super KeyboardActionScope, j59> nl3Var6) {
        this.onDone = nl3Var;
        this.onGo = nl3Var2;
        this.onNext = nl3Var3;
        this.onPrevious = nl3Var4;
        this.onSearch = nl3Var5;
        this.onSend = nl3Var6;
    }

    public KeyboardActions() {
        this(null, null, null, null, null, null, 63, null);
    }
}
