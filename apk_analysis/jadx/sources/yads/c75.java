package yads;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c75 {
    public static final String a;

    static {
        Locale locale = Locale.getDefault();
        locale.getClass();
        String string = "yandex";
        char cCharAt = "yandex".charAt(0);
        if (Character.isLowerCase(cCharAt)) {
            StringBuilder sb = new StringBuilder();
            char titleCase = Character.toTitleCase(cCharAt);
            if (titleCase != Character.toUpperCase(cCharAt)) {
                sb.append(titleCase);
            } else {
                String upperCase = "y".toUpperCase(locale);
                upperCase.getClass();
                sb.append(upperCase);
            }
            sb.append("andex");
            string = sb.toString();
        }
        a = string;
    }
}
