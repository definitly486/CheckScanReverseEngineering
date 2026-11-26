package yads;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ps5 {
    public static final String a(String str) {
        Pattern patternCompile = Pattern.compile("[^a-zA-Z0-9._-]");
        patternCompile.getClass();
        str.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("_");
        strReplaceAll.getClass();
        return strReplaceAll;
    }
}
