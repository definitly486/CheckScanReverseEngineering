package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.messaging.Constants;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes5.dex */
public final class bk8 {
    public static final bk8 d;
    public final HashMap a = new HashMap();
    public final bk8 b;
    public final ArrayList<Consumer<jj8>> c;

    static {
        String[] strArr = {TJAdUnitConstants.String.HTML, TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "frameset", "script", "noscript", "style", "meta", DynamicLink.Builder.KEY_LINK, TJAdUnitConstants.String.TITLE, TypedValues.AttributesType.S_FRAME, "noframes", "section", "nav", "aside", "hgroup", "header", "footer", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "dialog", FirebaseAnalytics.Event.SEARCH, "ul", "ol", "pre", TtmlNode.TAG_DIV, "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", CmcdConfiguration.KEY_DEADLINE, "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "details", "menu", "plaintext", "template", "article", "main", TtmlNode.CENTER, "dir", "applet", "marquee", "listing", "#root"};
        String[] strArr2 = {"object", TtmlNode.RUBY_BASE, "font", TtmlNode.TAG_TT, "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", TtmlNode.ATTR_TTS_RUBY, "rt", "rp", "rtc", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "img", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", TtmlNode.TAG_SPAN, "input", "select", "textarea", Constants.ScionAnalytics.PARAM_LABEL, MimeTypes.BASE_TYPE_AUDIO, MimeTypes.BASE_TYPE_VIDEO, "canvas", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "basefont", "bgsound", "menuitem", "data", "bdi", CmcdData.STREAMING_FORMAT_SS, "strike", "nobr", "ins", "del", "button", "picture", "slot", "rb"};
        String[] strArr3 = {TJAdUnitConstants.String.TITLE, TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style"};
        String[] strArr4 = {"meta", DynamicLink.Builder.KEY_LINK, TtmlNode.RUBY_BASE, TypedValues.AttributesType.S_FRAME, "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
        String[] strArr5 = {"pre", "plaintext", TJAdUnitConstants.String.TITLE, "textarea", "script"};
        String[] strArr6 = {TJAdUnitConstants.String.TITLE, "textarea"};
        String[] strArr7 = {"button", "input", "select", "textarea", "option", "output", "progress", "meter", "img", "picture", MimeTypes.BASE_TYPE_AUDIO, MimeTypes.BASE_TYPE_VIDEO, "canvas", "object", "embed", "iframe"};
        bk8 bk8Var = new bk8(null, null);
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr, new sj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr2, new xj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr3, new yj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr4, new zj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr5, new ak8());
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr6, new nj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", new String[]{"iframe", "noembed", "noframes", "script", "style", "xmp"}, new oj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", xs7.a, new pj8());
        bk8Var.c("http://www.w3.org/1999/xhtml", strArr7, new qj8());
        bk8Var.c("http://www.w3.org/1998/Math/MathML", new String[]{"math"}, new rj8());
        bk8Var.c("http://www.w3.org/1998/Math/MathML", new String[]{"mi", "mo", "msup", "mn", "mtext"}, new tj8());
        bk8Var.c("http://www.w3.org/2000/svg", new String[]{"svg", "femerge", "femergenode"}, new uj8());
        bk8Var.c("http://www.w3.org/2000/svg", new String[]{"text"}, new vj8());
        bk8Var.c("http://www.w3.org/2000/svg", new String[]{"script"}, new wj8());
        d = bk8Var;
    }

    public bk8(bk8 bk8Var, ArrayList<Consumer<jj8>> arrayList) {
        this.b = bk8Var;
        this.c = arrayList;
    }

    public final void a(jj8 jj8Var) {
        ArrayList<Consumer<jj8>> arrayList = this.c;
        if (arrayList != null) {
            Iterator<Consumer<jj8>> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().accept(jj8Var);
            }
        }
        ((Map) this.a.computeIfAbsent(jj8Var.b, new mj8())).put(jj8Var.c, jj8Var);
    }

    public final jj8 b(String str, String str2) {
        jj8 jj8VarB;
        jj8 jj8Var;
        yb9.e(str);
        yb9.e(str2);
        Map map = (Map) this.a.get(str2);
        if (map != null && (jj8Var = (jj8) map.get(str)) != null) {
            return jj8Var;
        }
        bk8 bk8Var = this.b;
        if (bk8Var == null || (jj8VarB = bk8Var.b(str, str2)) == null) {
            return null;
        }
        jj8 jj8VarClone = jj8VarB.clone();
        a(jj8VarClone);
        return jj8VarClone;
    }

    public final void c(String str, String[] strArr, Consumer consumer) {
        for (String str2 : strArr) {
            jj8 jj8VarB = b(str2, str);
            if (jj8VarB == null) {
                jj8VarB = new jj8(str2, str2, str);
                jj8VarB.e = 0;
                jj8VarB.j(1);
                a(jj8VarB);
            }
            consumer.accept(jj8VarB);
        }
    }

    public final jj8 d(String str, String str2, String str3, boolean z) {
        yb9.e(str);
        yb9.e(str3);
        String strTrim = str.trim();
        yb9.c(strTrim);
        jj8 jj8VarB = b(strTrim, str3);
        if (jj8VarB != null) {
            return jj8VarB;
        }
        if (str2 == null) {
            str2 = mo5.b(strTrim);
        }
        if (!z) {
            strTrim = str2;
        }
        jj8 jj8VarB2 = b(str2, str3);
        if (jj8VarB2 == null) {
            jj8 jj8Var = new jj8(strTrim, str2, str3);
            a(jj8Var);
            return jj8Var;
        }
        if (!z || strTrim.equals(str2)) {
            return jj8VarB2;
        }
        jj8 jj8VarClone = jj8VarB2.clone();
        jj8VarClone.c = strTrim;
        a(jj8VarClone);
        return jj8VarClone;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bk8) {
            return Objects.equals(this.a, ((bk8) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.a);
    }
}
