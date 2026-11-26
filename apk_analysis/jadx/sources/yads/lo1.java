package yads;

import android.view.View;
import android.widget.TextView;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lo1 implements id1 {
    @Override // yads.id1
    public final void a(vq0 vq0Var, View view, p41 p41Var) {
        Object next;
        JSONObject jSONObject;
        String string;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setHyphenationFrequency(2);
            List extensions = p41Var.getExtensions();
            Locale locale = null;
            if (extensions != null) {
                Iterator it = extensions.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!defpackage.aa4.e(((gd1) next).a, "hyphenation"));
                gd1 gd1Var = (gd1) next;
                if (gd1Var != null && (jSONObject = gd1Var.b) != null && (string = jSONObject.getString(CommonUrlParts.LOCALE)) != null) {
                    locale = new Locale(string);
                }
            }
            if (locale != null) {
                textView.setTextLocale(locale);
            }
        }
    }

    @Override // yads.id1
    public final boolean a(p41 p41Var) {
        List extensions = p41Var.getExtensions();
        if (extensions == null || extensions.isEmpty()) {
            return false;
        }
        Iterator it = extensions.iterator();
        while (it.hasNext()) {
            if (defpackage.aa4.e(((gd1) it.next()).a, "hyphenation")) {
                return true;
            }
        }
        return false;
    }

    @Override // yads.id1
    public final void a(vq0 vq0Var, View view) {
    }
}
