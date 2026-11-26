package yads;

import android.content.Context;
import com.yandex.mobile.ads.R$attr;
import com.yandex.mobile.ads.R$drawable;
import com.yandex.mobile.ads.R$string;
import com.yandex.mobile.ads.R$style;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hn3 extends pg8 implements defpackage.bm3 {
    public mf0 b;
    public Object c;
    public int d;
    public final /* synthetic */ in3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hn3(in3 in3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = in3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new hn3(this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new hn3(this.e, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0397  */
    /* JADX WARN: Code duplicated, block: B:112:0x040d A[LOOP:3: B:110:0x0407->B:112:0x040d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:125:0x0458  */
    /* JADX WARN: Code duplicated, block: B:128:0x0498  */
    /* JADX WARN: Code duplicated, block: B:130:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:131:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:133:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:136:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:137:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:139:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:140:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:146:0x0500 A[PHI: r1
      0x0500: PHI (r1v31 yads.mf0) = (r1v17 yads.mf0), (r1v32 yads.mf0) binds: [B:124:0x0456, B:154:0x051d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:155:0x051f  */
    /* JADX WARN: Code duplicated, block: B:157:0x053d  */
    /* JADX WARN: Code duplicated, block: B:160:0x054b  */
    /* JADX WARN: Code duplicated, block: B:185:0x04f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x0256 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x0243 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x0263 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x0296 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x0283 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x013e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0142  */
    /* JADX WARN: Code duplicated, block: B:31:0x015c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0160  */
    /* JADX WARN: Code duplicated, block: B:34:0x017b  */
    /* JADX WARN: Code duplicated, block: B:37:0x019d  */
    /* JADX WARN: Code duplicated, block: B:38:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:41:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:42:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:49:0x01da  */
    /* JADX WARN: Code duplicated, block: B:51:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:54:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:57:0x0213  */
    /* JADX WARN: Code duplicated, block: B:61:0x022c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0249  */
    /* JADX WARN: Code duplicated, block: B:70:0x0269  */
    /* JADX WARN: Code duplicated, block: B:76:0x0289  */
    /* JADX WARN: Code duplicated, block: B:81:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:84:0x02ba A[LOOP:7: B:82:0x02b4->B:84:0x02ba, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:87:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:90:0x02e4 A[LOOP:8: B:88:0x02de->B:90:0x02e4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:96:0x030e A[LOOP:9: B:94:0x0308->B:96:0x030e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x0385  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        mf0 mf0Var;
        Object objA;
        mf0 mf0Var2;
        Object objA2;
        List listA;
        Object objA3;
        va vaVar;
        Object objA4;
        rf0 rf0Var;
        Object value;
        List list;
        defpackage.ar4 ar4VarE;
        oh0 oh0Var;
        int iOrdinal;
        rg0 rg0Var;
        qg0 qg0Var;
        int i;
        List list2;
        af0 af0Var;
        ld0 ld0Var;
        String str;
        String str2;
        String str3;
        ne0 ne0Var;
        boolean z;
        Context context;
        rg0 rg0Var2;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Iterator it;
        Iterator it2;
        Iterator it3;
        ArrayList arrayList4;
        td0 td0Var;
        defpackage.ar4 ar4VarE2;
        defpackage.ar4 ar4VarD;
        zd0 zd0Var;
        me0 me0Var;
        yd0 yd0Var;
        List list3;
        Object value2;
        Object value3;
        le0 le0Var;
        defpackage.ar4 ar4VarE3;
        String str4;
        String str5;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            r57.b(obj);
            mf0Var = ((ih0) this.e.m.getValue()).b;
            if (((ih0) this.e.m.getValue()).d.isEmpty()) {
                in3 in3Var = this.e;
                ih0 ih0VarA = ih0.a((ih0) in3Var.m.getValue(), null, null, true, null, 11);
                defpackage.xg5 xg5Var = in3Var.m;
                do {
                    value = xg5Var.getValue();
                } while (!xg5Var.a(value, ih0VarA));
            }
            if (mf0Var instanceof kf0) {
                in3 in3Var2 = this.e;
                rf0 rf0Var2 = in3Var2.h;
                r33 r33Var = in3Var2.d;
                this.b = mf0Var;
                this.c = rf0Var2;
                this.d = 1;
                objA4 = r33Var.a(this);
                if (objA4 != a32Var) {
                    rf0Var = rf0Var2;
                    pf0 pf0Var = (pf0) objA4;
                    rf0Var.getClass();
                    ar4VarE = u96.e();
                    we0 we0Var = pf0Var.b;
                    oh0Var = oh0.a;
                    ar4VarE.add(oh0Var);
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_application_info)));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_id), we0Var.a));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_version), we0Var.b));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_system), we0Var.c));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_api_level), we0Var.d));
                    og0 og0Var = pf0Var.c;
                    ar4VarE.add(oh0Var);
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_sdk_integration)));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_ads_sdk_version), og0Var.a));
                    iOrdinal = og0Var.b.a.ordinal();
                    if (iOrdinal != 0) {
                        rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_green, Integer.valueOf(R$drawable.debug_panel_icon_success), 0, 8);
                    } else if (iOrdinal != 1) {
                        rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);
                    } else {
                        if (iOrdinal == 2) {
                            defpackage.me0.e();
                            return null;
                        }
                        rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integration_errors), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);
                    }
                    qg0Var = og0Var.b;
                    if (qg0Var.a == pg0.SUCCESS) {
                        i = R$attr.debug_panel_label_primary;
                    } else {
                        i = rg0Var.b;
                    }
                    list2 = qg0Var.b;
                    if (list2 != null) {
                        af0Var = new af0(defpackage.qn1.a0(list2, "\n", null, null, 0, null, 62), i);
                    } else {
                        af0Var = null;
                    }
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_sdk_integration_status), rg0Var, af0Var));
                    ld0Var = pf0Var.d;
                    if (ld0Var.a == null) {
                        ar4VarE.add(oh0Var);
                        ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_advertisement_network_settings)));
                        str = ld0Var.a;
                        if (str != null) {
                            ar4VarE.add(new qh0("Page ID", str));
                        }
                        str2 = ld0Var.b;
                        if (str2 != null) {
                            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_review_status), str2));
                        }
                        str3 = ld0Var.c;
                        if (str3 != null) {
                            ar4VarE.add(new qh0("app-ads.txt", str3));
                        }
                        ar4VarE.add(lh0.a);
                    } else {
                        ar4VarE.add(oh0Var);
                        ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_advertisement_network_settings)));
                        str = ld0Var.a;
                        if (str != null) {
                            ar4VarE.add(new qh0("Page ID", str));
                        }
                        str2 = ld0Var.b;
                        if (str2 != null) {
                            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_review_status), str2));
                        }
                        str3 = ld0Var.c;
                        if (str3 != null) {
                            ar4VarE.add(new qh0("app-ads.txt", str3));
                        }
                        ar4VarE.add(lh0.a);
                    }
                    ne0Var = pf0Var.e;
                    if (!ne0Var.a.isEmpty()) {
                        ar4VarE.add(oh0Var);
                        List listN0 = defpackage.qn1.n0(ne0Var.a, new qf0());
                        arrayList = new ArrayList();
                        for (Object obj2 : listN0) {
                            if (((le0) obj2).g instanceof he0) {
                                arrayList.add(obj2);
                            }
                        }
                        arrayList2 = new ArrayList();
                        for (Object obj3 : listN0) {
                            if (((le0) obj3).g instanceof ie0) {
                                arrayList2.add(obj3);
                            }
                        }
                        arrayList3 = new ArrayList();
                        for (Object obj4 : listN0) {
                            if (((le0) obj4).g instanceof je0) {
                                arrayList3.add(obj4);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_completed_integration)));
                            it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                rf0Var.a(ar4VarE, (le0) it3.next());
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_invalid_integration)));
                            it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                rf0Var.a(ar4VarE, (le0) it2.next());
                            }
                        }
                        if (!arrayList3.isEmpty()) {
                            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_missing_integration)));
                            it = arrayList3.iterator();
                            while (it.hasNext()) {
                                rf0Var.a(ar4VarE, (le0) it.next());
                            }
                        }
                    }
                    df0 df0Var = pf0Var.f;
                    oh0 oh0Var2 = oh0.a;
                    ar4VarE.add(oh0Var2);
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_user_privacy)));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_age_restricted_user), rf0Var.a(df0Var.b)));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_location_consent), rf0Var.a(Boolean.valueOf(df0Var.a))));
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_user_consent), rf0Var.a(df0Var.c)));
                    String string = rf0Var.a.getString(R$string.debug_panel_tcf_consent);
                    z = df0Var.d;
                    context = rf0Var.a;
                    if (z) {
                        rg0Var2 = new rg0(context.getString(R$string.debug_panel_provided), 0, null, 0, 14);
                    } else {
                        rg0Var2 = new rg0(context.getString(R$string.debug_panel_no_value_set), 0, null, 0, 14);
                    }
                    ar4VarE.add(new qh0(string, rg0Var2));
                    of0 of0Var = pf0Var.g;
                    ar4VarE.add(oh0Var2);
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_features)));
                    sh0 sh0Var = sh0.DEBUG_ERROR_INDICATOR;
                    ar4VarE.add(new th0(of0Var.a));
                    listA = u96.d(ar4VarE);
                    list = listA;
                }
            } else if (mf0Var instanceof jf0) {
                in3 in3Var3 = this.e;
                va vaVar2 = in3Var3.i;
                m23 m23Var = in3Var3.e;
                this.b = mf0Var;
                this.c = vaVar2;
                this.d = 2;
                objA3 = m23Var.a(this);
                if (objA3 != a32Var) {
                    vaVar = vaVar2;
                    vaVar.getClass();
                    ArrayList<sd0> arrayList5 = ((fe0) objA3).a;
                    arrayList4 = new ArrayList(defpackage.kn1.q(arrayList5, 10));
                    for (sd0 sd0Var : arrayList5) {
                        arrayList4.add(new kh0(sd0Var.a, sd0Var.b, sd0Var.c));
                    }
                    list = arrayList4;
                }
            } else if (mf0Var instanceof if0) {
                pa paVar = this.e.k;
                rh0 rh0Var = ((if0) mf0Var).b;
                paVar.getClass();
                listA = pa.a(rh0Var);
                list = listA;
            } else if (mf0Var instanceof hf0) {
                k23 k23Var = this.e.f;
                String str6 = ((hf0) mf0Var).b;
                this.b = mf0Var;
                this.d = 3;
                objA2 = k23Var.a(str6, this);
                if (objA2 != a32Var) {
                    mf0Var2 = mf0Var;
                    td0Var = (td0) objA2;
                    if (td0Var != null) {
                        this.e.j.getClass();
                        ar4VarE2 = u96.e();
                        ar4VarE2.add(oh0.a);
                        ar4VarE2.add(new ph0(td0Var.a));
                        ar4VarE2.add(new qh0("Format", td0Var.b));
                        ar4VarE2.add(new qh0("ID", td0Var.c));
                        for (ae0 ae0Var : td0Var.d.a) {
                            zd0Var = ae0Var.f;
                            if (zd0Var instanceof xd0) {
                                me0Var = me0.BIDDING;
                            } else {
                                if (zd0Var instanceof yd0) {
                                    defpackage.me0.e();
                                    return null;
                                }
                                me0Var = me0.WATERFALL;
                            }
                            if (zd0Var instanceof yd0) {
                                yd0Var = (yd0) zd0Var;
                            } else {
                                yd0Var = null;
                            }
                            if (yd0Var != null) {
                                list3 = yd0Var.b;
                            } else {
                                list3 = null;
                            }
                            ar4VarE2.add(new rh0(ae0Var.b, ae0Var.a, new rg0("Mediation", R$attr.debug_panel_label_secondary, null, R$style.DebugPanelText_Body2, 4), new af0(R$attr.debug_panel_label_primary, R$style.DebugPanelText_Body1, me0Var.b), null, ae0Var.d, ae0Var.e, ae0Var.c, list3, me0Var, null, 1024));
                        }
                        ar4VarD = u96.d(ar4VarE2);
                        list = ar4VarD;
                        mf0Var = mf0Var2;
                    } else {
                        mf0Var = mf0Var2;
                        list = null;
                    }
                }
            } else {
                if (!(mf0Var instanceof lf0)) {
                    defpackage.me0.e();
                    return null;
                }
                d53 d53Var = this.e.g;
                String str7 = ((lf0) mf0Var).b;
                this.b = mf0Var;
                this.d = 4;
                objA = d53Var.a(str7, this);
                if (objA != a32Var) {
                    mf0Var2 = mf0Var;
                    le0Var = (le0) objA;
                    if (le0Var != null) {
                        this.e.l.getClass();
                        ar4VarE3 = u96.e();
                        ar4VarE3.add(oh0.a);
                        ar4VarE3.add(new ph0("Integration"));
                        str4 = le0Var.d;
                        if (str4 != null) {
                            ar4VarE3.add(new qh0("Adapter Version", str4));
                        }
                        str5 = le0Var.e;
                        if (str5 != null) {
                            ar4VarE3.add(new qh0("Latest Adapter Version", str5));
                        }
                        mh0 mh0Var = mh0.TEST_MODE;
                        ar4VarE3.add(new nh0());
                        ar4VarD = u96.d(ar4VarE3);
                        list = ar4VarD;
                        mf0Var = mf0Var2;
                    } else {
                        mf0Var = mf0Var2;
                        list = null;
                    }
                }
            }
            return a32Var;
        }
        if (i2 == 1) {
            rf0Var = (rf0) this.c;
            mf0Var = this.b;
            r57.b(obj);
            objA4 = obj;
            pf0 pf0Var2 = (pf0) objA4;
            rf0Var.getClass();
            ar4VarE = u96.e();
            we0 we0Var2 = pf0Var2.b;
            oh0Var = oh0.a;
            ar4VarE.add(oh0Var);
            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_application_info)));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_id), we0Var2.a));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_version), we0Var2.b));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_system), we0Var2.c));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_api_level), we0Var2.d));
            og0 og0Var2 = pf0Var2.c;
            ar4VarE.add(oh0Var);
            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_sdk_integration)));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_ads_sdk_version), og0Var2.a));
            iOrdinal = og0Var2.b.a.ordinal();
            if (iOrdinal != 0) {
                rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_green, Integer.valueOf(R$drawable.debug_panel_icon_success), 0, 8);
            } else if (iOrdinal != 1) {
                rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);
            } else {
                if (iOrdinal == 2) {
                    defpackage.me0.e();
                    return null;
                }
                rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integration_errors), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);
            }
            qg0Var = og0Var2.b;
            if (qg0Var.a == pg0.SUCCESS) {
                i = R$attr.debug_panel_label_primary;
            } else {
                i = rg0Var.b;
            }
            list2 = qg0Var.b;
            if (list2 != null) {
                af0Var = new af0(defpackage.qn1.a0(list2, "\n", null, null, 0, null, 62), i);
            } else {
                af0Var = null;
            }
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_sdk_integration_status), rg0Var, af0Var));
            ld0Var = pf0Var2.d;
            if (ld0Var.a == null || ld0Var.c != null || ld0Var.b != null) {
                ar4VarE.add(oh0Var);
                ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_advertisement_network_settings)));
                str = ld0Var.a;
                if (str != null) {
                    ar4VarE.add(new qh0("Page ID", str));
                }
                str2 = ld0Var.b;
                if (str2 != null) {
                    ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_review_status), str2));
                }
                str3 = ld0Var.c;
                if (str3 != null) {
                    ar4VarE.add(new qh0("app-ads.txt", str3));
                }
                ar4VarE.add(lh0.a);
            }
            ne0Var = pf0Var2.e;
            if (!ne0Var.a.isEmpty()) {
                ar4VarE.add(oh0Var);
                List listN1 = defpackage.qn1.n0(ne0Var.a, new qf0());
                arrayList = new ArrayList();
                while (r9.hasNext()) {
                    if (((le0) obj2).g instanceof he0) {
                        arrayList.add(obj2);
                    }
                }
                arrayList2 = new ArrayList();
                while (r10.hasNext()) {
                    if (((le0) obj3).g instanceof ie0) {
                        arrayList2.add(obj3);
                    }
                }
                arrayList3 = new ArrayList();
                while (r5.hasNext()) {
                    if (((le0) obj4).g instanceof je0) {
                        arrayList3.add(obj4);
                    }
                }
                if (!arrayList.isEmpty()) {
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_completed_integration)));
                    it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        rf0Var.a(ar4VarE, (le0) it3.next());
                    }
                }
                if (!arrayList2.isEmpty()) {
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_invalid_integration)));
                    it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        rf0Var.a(ar4VarE, (le0) it2.next());
                    }
                }
                if (!arrayList3.isEmpty()) {
                    ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_missing_integration)));
                    it = arrayList3.iterator();
                    while (it.hasNext()) {
                        rf0Var.a(ar4VarE, (le0) it.next());
                    }
                }
            }
            df0 df0Var2 = pf0Var2.f;
            oh0 oh0Var3 = oh0.a;
            ar4VarE.add(oh0Var3);
            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_user_privacy)));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_age_restricted_user), rf0Var.a(df0Var2.b)));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_location_consent), rf0Var.a(Boolean.valueOf(df0Var2.a))));
            ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_user_consent), rf0Var.a(df0Var2.c)));
            String string2 = rf0Var.a.getString(R$string.debug_panel_tcf_consent);
            z = df0Var2.d;
            context = rf0Var.a;
            if (z) {
                rg0Var2 = new rg0(context.getString(R$string.debug_panel_provided), 0, null, 0, 14);
            } else {
                rg0Var2 = new rg0(context.getString(R$string.debug_panel_no_value_set), 0, null, 0, 14);
            }
            ar4VarE.add(new qh0(string2, rg0Var2));
            of0 of0Var2 = pf0Var2.g;
            ar4VarE.add(oh0Var3);
            ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_features)));
            sh0 sh0Var2 = sh0.DEBUG_ERROR_INDICATOR;
            ar4VarE.add(new th0(of0Var2.a));
            listA = u96.d(ar4VarE);
            list = listA;
        } else if (i2 == 2) {
            vaVar = (va) this.c;
            mf0Var = this.b;
            r57.b(obj);
            objA3 = obj;
            vaVar.getClass();
            ArrayList<sd0> arrayList6 = ((fe0) objA3).a;
            arrayList4 = new ArrayList(defpackage.kn1.q(arrayList6, 10));
            while (r1.hasNext()) {
                arrayList4.add(new kh0(sd0Var.a, sd0Var.b, sd0Var.c));
            }
            list = arrayList4;
        } else if (i2 == 3) {
            mf0Var2 = this.b;
            r57.b(obj);
            objA2 = obj;
            td0Var = (td0) objA2;
            if (td0Var != null) {
                this.e.j.getClass();
                ar4VarE2 = u96.e();
                ar4VarE2.add(oh0.a);
                ar4VarE2.add(new ph0(td0Var.a));
                ar4VarE2.add(new qh0("Format", td0Var.b));
                ar4VarE2.add(new qh0("ID", td0Var.c));
                while (r3.hasNext()) {
                    zd0Var = ae0Var.f;
                    if (zd0Var instanceof xd0) {
                        me0Var = me0.BIDDING;
                    } else {
                        if (zd0Var instanceof yd0) {
                            defpackage.me0.e();
                            return null;
                        }
                        me0Var = me0.WATERFALL;
                    }
                    if (zd0Var instanceof yd0) {
                        yd0Var = (yd0) zd0Var;
                    } else {
                        yd0Var = null;
                    }
                    if (yd0Var != null) {
                        list3 = yd0Var.b;
                    } else {
                        list3 = null;
                    }
                    ar4VarE2.add(new rh0(ae0Var.b, ae0Var.a, new rg0("Mediation", R$attr.debug_panel_label_secondary, null, R$style.DebugPanelText_Body2, 4), new af0(R$attr.debug_panel_label_primary, R$style.DebugPanelText_Body1, me0Var.b), null, ae0Var.d, ae0Var.e, ae0Var.c, list3, me0Var, null, 1024));
                }
                ar4VarD = u96.d(ar4VarE2);
                list = ar4VarD;
                mf0Var = mf0Var2;
            } else {
                mf0Var = mf0Var2;
                list = null;
            }
        } else {
            if (i2 != 4) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mf0Var2 = this.b;
            r57.b(obj);
            objA = obj;
            le0Var = (le0) objA;
            if (le0Var != null) {
                this.e.l.getClass();
                ar4VarE3 = u96.e();
                ar4VarE3.add(oh0.a);
                ar4VarE3.add(new ph0("Integration"));
                str4 = le0Var.d;
                if (str4 != null) {
                    ar4VarE3.add(new qh0("Adapter Version", str4));
                }
                str5 = le0Var.e;
                if (str5 != null) {
                    ar4VarE3.add(new qh0("Latest Adapter Version", str5));
                }
                mh0 mh0Var2 = mh0.TEST_MODE;
                ar4VarE3.add(new nh0());
                ar4VarD = u96.d(ar4VarE3);
                list = ar4VarD;
                mf0Var = mf0Var2;
            } else {
                mf0Var = mf0Var2;
                list = null;
            }
        }
        in3 in3Var4 = this.e;
        if (list == null) {
            ih0 ih0Var = ((ih0) in3Var4.m.getValue()).a;
            if (ih0Var == null) {
                defpackage.av0.c(in3Var4.a, null, null, new en3(in3Var4, bh0.a, null), 3);
            } else {
                ih0 ih0VarA2 = ih0.a(ih0Var, null, null, false, null, 11);
                defpackage.xg5 xg5Var2 = in3Var4.m;
                do {
                    value3 = xg5Var2.getValue();
                } while (!xg5Var2.a(value3, ih0VarA2));
            }
        } else if (defpackage.aa4.e(mf0Var, ((ih0) in3Var4.m.getValue()).b)) {
            ih0 ih0VarA3 = ih0.a((ih0) this.e.m.getValue(), null, null, false, list, 3);
            defpackage.xg5 xg5Var3 = this.e.m;
            do {
                value2 = xg5Var3.getValue();
            } while (!xg5Var3.a(value2, ih0VarA3));
        }
        return j59.a;
    }
}
