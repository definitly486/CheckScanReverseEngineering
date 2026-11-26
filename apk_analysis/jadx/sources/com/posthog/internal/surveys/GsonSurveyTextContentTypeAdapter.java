package com.posthog.internal.surveys;

import com.google.gson.internal.bind.TreeTypeAdapter;
import com.posthog.surveys.SurveyTextContentType;
import defpackage.mc4;
import defpackage.nb6;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonSurveyTextContentTypeAdapter implements wd4<SurveyTextContentType>, nc4<SurveyTextContentType> {
    public final nb6 a;

    public GsonSurveyTextContentTypeAdapter(nb6 nb6Var) {
        this.a = nb6Var;
    }

    @Override // defpackage.nc4
    public final SurveyTextContentType deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        try {
            SurveyTextContentType.Companion companion = SurveyTextContentType.Companion;
            String strG = pc4Var.g();
            strG.getClass();
            return companion.fromValue(strG);
        } catch (Throwable th) {
            this.a.v.a(pc4Var.b() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // defpackage.wd4
    public final pc4 serialize(SurveyTextContentType surveyTextContentType, Type type, vd4 vd4Var) {
        SurveyTextContentType surveyTextContentType2 = surveyTextContentType;
        surveyTextContentType2.getClass();
        type.getClass();
        vd4Var.getClass();
        pc4 pc4VarB = ((TreeTypeAdapter.a) vd4Var).b(surveyTextContentType2.getValue());
        pc4VarB.getClass();
        return pc4VarB;
    }
}
