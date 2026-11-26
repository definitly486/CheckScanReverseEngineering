package yads;

import android.content.Context;
import android.text.format.DateFormat;

/* JADX INFO: loaded from: classes6.dex */
public final class iu5 {
    public static String a(Context context) {
        return DateFormat.is24HourFormat(context) ? "24" : "12";
    }
}
