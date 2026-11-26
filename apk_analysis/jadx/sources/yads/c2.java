package yads;

import android.content.pm.ActivityInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class c2 {
    public static final String a = "com.yandex.mobile.ads.common.AdActivity has missed configuration attribute %s.";
    public static final Map b = defpackage.n05.e(new defpackage.b36(16, "ActivityInfo.CONFIG_KEYBOARD"), new defpackage.b36(32, "ActivityInfo.CONFIG_KEYBOARD_HIDDEN"), new defpackage.b36(128, "ActivityInfo.CONFIG_ORIENTATION"), new defpackage.b36(256, "ActivityInfo.CONFIG_SCREEN_LAYOUT"), new defpackage.b36(512, "ActivityInfo.CONFIG_UI_MODE"), new defpackage.b36(1024, "ActivityInfo.CONFIG_SCREEN_SIZE"), new defpackage.b36(2048, "CONFIG_SMALLEST_SCREEN_SIZE"));

    public static void a(ActivityInfo activityInfo) {
        Object obj;
        Map map = b;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator it = map.entrySet().iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            int iIntValue = ((Number) entry.getKey()).intValue();
            String str = (String) entry.getValue();
            if ((iIntValue & activityInfo.configChanges) == 0) {
                obj = str;
            }
            arrayList.add(obj);
        }
        for (Object obj2 : arrayList) {
            if (((String) obj2) != null) {
                obj = obj2;
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 != null) {
            throw new vm3(String.format(a, Arrays.copyOf(new Object[]{str2}, 1)));
        }
    }
}
