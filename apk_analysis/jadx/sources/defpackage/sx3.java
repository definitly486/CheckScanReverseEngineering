package defpackage;

import android.text.Html;
import android.text.Spanned;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class sx3 {
    public static final /* synthetic */ int a = 0;

    static {
        Pattern.compile("[<][^>]*[>]").getClass();
    }

    public static Spanned a(String str) {
        str.getClass();
        Spanned spannedFromHtml = Html.fromHtml(str, 63);
        spannedFromHtml.getClass();
        return spannedFromHtml;
    }
}
