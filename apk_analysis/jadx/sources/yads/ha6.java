package yads;

import defpackage.ab7;
import defpackage.fh8;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ha6 {
    public static final defpackage.cl4 a = new fh8(new ab7(2));

    public static final List a() {
        List listY = ta8.Y("adsdk.yandex.ru,yandex.ru", new String[]{StringUtils.COMMA});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listY) {
            if (!ta8.M((String) obj)) {
                arrayList.add(obj);
            }
        }
        return defpackage.qn1.i0("yandex.com/ads", arrayList);
    }
}
