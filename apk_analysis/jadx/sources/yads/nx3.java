package yads;

import defpackage.ra8;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public abstract class nx3 {
    public static String a() {
        String lowerCase = ra8.y(UUID.randomUUID().toString(), "-", "").toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return lowerCase;
    }
}
