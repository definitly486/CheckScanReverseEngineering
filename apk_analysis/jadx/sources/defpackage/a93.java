package defpackage;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public enum a93 implements b93 {
    IDENTITY { // from class: a93.a
        @Override // defpackage.b93
        public final String a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: a93.b
        @Override // defpackage.b93
        public final String a(Field field) {
            return a93.e(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: a93.c
        @Override // defpackage.b93
        public final String a(Field field) {
            return a93.e(a93.d(field.getName(), ' '));
        }
    },
    UPPER_CASE_WITH_UNDERSCORES { // from class: a93.d
        @Override // defpackage.b93
        public final String a(Field field) {
            return a93.d(field.getName(), '_').toUpperCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: a93.e
        @Override // defpackage.b93
        public final String a(Field field) {
            return a93.d(field.getName(), '_').toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: a93.f
        @Override // defpackage.b93
        public final String a(Field field) {
            return a93.d(field.getName(), '-').toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: a93.g
        @Override // defpackage.b93
        public final String a(Field field) {
            return a93.d(field.getName(), '.').toLowerCase(Locale.ENGLISH);
        }
    };

    a93() {
        throw null;
    }

    public static String d(String str, char c2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String e(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    break;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i) + upperCase + str.substring(i + 1);
            }
        }
        return str;
    }
}
