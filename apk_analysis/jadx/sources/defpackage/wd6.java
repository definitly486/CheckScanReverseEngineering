package defpackage;

import com.google.gson.Gson;
import com.posthog.internal.GsonDateTypeAdapter;
import com.posthog.internal.GsonPropertyOperatorAdapter;
import com.posthog.internal.GsonPropertyTypeAdapter;
import com.posthog.internal.GsonPropertyValueAdapter;
import com.posthog.internal.GsonSafeMapSerializer;
import com.posthog.internal.PropertyGroupDeserializer;
import com.posthog.internal.c;
import com.posthog.internal.replay.GsonRREventTypeSerializer;
import com.posthog.internal.replay.GsonRRIncrementalSourceSerializer;
import com.posthog.internal.replay.GsonRRMouseInteractionsSerializer;
import com.posthog.internal.replay.RREventType;
import com.posthog.internal.replay.RRIncrementalSource;
import com.posthog.internal.replay.RRMouseInteraction;
import com.posthog.internal.surveys.GsonSurveyAppearancePositionAdapter;
import com.posthog.internal.surveys.GsonSurveyAppearanceWidgetTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyMatchTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyQuestionAdapter;
import com.posthog.internal.surveys.GsonSurveyQuestionBranchingAdapter;
import com.posthog.internal.surveys.GsonSurveyQuestionTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyRatingDisplayTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyScheduleAdapter;
import com.posthog.internal.surveys.GsonSurveyTextContentTypeAdapter;
import com.posthog.internal.surveys.GsonSurveyTypeAdapter;
import com.posthog.surveys.SurveyAppearancePosition;
import com.posthog.surveys.SurveyAppearanceWidgetType;
import com.posthog.surveys.SurveyMatchType;
import com.posthog.surveys.SurveyQuestion;
import com.posthog.surveys.SurveyQuestionBranching;
import com.posthog.surveys.SurveyQuestionType;
import com.posthog.surveys.SurveyRatingDisplayType;
import com.posthog.surveys.SurveySchedule;
import com.posthog.surveys.SurveyTextContentType;
import com.posthog.surveys.SurveyType;
import java.util.Date;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class wd6 {
    public final Gson a;

    public static final class a extends x39<Map<String, ? extends Object>> {
    }

    public static final class b extends x39<Map<String, Object>> {
    }

    public wd6(nb6 nb6Var) {
        ws3 ws3Var = new ws3();
        ws3Var.i = new zd3();
        ws3Var.c(Date.class, new GsonDateTypeAdapter(nb6Var));
        GsonSafeMapSerializer gsonSafeMapSerializer = new GsonSafeMapSerializer(nb6Var);
        ws3Var.c(new a().b, gsonSafeMapSerializer);
        ws3Var.c(new b().b, gsonSafeMapSerializer);
        u98 u98Var = u98.LENIENT;
        Objects.requireNonNull(u98Var);
        ws3Var.h = u98Var;
        ws3Var.c(RREventType.class, new GsonRREventTypeSerializer(nb6Var));
        ws3Var.c(RRIncrementalSource.class, new GsonRRIncrementalSourceSerializer(nb6Var));
        ws3Var.c(RRMouseInteraction.class, new GsonRRMouseInteractionsSerializer(nb6Var));
        ws3Var.c(SurveyAppearancePosition.class, new GsonSurveyAppearancePositionAdapter(nb6Var, new at3(0), new bt3(0)));
        ws3Var.c(SurveyAppearanceWidgetType.class, new GsonSurveyAppearanceWidgetTypeAdapter(nb6Var, new ct3(0), new dt3(0)));
        ws3Var.c(SurveyMatchType.class, new GsonSurveyMatchTypeAdapter(nb6Var, new hf(4), new ay(1)));
        int i = 2;
        ws3Var.c(SurveyQuestionType.class, new GsonSurveyQuestionTypeAdapter(nb6Var, new us2(i), new uf0(3)));
        ws3Var.c(SurveyRatingDisplayType.class, new GsonSurveyRatingDisplayTypeAdapter(nb6Var, new os(1), new p12(1)));
        ws3Var.c(SurveySchedule.class, new GsonSurveyScheduleAdapter(nb6Var, new et3(0), new pf(i)));
        ws3Var.c(SurveyTextContentType.class, new GsonSurveyTextContentTypeAdapter(nb6Var));
        ws3Var.c(SurveyType.class, new GsonSurveyTypeAdapter(nb6Var, new ft3(0), new gt3(0)));
        ws3Var.c(SurveyQuestion.class, new GsonSurveyQuestionAdapter(nb6Var));
        ws3Var.c(SurveyQuestionBranching.class, new GsonSurveyQuestionBranchingAdapter(nb6Var));
        ws3Var.c(xr6.class, new PropertyGroupDeserializer());
        ws3Var.c(c.class, new GsonPropertyValueAdapter());
        ws3Var.c(com.posthog.internal.a.class, new GsonPropertyOperatorAdapter());
        ws3Var.c(com.posthog.internal.b.class, new GsonPropertyTypeAdapter());
        this.a = new Gson(ws3Var);
    }
}
