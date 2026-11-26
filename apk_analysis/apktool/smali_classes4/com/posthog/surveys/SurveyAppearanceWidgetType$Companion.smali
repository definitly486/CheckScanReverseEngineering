.class public final Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/SurveyAppearanceWidgetType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/posthog/surveys/SurveyAppearanceWidgetType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/posthog/surveys/SurveyAppearanceWidgetType$Companion;->fromValue$lambda$0(Lcom/posthog/surveys/SurveyAppearanceWidgetType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final fromValue$lambda$0(Lcom/posthog/surveys/SurveyAppearanceWidgetType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyAppearanceWidgetType;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/posthog/surveys/SurveyAppearanceWidgetType;->values()[Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    move-result-object p0

    new-instance v0, Lw82;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw82;-><init>(I)V

    invoke-static {p1, p0, v0}, Lcom/posthog/surveys/SurveyEnumsKt;->access$enumFromValue(Ljava/lang/String;[Ljava/lang/Enum;Lnl3;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    return-object p0
.end method
