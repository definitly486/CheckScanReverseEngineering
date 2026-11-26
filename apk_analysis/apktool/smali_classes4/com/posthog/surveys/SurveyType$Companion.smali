.class public final Lcom/posthog/surveys/SurveyType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/SurveyType;
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

    invoke-direct {p0}, Lcom/posthog/surveys/SurveyType$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/posthog/surveys/SurveyType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/posthog/surveys/SurveyType$Companion;->fromValue$lambda$0(Lcom/posthog/surveys/SurveyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final fromValue$lambda$0(Lcom/posthog/surveys/SurveyType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/posthog/surveys/SurveyType;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyType;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/posthog/surveys/SurveyType;->values()[Lcom/posthog/surveys/SurveyType;

    move-result-object p0

    new-instance v0, Lxy2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lxy2;-><init>(I)V

    invoke-static {p1, p0, v0}, Lcom/posthog/surveys/SurveyEnumsKt;->access$enumFromValue(Ljava/lang/String;[Ljava/lang/Enum;Lnl3;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/SurveyType;

    return-object p0
.end method
