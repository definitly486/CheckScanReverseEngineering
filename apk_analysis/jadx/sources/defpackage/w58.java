package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class w58 implements NavArgs {
    public final fi7 a;
    public final String b;
    public final long c;

    public w58(long j, fi7 fi7Var, String str) {
        this.a = fi7Var;
        this.b = str;
        this.c = j;
    }

    public static final w58 fromBundle(Bundle bundle) {
        if (!c9.j(bundle, "reason", w58.class)) {
            fg.c("Required argument \"reason\" is missing and does not have an android:defaultValue");
            return null;
        }
        if (!Parcelable.class.isAssignableFrom(fi7.class) && !Serializable.class.isAssignableFrom(fi7.class)) {
            n1.e(fi7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
            return null;
        }
        fi7 fi7Var = (fi7) bundle.get("reason");
        if (fi7Var == null) {
            fg.c("Argument \"reason\" is marked as non-null but was passed a null value.");
            return null;
        }
        if (!bundle.containsKey("waitingQueueReceiptQr")) {
            fg.c("Required argument \"waitingQueueReceiptQr\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString("waitingQueueReceiptQr");
        if (bundle.containsKey("cheque_request_id")) {
            return new w58(bundle.getLong("cheque_request_id"), fi7Var, string);
        }
        fg.c("Required argument \"cheque_request_id\" is missing and does not have an android:defaultValue");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w58)) {
            return false;
        }
        w58 w58Var = (w58) obj;
        return this.a == w58Var.a && aa4.e(this.b, w58Var.b) && this.c == w58Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Long.hashCode(this.c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpecifyPlaceFlowFragmentArgs(reason=");
        sb.append(this.a);
        sb.append(", waitingQueueReceiptQr=");
        sb.append(this.b);
        sb.append(", chequeRequestId=");
        return k2.b(this.c, ")", sb);
    }
}
