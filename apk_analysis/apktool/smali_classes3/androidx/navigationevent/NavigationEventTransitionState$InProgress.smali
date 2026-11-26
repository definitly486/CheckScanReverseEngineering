.class public final Landroidx/navigationevent/NavigationEventTransitionState$InProgress;
.super Landroidx/navigationevent/NavigationEventTransitionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigationevent/NavigationEventTransitionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation


# instance fields
.field private final direction:I

.field private final latestEvent:Landroidx/navigationevent/NavigationEvent;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEvent;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/navigationevent/NavigationEventTransitionState;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    iput p2, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->direction:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    iget v2, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->direction:I

    iget v3, p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->direction:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    iget-object p1, p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getDirection()I
    .locals 0

    iget p0, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->direction:I

    return p0
.end method

.method public final getLatestEvent()Landroidx/navigationevent/NavigationEvent;
    .locals 0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->direction:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEvent;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InProgress(latestEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->direction:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
