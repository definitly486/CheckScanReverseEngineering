package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public class lu7 {

    @bq7("build")
    String a;

    @bq7("city")
    String b;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    String c;

    @bq7("url")
    String d;

    @bq7(TtmlNode.ATTR_ID)
    Integer e;

    @bq7(FirebaseAnalytics.Param.LOCATION)
    private du4 f;

    @bq7("name")
    String g;

    @bq7("street")
    String h;

    @bq7(TtmlNode.TAG_REGION)
    String i;

    public lu7(Integer num, String str, String str2, String str3, du4 du4Var, String str4, String str5, String str6) {
        this.a = str3;
        this.b = str4;
        this.e = num;
        this.f = du4Var;
        this.g = str;
        this.h = str2;
        this.c = str5;
        this.d = str6;
    }

    public static String c(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArr) {
            if (str2 != null && !str2.trim().isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(str);
                }
                sb.append(str2.trim());
            }
        }
        return sb.toString();
    }

    public final String a() {
        return this.g;
    }

    public final String b() {
        return c(" • ", c(" ", this.h, this.a), this.b);
    }

    public lu7() {
    }
}
