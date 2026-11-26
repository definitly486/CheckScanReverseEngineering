package androidx.compose.foundation.text.contextmenu.data;

import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuItem extends TextContextMenuComponent {
    public static final int $stable = 8;
    private final String label;
    private final int leadingIcon;
    private final nl3<TextContextMenuSession, j59> onClick;

    /* JADX WARN: Multi-variable type inference failed */
    public TextContextMenuItem(Object obj, String str, int i, nl3<? super TextContextMenuSession, j59> nl3Var) {
        super(obj);
        this.label = str;
        this.leadingIcon = i;
        this.onClick = nl3Var;
    }

    public final String getLabel() {
        return this.label;
    }

    public final int getLeadingIcon() {
        return this.leadingIcon;
    }

    public final nl3<TextContextMenuSession, j59> getOnClick() {
        return this.onClick;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TextContextMenuItem(key=");
        sb.append(getKey());
        sb.append(", label=\"");
        sb.append(this.label);
        sb.append("\", leadingIcon=");
        return rg.h(sb, this.leadingIcon, ')');
    }

    public /* synthetic */ TextContextMenuItem(Object obj, String str, int i, nl3 nl3Var, int i2, jh2 jh2Var) {
        this(obj, str, (i2 & 4) != 0 ? 0 : i, nl3Var);
    }
}
