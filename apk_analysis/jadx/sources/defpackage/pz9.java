package defpackage;

import android.text.TextUtils;
import com.my.tracker.MyTracker;

/* JADX INFO: loaded from: classes4.dex */
public final class pz9 extends y14 {

    public static final class a {
        public static final String a;

        static {
            String str = null;
            try {
                String id = MyTracker.getTrackerConfig().getId();
                if (TextUtils.isEmpty(id)) {
                    y14.r(null, "MyTrackerHelper: myTracker id is empty");
                } else {
                    str = id;
                }
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("MyTrackerHelper: Error occurred while working with myTracker, "), th);
            }
            a = str;
        }
    }
}
