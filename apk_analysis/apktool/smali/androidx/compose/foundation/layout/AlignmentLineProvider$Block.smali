.class public final Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;
.super Landroidx/compose/foundation/layout/AlignmentLineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/AlignmentLineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Block"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/AlignmentLineProvider;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;ILjava/lang/Object;)Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->copy(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;->calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Measured;)I

    move-result p0

    return p0
.end method

.method public final component1()Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-object p0
.end method

.method public final copy(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;-><init>(Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    iget-object p1, p1, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLineProviderBlock()Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Block(lineProviderBlock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Block;->lineProviderBlock:Landroidx/compose/foundation/layout/AlignmentLineProviderBlock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
