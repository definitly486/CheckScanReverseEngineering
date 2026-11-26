package androidx.compose.ui.autofill;

import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class AutofillTree {
    public static final int $stable = 8;
    private final Map<Integer, AutofillNode> children = new LinkedHashMap();

    public final Map<Integer, AutofillNode> getChildren() {
        return this.children;
    }

    public final j59 performAutofill(int i, String str) {
        nl3<String, j59> onFill;
        AutofillNode autofillNode = this.children.get(Integer.valueOf(i));
        if (autofillNode == null || (onFill = autofillNode.getOnFill()) == null) {
            return null;
        }
        onFill.invoke(str);
        return j59.a;
    }

    public final void plusAssign(AutofillNode autofillNode) {
        this.children.put(Integer.valueOf(autofillNode.getId()), autofillNode);
    }
}
