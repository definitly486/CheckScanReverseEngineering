.class public final enum Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

.field public static final enum EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

.field public static final enum NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 2

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    filled-new-array {v0, v1}, [Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    const-string v1, "EMOJI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    invoke-static {}, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$values()[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    move-result-object v0

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$VALUES:[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$ENTRIES:Lg03;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->value:I

    return-void
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 1

    const-class v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 1

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->$VALUES:[Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->value:I

    return p0
.end method
