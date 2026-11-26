.class public final Lcom/posthog/surveys/PostHogDisplaySurvey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;


# instance fields
.field private final appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

.field private final endDate:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private final startDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurvey;->Companion:Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;",
            ">;",
            "Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    iput-object p4, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    iput-object p5, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    iput-object p6, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;ILjh2;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move-object p6, v0

    .line 25
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/posthog/surveys/PostHogDisplaySurvey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/PostHogDisplaySurvey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogDisplaySurvey;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/posthog/surveys/PostHogDisplaySurvey;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)Lcom/posthog/surveys/PostHogDisplaySurvey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    return-object p0
.end method

.method public final component5()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public final component6()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)Lcom/posthog/surveys/PostHogDisplaySurvey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;",
            ">;",
            "Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/posthog/surveys/PostHogDisplaySurvey;

    invoke-direct/range {p0 .. p6}, Lcom/posthog/surveys/PostHogDisplaySurvey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/PostHogDisplaySurvey;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAppearance()Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    return-object p0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    return-object p0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostHogDisplaySurvey(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", questions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->questions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->appearance:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurvey;->endDate:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
