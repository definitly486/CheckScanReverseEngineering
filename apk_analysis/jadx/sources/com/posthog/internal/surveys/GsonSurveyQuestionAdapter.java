package com.posthog.internal.surveys;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.gson.Gson;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.posthog.surveys.LinkSurveyQuestion;
import com.posthog.surveys.MultipleSurveyQuestion;
import com.posthog.surveys.OpenSurveyQuestion;
import com.posthog.surveys.RatingSurveyQuestion;
import com.posthog.surveys.SingleSurveyQuestion;
import com.posthog.surveys.SurveyQuestion;
import defpackage.ge4;
import defpackage.mc4;
import defpackage.nb6;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonSurveyQuestionAdapter implements wd4<SurveyQuestion>, nc4<SurveyQuestion> {
    public final nb6 a;

    public GsonSurveyQuestionAdapter(nb6 nb6Var) {
        this.a = nb6Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.nc4
    public final SurveyQuestion deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        try {
            String strG = pc4Var.d().h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).g();
            if (strG != null) {
                switch (strG.hashCode()) {
                    case -938102371:
                        if (strG.equals("rating")) {
                            return (SurveyQuestion) ((TreeTypeAdapter.a) mc4Var).a(pc4Var, RatingSurveyQuestion.class);
                        }
                        break;
                    case 3321850:
                        if (strG.equals(DynamicLink.Builder.KEY_LINK)) {
                            return (SurveyQuestion) ((TreeTypeAdapter.a) mc4Var).a(pc4Var, LinkSurveyQuestion.class);
                        }
                        break;
                    case 3417674:
                        if (strG.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                            return (SurveyQuestion) ((TreeTypeAdapter.a) mc4Var).a(pc4Var, OpenSurveyQuestion.class);
                        }
                        break;
                    case 1669382832:
                        if (strG.equals("multiple_choice")) {
                            return (SurveyQuestion) ((TreeTypeAdapter.a) mc4Var).a(pc4Var, MultipleSurveyQuestion.class);
                        }
                        break;
                    case 1770845560:
                        if (strG.equals("single_choice")) {
                            return (SurveyQuestion) ((TreeTypeAdapter.a) mc4Var).a(pc4Var, SingleSurveyQuestion.class);
                        }
                        break;
                    default:
                        break;
                }
            }
            return null;
        } catch (Throwable th) {
            this.a.v.a(pc4Var.g() + " isn't a known type: " + th + '.');
            return null;
        }
    }

    @Override // defpackage.wd4
    public final pc4 serialize(SurveyQuestion surveyQuestion, Type type, vd4 vd4Var) {
        SurveyQuestion surveyQuestion2 = surveyQuestion;
        surveyQuestion2.getClass();
        type.getClass();
        vd4Var.getClass();
        Gson gson = TreeTypeAdapter.this.c;
        gson.getClass();
        ge4 ge4Var = new ge4();
        gson.l(surveyQuestion2, type, ge4Var);
        pc4 pc4VarM = ge4Var.m();
        pc4VarM.getClass();
        return pc4VarM;
    }
}
