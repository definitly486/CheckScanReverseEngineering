.class public final Landroidx/compose/material3/internal/BackEventProgress$InProgress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/internal/BackEventProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/internal/BackEventProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final progress:F

.field private final swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

.field private final touchX:F

.field private final touchY:F


# direct methods
.method public constructor <init>(FFFLandroidx/compose/material3/internal/SwipeEdge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    iput p2, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    iput p3, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    iput-object p4, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/internal/BackEventProgress$InProgress;FFFLandroidx/compose/material3/internal/SwipeEdge;ILjava/lang/Object;)Landroidx/compose/material3/internal/BackEventProgress$InProgress;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->copy(FFFLandroidx/compose/material3/internal/SwipeEdge;)Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    return p0
.end method

.method public final component4()Landroidx/compose/material3/internal/SwipeEdge;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    return-object p0
.end method

.method public final copy(FFFLandroidx/compose/material3/internal/SwipeEdge;)Landroidx/compose/material3/internal/BackEventProgress$InProgress;
    .locals 0

    new-instance p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/BackEventProgress$InProgress;-><init>(FFFLandroidx/compose/material3/internal/SwipeEdge;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;

    iget v1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    iget v3, p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    iget v3, p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    iget v3, p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    iget-object p1, p1, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    return p0
.end method

.method public final getSwipeEdge()Landroidx/compose/material3/internal/SwipeEdge;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    return-object p0
.end method

.method public final getTouchX()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    return p0
.end method

.method public final getTouchY()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InProgress(touchX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->touchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", swipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/material3/internal/BackEventProgress$InProgress;->swipeEdge:Landroidx/compose/material3/internal/SwipeEdge;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
