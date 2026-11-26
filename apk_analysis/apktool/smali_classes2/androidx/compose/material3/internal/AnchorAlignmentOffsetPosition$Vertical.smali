.class public final Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/internal/MenuPosition$Vertical;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vertical"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field private final menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field private final offset:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p2, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput p3, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    return-void
.end method

.method private final component1()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method private final component2()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method private final component3()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    return p0
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILjava/lang/Object;)Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->copy(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;
    .locals 0

    new-instance p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    iget-object v1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v3, p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v3, p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    iget p1, p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public position-JVtK1S4(Landroidx/compose/ui/unit/IntRect;JI)I
    .locals 1

    iget-object p2, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-interface {p2, v0, p3}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p2

    iget-object p3, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-interface {p3, v0, p4}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iget p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    add-int/2addr p1, p0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vertical(menuAlignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->menuAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anchorAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->anchorAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;->offset:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
