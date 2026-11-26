package com.posthog.internal.surveys;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.posthog.surveys.SurveyQuestionBranching;
import defpackage.ge4;
import defpackage.kd4;
import defpackage.kn1;
import defpackage.m05;
import defpackage.mc4;
import defpackage.mx2;
import defpackage.nb6;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.qd4;
import defpackage.vd4;
import defpackage.wd4;
import defpackage.xq4;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonSurveyQuestionBranchingAdapter implements wd4<SurveyQuestionBranching>, nc4<SurveyQuestionBranching> {
    public final nb6 a;

    public GsonSurveyQuestionBranchingAdapter(nb6 nb6Var) {
        this.a = nb6Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.nc4
    public final SurveyQuestionBranching deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        Map linkedHashMap;
        Object objG;
        nb6 nb6Var = this.a;
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        try {
            kd4 kd4VarD = pc4Var.d();
            pc4 pc4VarH = kd4VarD.h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            String strG = pc4VarH != null ? pc4VarH.g() : null;
            if (strG != null) {
                switch (strG.hashCode()) {
                    case -1044020302:
                        if (strG.equals("next_question")) {
                            return SurveyQuestionBranching.Next.INSTANCE;
                        }
                        break;
                    case -417940397:
                        if (strG.equals("specific_question")) {
                            pc4 pc4VarH2 = kd4VarD.h(FirebaseAnalytics.Param.INDEX);
                            return new SurveyQuestionBranching.SpecificQuestion(pc4VarH2 != null ? pc4VarH2.b() : 0);
                        }
                        break;
                    case 100571:
                        if (strG.equals(TtmlNode.END)) {
                            return SurveyQuestionBranching.End.INSTANCE;
                        }
                        break;
                    case 423384629:
                        if (strG.equals("response_based")) {
                            pc4 pc4VarH3 = kd4VarD.h("responseValues");
                            kd4 kd4VarD2 = pc4VarH3 != null ? pc4VarH3.d() : null;
                            if (kd4VarD2 != null) {
                                Set<Map.Entry<String, pc4>> setEntrySet = kd4VarD2.b.entrySet();
                                int iB = m05.b(kn1.q(setEntrySet, 10));
                                if (iB < 16) {
                                    iB = 16;
                                }
                                linkedHashMap = new LinkedHashMap(iB);
                                Iterator it = ((xq4.b) setEntrySet).iterator();
                                while (((xq4.d) it).hasNext()) {
                                    Map.Entry entryA = ((xq4.b.a) it).a();
                                    Object key = entryA.getKey();
                                    pc4 pc4Var2 = (pc4) entryA.getValue();
                                    pc4Var2.getClass();
                                    if ((pc4Var2 instanceof qd4) && (((pc4) entryA.getValue()).f().b instanceof Number)) {
                                        objG = Integer.valueOf(((pc4) entryA.getValue()).b());
                                    } else {
                                        pc4 pc4Var3 = (pc4) entryA.getValue();
                                        pc4Var3.getClass();
                                        objG = ((pc4Var3 instanceof qd4) && (((pc4) entryA.getValue()).f().b instanceof String)) ? ((pc4) entryA.getValue()).g() : ((pc4) entryA.getValue()).toString();
                                    }
                                    linkedHashMap.put(key, objG);
                                }
                            } else {
                                linkedHashMap = mx2.b;
                            }
                            return new SurveyQuestionBranching.ResponseBased(linkedHashMap);
                        }
                        break;
                }
            }
            nb6Var.v.a("Unknown branching type: " + strG);
            return null;
        } catch (Throwable th) {
            nb6Var.v.a(pc4Var + " isn't a valid SurveyQuestionBranching: " + th + '.');
            return null;
        }
    }

    @Override // defpackage.wd4
    public final pc4 serialize(SurveyQuestionBranching surveyQuestionBranching, Type type, vd4 vd4Var) {
        SurveyQuestionBranching surveyQuestionBranching2 = surveyQuestionBranching;
        surveyQuestionBranching2.getClass();
        type.getClass();
        vd4Var.getClass();
        Gson gson = TreeTypeAdapter.this.c;
        gson.getClass();
        ge4 ge4Var = new ge4();
        gson.l(surveyQuestionBranching2, type, ge4Var);
        pc4 pc4VarM = ge4Var.m();
        pc4VarM.getClass();
        return pc4VarM;
    }
}
