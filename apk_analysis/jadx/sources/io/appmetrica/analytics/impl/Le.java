package io.appmetrica.analytics.impl;

import defpackage.g17;
import defpackage.ua8;

/* JADX INFO: loaded from: classes5.dex */
public final class Le implements InterfaceC1421z2 {
    public final int a = 10;
    public final int b = 13;
    public final g17 c = new g17("^[0-9()\\-+\\s]+$");

    @Override // io.appmetrica.analytics.impl.InterfaceC1421z2
    public final String a(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        int length2 = string.length();
        Character chJ0 = ua8.j0(str);
        Character chJ1 = ua8.j0(string);
        if (length2 < this.a || length2 > this.b || ((chJ1 != null && chJ1.charValue() == '0') || !this.c.e(str))) {
            return null;
        }
        if (length2 == 10 && (chJ0 == null || chJ0.charValue() != '+')) {
            return "7".concat(string);
        }
        if (length2 == 11) {
            if (chJ0 != null && chJ0.charValue() == '+' && chJ1 != null && chJ1.charValue() == '8') {
                return null;
            }
            if (chJ1 != null && chJ1.charValue() == '8') {
                return "7".concat(string.substring(1));
            }
        }
        if (length2 < 12 || chJ0 == null || chJ0.charValue() != '+' || chJ1 == null || chJ1.charValue() != '7') {
            return string;
        }
        return null;
    }
}
