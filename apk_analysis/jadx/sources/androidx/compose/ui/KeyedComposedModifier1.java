package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class KeyedComposedModifier1 extends ComposedModifier {
    private final String fqName;
    private final Object key1;

    public KeyedComposedModifier1(String str, Object obj, nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        super(nl3Var, dm3Var);
        this.fqName = str;
        this.key1 = obj;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof KeyedComposedModifier1)) {
            return false;
        }
        KeyedComposedModifier1 keyedComposedModifier1 = (KeyedComposedModifier1) obj;
        return aa4.e(this.fqName, keyedComposedModifier1.fqName) && aa4.e(this.key1, keyedComposedModifier1.key1);
    }

    public final String getFqName() {
        return this.fqName;
    }

    public final Object getKey1() {
        return this.key1;
    }

    public int hashCode() {
        int iHashCode = this.fqName.hashCode() * 31;
        Object obj = this.key1;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }
}
