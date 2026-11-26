.class final Landroidx/activity/compose/PredictiveBackHandlerInfo;
.super Landroidx/navigationevent/NavigationEventInfo;
.source "SourceFile"


# instance fields
.field private final compositeKey:J

.field private final owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventInfo;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    return-void
.end method

.method public static synthetic copy$default(Landroidx/activity/compose/PredictiveBackHandlerInfo;Ljava/lang/Object;JILjava/lang/Object;)Landroidx/activity/compose/PredictiveBackHandlerInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/activity/compose/PredictiveBackHandlerInfo;->copy(Ljava/lang/Object;J)Landroidx/activity/compose/PredictiveBackHandlerInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/Object;J)Landroidx/activity/compose/PredictiveBackHandlerInfo;
    .locals 0

    new-instance p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;

    invoke-direct {p0, p1, p2, p3}, Landroidx/activity/compose/PredictiveBackHandlerInfo;-><init>(Ljava/lang/Object;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/activity/compose/PredictiveBackHandlerInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/activity/compose/PredictiveBackHandlerInfo;

    iget-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    iget-wide p0, p1, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCompositeKey()J
    .locals 2

    iget-wide v0, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    return-wide v0
.end method

.method public final getOwner()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PredictiveBackHandlerInfo(owner="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->owner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compositeKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/activity/compose/PredictiveBackHandlerInfo;->compositeKey:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
