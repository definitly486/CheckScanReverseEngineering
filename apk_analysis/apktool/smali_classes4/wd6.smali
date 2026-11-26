.class public final Lwd6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lnb6;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lws3;

    invoke-direct {v0}, Lws3;-><init>()V

    new-instance v1, Lzd3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lws3;->i:Lbx8;

    new-instance v1, Lcom/posthog/internal/GsonDateTypeAdapter;

    invoke-direct {v1, p1}, Lcom/posthog/internal/GsonDateTypeAdapter;-><init>(Lnb6;)V

    const-class v2, Ljava/util/Date;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/GsonSafeMapSerializer;

    invoke-direct {v1, p1}, Lcom/posthog/internal/GsonSafeMapSerializer;-><init>(Lnb6;)V

    new-instance v2, Lwd6$a;

    invoke-direct {v2}, Lwd6$a;-><init>()V

    iget-object v2, v2, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v2, Lwd6$b;

    invoke-direct {v2}, Lwd6$b;-><init>()V

    iget-object v2, v2, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Lu98;->LENIENT:Lu98;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lws3;->h:Lu98;

    new-instance v1, Lcom/posthog/internal/replay/GsonRREventTypeSerializer;

    invoke-direct {v1, p1}, Lcom/posthog/internal/replay/GsonRREventTypeSerializer;-><init>(Lnb6;)V

    const-class v2, Lcom/posthog/internal/replay/RREventType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/replay/GsonRRIncrementalSourceSerializer;

    invoke-direct {v1, p1}, Lcom/posthog/internal/replay/GsonRRIncrementalSourceSerializer;-><init>(Lnb6;)V

    const-class v2, Lcom/posthog/internal/replay/RRIncrementalSource;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;

    invoke-direct {v1, p1}, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;-><init>(Lnb6;)V

    const-class v2, Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyAppearancePositionAdapter;

    new-instance v2, Lat3;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lat3;-><init>(I)V

    new-instance v4, Lbt3;

    invoke-direct {v4, v3}, Lbt3;-><init>(I)V

    invoke-direct {v1, p1, v2, v4}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveyAppearancePosition;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyAppearanceWidgetTypeAdapter;

    new-instance v2, Lct3;

    invoke-direct {v2, v3}, Lct3;-><init>(I)V

    new-instance v4, Ldt3;

    invoke-direct {v4, v3}, Ldt3;-><init>(I)V

    invoke-direct {v1, p1, v2, v4}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyMatchTypeAdapter;

    new-instance v2, Lhf;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lhf;-><init>(I)V

    new-instance v4, Lay;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lay;-><init>(I)V

    invoke-direct {v1, p1, v2, v4}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveyMatchType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyQuestionTypeAdapter;

    new-instance v2, Lus2;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lus2;-><init>(I)V

    new-instance v6, Luf0;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Luf0;-><init>(I)V

    invoke-direct {v1, p1, v2, v6}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveyQuestionType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;

    new-instance v2, Los;

    invoke-direct {v2, v5}, Los;-><init>(I)V

    new-instance v6, Lp12;

    invoke-direct {v6, v5}, Lp12;-><init>(I)V

    invoke-direct {v1, p1, v2, v6}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveyRatingDisplayType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyScheduleAdapter;

    new-instance v2, Let3;

    invoke-direct {v2, v3}, Let3;-><init>(I)V

    new-instance v5, Lpf;

    invoke-direct {v5, v4}, Lpf;-><init>(I)V

    invoke-direct {v1, p1, v2, v5}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveySchedule;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyTextContentTypeAdapter;

    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyTextContentTypeAdapter;-><init>(Lnb6;)V

    const-class v2, Lcom/posthog/surveys/SurveyTextContentType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyTypeAdapter;

    new-instance v2, Lft3;

    invoke-direct {v2, v3}, Lft3;-><init>(I)V

    new-instance v4, Lgt3;

    invoke-direct {v4, v3}, Lgt3;-><init>(I)V

    invoke-direct {v1, p1, v2, v4}, Lcom/posthog/internal/surveys/GsonSurveyEnumAdapter;-><init>(Lnb6;Lnl3;Lnl3;)V

    const-class v2, Lcom/posthog/surveys/SurveyType;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;

    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;-><init>(Lnb6;)V

    const-class v2, Lcom/posthog/surveys/SurveyQuestion;

    invoke-virtual {v0, v2, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;

    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;-><init>(Lnb6;)V

    const-class p1, Lcom/posthog/surveys/SurveyQuestionBranching;

    invoke-virtual {v0, p1, v1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p1, Lcom/posthog/internal/PropertyGroupDeserializer;

    invoke-direct {p1}, Lcom/posthog/internal/PropertyGroupDeserializer;-><init>()V

    const-class v1, Lxr6;

    invoke-virtual {v0, v1, p1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p1, Lcom/posthog/internal/GsonPropertyValueAdapter;

    invoke-direct {p1}, Lcom/posthog/internal/GsonPropertyValueAdapter;-><init>()V

    const-class v1, Lcom/posthog/internal/c;

    invoke-virtual {v0, v1, p1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p1, Lcom/posthog/internal/GsonPropertyOperatorAdapter;

    invoke-direct {p1}, Lcom/posthog/internal/GsonPropertyOperatorAdapter;-><init>()V

    const-class v1, Lcom/posthog/internal/a;

    invoke-virtual {v0, v1, p1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p1, Lcom/posthog/internal/GsonPropertyTypeAdapter;

    invoke-direct {p1}, Lcom/posthog/internal/GsonPropertyTypeAdapter;-><init>()V

    const-class v1, Lcom/posthog/internal/b;

    invoke-virtual {v0, v1, p1}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1, v0}, Lcom/google/gson/Gson;-><init>(Lws3;)V

    iput-object p1, p0, Lwd6;->a:Lcom/google/gson/Gson;

    return-void
.end method
