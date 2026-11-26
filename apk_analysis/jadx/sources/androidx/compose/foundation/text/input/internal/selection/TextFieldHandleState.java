package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.jh2;
import defpackage.jn;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldHandleState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final TextFieldHandleState Hidden = new TextFieldHandleState(false, Offset.Companion.m6002getUnspecifiedF1C5BW0(), 0.0f, ResolvedTextDirection.Ltr, false, null);
    private final ResolvedTextDirection direction;
    private final boolean handlesCrossed;
    private final float lineHeight;
    private final long position;
    private final boolean visible;

    private TextFieldHandleState(boolean z, long j, float f, ResolvedTextDirection resolvedTextDirection, boolean z2) {
        this.visible = z;
        this.position = j;
        this.lineHeight = f;
        this.direction = resolvedTextDirection;
        this.handlesCrossed = z2;
    }

    /* JADX INFO: renamed from: copy-YqVAtuI$default, reason: not valid java name */
    public static /* synthetic */ TextFieldHandleState m2861copyYqVAtuI$default(TextFieldHandleState textFieldHandleState, boolean z, long j, float f, ResolvedTextDirection resolvedTextDirection, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = textFieldHandleState.visible;
        }
        if ((i & 2) != 0) {
            j = textFieldHandleState.position;
        }
        if ((i & 4) != 0) {
            f = textFieldHandleState.lineHeight;
        }
        if ((i & 8) != 0) {
            resolvedTextDirection = textFieldHandleState.direction;
        }
        if ((i & 16) != 0) {
            z2 = textFieldHandleState.handlesCrossed;
        }
        boolean z3 = z2;
        float f2 = f;
        return textFieldHandleState.m2863copyYqVAtuI(z, j, f2, resolvedTextDirection, z3);
    }

    public final boolean component1() {
        return this.visible;
    }

    /* JADX INFO: renamed from: component2-F1C5BW0, reason: not valid java name */
    public final long m2862component2F1C5BW0() {
        return this.position;
    }

    public final float component3() {
        return this.lineHeight;
    }

    public final ResolvedTextDirection component4() {
        return this.direction;
    }

    public final boolean component5() {
        return this.handlesCrossed;
    }

    /* JADX INFO: renamed from: copy-YqVAtuI, reason: not valid java name */
    public final TextFieldHandleState m2863copyYqVAtuI(boolean z, long j, float f, ResolvedTextDirection resolvedTextDirection, boolean z2) {
        return new TextFieldHandleState(z, j, f, resolvedTextDirection, z2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldHandleState)) {
            return false;
        }
        TextFieldHandleState textFieldHandleState = (TextFieldHandleState) obj;
        return this.visible == textFieldHandleState.visible && Offset.m5984equalsimpl0(this.position, textFieldHandleState.position) && Float.compare(this.lineHeight, textFieldHandleState.lineHeight) == 0 && this.direction == textFieldHandleState.direction && this.handlesCrossed == textFieldHandleState.handlesCrossed;
    }

    public final ResolvedTextDirection getDirection() {
        return this.direction;
    }

    public final boolean getHandlesCrossed() {
        return this.handlesCrossed;
    }

    public final float getLineHeight() {
        return this.lineHeight;
    }

    /* JADX INFO: renamed from: getPosition-F1C5BW0, reason: not valid java name */
    public final long m2864getPositionF1C5BW0() {
        return this.position;
    }

    public final boolean getVisible() {
        return this.visible;
    }

    public int hashCode() {
        return Boolean.hashCode(this.handlesCrossed) + ((this.direction.hashCode() + jn.b(this.lineHeight, (Offset.m5989hashCodeimpl(this.position) + (Boolean.hashCode(this.visible) * 31)) * 31, 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TextFieldHandleState(visible=");
        sb.append(this.visible);
        sb.append(", position=");
        sb.append((Object) Offset.m5995toStringimpl(this.position));
        sb.append(", lineHeight=");
        sb.append(this.lineHeight);
        sb.append(", direction=");
        sb.append(this.direction);
        sb.append(", handlesCrossed=");
        return sg.d(sb, this.handlesCrossed, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final TextFieldHandleState getHidden() {
            return TextFieldHandleState.Hidden;
        }

        private Companion() {
        }
    }

    public /* synthetic */ TextFieldHandleState(boolean z, long j, float f, ResolvedTextDirection resolvedTextDirection, boolean z2, jh2 jh2Var) {
        this(z, j, f, resolvedTextDirection, z2);
    }
}
