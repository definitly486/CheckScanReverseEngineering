package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.navigation.NavArgs;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class vq0 implements NavArgs {
    public final String a;
    public final int b;
    public final sq0 c;

    public vq0(int i, sq0 sq0Var, String str) {
        this.a = str;
        this.b = i;
        this.c = sq0Var;
    }

    public static final vq0 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "toolbarTitle", vq0.class)) {
            fg.c("Required argument \"toolbarTitle\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("toolbarTitle");
        if (string == null) {
            fg.c("Argument \"toolbarTitle\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey(TtmlNode.ATTR_ID)) {
            fg.c("Required argument \"id\" is missing and does not have an android:defaultValue");
            return null;
        }
        int i = bundle.getInt(TtmlNode.ATTR_ID);
        if (!bundle.containsKey(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
            fg.c("Required argument \"type\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(sq0.class) && !Serializable.class.isAssignableFrom(sq0.class)) {
            n1.e(sq0.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        sq0 sq0Var = (sq0) bundle.get(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (sq0Var != null) {
            return new vq0(i, sq0Var, string);
        }
        fg.c("Argument \"type\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vq0)) {
            return false;
        }
        vq0 vq0Var = (vq0) obj;
        return this.a.equals(vq0Var.a) && this.b == vq0Var.b && this.c == vq0Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sbA = mz0.a(this.b, "BonusesInnerFlowFragmentArgs(toolbarTitle=", this.a, ", id=", ", type=");
        sbA.append(this.c);
        sbA.append(")");
        return sbA.toString();
    }
}
