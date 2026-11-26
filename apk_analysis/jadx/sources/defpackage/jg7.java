package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class jg7 implements df7 {
    public final String a;

    public jg7(String str) {
        str.getClass();
        this.a = str;
    }

    @Override // defpackage.df7
    public final String b() {
        return jg7.class.getName();
    }

    public final Intent c(Context context) {
        context.getClass();
        String str = this.a;
        Intent intent = i72.a(context, str).intent;
        intent.setData(Uri.parse(str));
        return intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jg7) && aa4.e(this.a, ((jg7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("CustomTab(url=", this.a, ")");
    }
}
