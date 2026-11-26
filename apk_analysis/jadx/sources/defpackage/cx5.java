package defpackage;

import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class cx5 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[zv0.b.values().length];
            try {
                iArr[zv0.b.URL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[zv0.b.REFERRAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[zv0.b.NEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[zv0.b.ALERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final OnboardingOneSlideModel.Button a(zv0 zv0Var) {
        OnboardingOneSlideModel.Action deeplink;
        zv0.a aVarA;
        String strC = zv0Var.c();
        zv0.b bVarD = zv0Var.d();
        int i = bVarD == null ? -1 : a.a[bVarD.ordinal()];
        if (i == 1) {
            String strE = zv0Var.e();
            if (strE == null) {
                strE = "";
            }
            deeplink = new OnboardingOneSlideModel.Action.Deeplink(strE);
        } else if (i == 2) {
            deeplink = OnboardingOneSlideModel.Action.ShareWithFriend.b;
        } else if (i == 3) {
            deeplink = OnboardingOneSlideModel.Action.Next.b;
        } else if (i == 4 && (aVarA = zv0Var.a()) != null) {
            String strD = aVarA.d();
            String strA = aVarA.a();
            zv0.a.C0375a c0375aB = aVarA.b();
            c0375aB.getClass();
            BankClientVerificationModel.Button button = new BankClientVerificationModel.Button(c0375aB.b(), c0375aB.c(), c0375aB.a());
            zv0.a.C0375a c0375aC = aVarA.c();
            c0375aC.getClass();
            deeplink = new OnboardingOneSlideModel.Action.Alert(new BankClientVerificationModel(strD, strA, button, new BankClientVerificationModel.Button(c0375aC.b(), c0375aC.c(), c0375aC.a())));
        } else {
            deeplink = OnboardingOneSlideModel.Action.NotSupported.b;
        }
        return new OnboardingOneSlideModel.Button(strC, deeplink, zv0Var.b());
    }

    public static final OnboardingOneSlideModel b(fx5 fx5Var, int i, int i2, int i3, boolean z) throws Exception {
        zv0 zv0VarE;
        zv0 zv0VarD;
        fx5Var.getClass();
        if (fx5Var instanceof ei2) {
            ei2 ei2Var = (ei2) fx5Var;
            String strG = ei2Var.g();
            String strF = ei2Var.f();
            String strB = ei2Var.b();
            boolean zA = ei2Var.a();
            Boolean boolE = ei2Var.e();
            boolean zBooleanValue = boolE != null ? boolE.booleanValue() : false;
            zv0 zv0VarC = ei2Var.c();
            OnboardingOneSlideModel.Button buttonA = zv0VarC != null ? a(zv0VarC) : null;
            zv0 zv0VarD2 = ei2Var.d();
            return new OnboardingOneSlideModel(strG, strF, strB, zA, zBooleanValue, buttonA, zv0VarD2 != null ? a(zv0VarD2) : null, z, i3, i, i2, null, null, 6144);
        }
        if (!(fx5Var instanceof jf5)) {
            if (fx5Var.equals(qo5.a)) {
                throw new Exception("This slide type not supported");
            }
            me0.e();
            return null;
        }
        jf5 jf5Var = (jf5) fx5Var;
        gx5 gx5Var = (gx5) qn1.V(jf5Var.c());
        String strG2 = gx5Var != null ? gx5Var.g() : null;
        if (strG2 == null) {
            strG2 = "";
        }
        String strF2 = gx5Var != null ? gx5Var.f() : null;
        String str = strF2 == null ? "" : strF2;
        String strC = gx5Var != null ? gx5Var.c() : null;
        String str2 = strC == null ? "" : strC;
        boolean zA2 = jf5Var.a();
        Boolean boolB = jf5Var.b();
        boolean zBooleanValue2 = boolB != null ? boolB.booleanValue() : false;
        OnboardingOneSlideModel.Button buttonA2 = (gx5Var == null || (zv0VarD = gx5Var.d()) == null) ? null : a(zv0VarD);
        OnboardingOneSlideModel.Button buttonA3 = (gx5Var == null || (zv0VarE = gx5Var.e()) == null) ? null : a(zv0VarE);
        List<gx5> listC = jf5Var.c();
        ArrayList arrayList = new ArrayList(kn1.q(listC, 10));
        for (gx5 gx5Var2 : listC) {
            boolean zA3 = jf5Var.a();
            Boolean boolB2 = jf5Var.b();
            gx5Var2.getClass();
            ArrayList arrayList2 = arrayList;
            String strG3 = gx5Var2.g();
            String strF3 = gx5Var2.f();
            String strC2 = gx5Var2.c();
            boolean zBooleanValue3 = boolB2 != null ? boolB2.booleanValue() : false;
            zv0 zv0VarD3 = gx5Var2.d();
            OnboardingOneSlideModel.Button buttonA4 = zv0VarD3 != null ? a(zv0VarD3) : null;
            zv0 zv0VarE2 = gx5Var2.e();
            arrayList2.add(new OnboardingOneSlideModel(strG3, strF3, strC2, zA3, zBooleanValue3, buttonA4, zv0VarE2 != null ? a(zv0VarE2) : null, z, i3, i, i2, null, new b36(gx5Var2.b(), gx5Var2.a()), 2048));
            arrayList = arrayList2;
        }
        return new OnboardingOneSlideModel(strG2, str, str2, zA2, zBooleanValue2, buttonA2, buttonA3, z, i3, i, i2, arrayList, null, 4096);
    }
}
