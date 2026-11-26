package yads;

import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.v39;
import defpackage.y68;
import defpackage.yr;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class lb6 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ mb6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lb6(mb6 mb6Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = mb6Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new lb6(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new lb6(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            mb6 mb6Var = this.c;
            y68 y68Var = mb6Var.a.c;
            kb6 kb6Var = new kb6(mb6Var, null);
            this.b = 1;
            if (defpackage.ue3.b(y68Var, kb6Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        mb6 mb6Var2 = this.c;
        mb6Var2.d = true;
        ub6 ub6Var = mb6Var2.b;
        xb6 xb6Var = ub6Var.d;
        ae6 ae6Var = ub6Var.e;
        ae6Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!v39.e(linkedHashMap)) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        View viewB = ae6Var.b.b();
        Integer numValueOf = viewB != null ? Integer.valueOf(viewB.getHeight()) : null;
        Integer numValueOf2 = viewB != null ? Integer.valueOf(viewB.getWidth()) : null;
        zz3 zz3Var = ae6Var.a.c;
        if (numValueOf == null || numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            linkedHashMap.put("view_container_height", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("view_container_height", numValueOf);
        }
        if (numValueOf2 == null || numValueOf2.intValue() <= 0) {
            numValueOf2 = null;
        }
        if (numValueOf2 == null) {
            linkedHashMap.put("view_container_width", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("view_container_width", numValueOf2);
        }
        int i2 = zz3Var.g;
        Integer numValueOf3 = i2 > 0 ? Integer.valueOf(i2) : null;
        if (numValueOf3 == null) {
            linkedHashMap.put("video_height", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("video_height", numValueOf3);
        }
        int i3 = zz3Var.h;
        Integer numValueOf4 = i3 > 0 ? Integer.valueOf(i3) : null;
        if (numValueOf4 == null) {
            linkedHashMap.put("video_width", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("video_width", numValueOf4);
        }
        String str = zz3Var.e;
        if (str == null) {
            linkedHashMap.put("video_codec", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("video_codec", str);
        }
        String str2 = zz3Var.d;
        if (str2 == null) {
            linkedHashMap.put("video_mime_type", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("video_mime_type", str2);
        }
        Float f = zz3Var.f;
        if (f == null) {
            linkedHashMap.put("video_vmaf", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("video_vmaf", f);
        }
        Map mapSingletonMap = Collections.singletonMap("video_playback_info", linkedHashMap);
        mapSingletonMap.getClass();
        xb6Var.f = mapSingletonMap;
        t5 t5Var = ub6Var.a;
        s5 s5Var = s5.VIDEO_AD_RENDERING;
        t5Var.a(s5Var);
        if (!ub6Var.h) {
            ub6Var.h = true;
            xb6 xb6Var2 = ub6Var.d;
            xb6Var2.getClass();
            xb6Var2.a(defpackage.n05.f(new defpackage.b36(NotificationCompat.CATEGORY_STATUS, FirebaseAnalytics.Param.SUCCESS), new defpackage.b36("durations", xb6Var2.c.a.a(yr.k0(new s5[]{s5Var, s5.VIDEO_AD_PREPARE})))));
        }
        mb6 mb6Var3 = this.c;
        defpackage.mb4 mb4Var = mb6Var3.f;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        mb6Var3.f = null;
        mb6Var3.e = false;
        return j59.a;
    }
}
