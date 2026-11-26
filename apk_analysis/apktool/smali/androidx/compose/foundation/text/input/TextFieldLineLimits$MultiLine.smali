.class public final Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/input/TextFieldLineLimits;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/input/TextFieldLineLimits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiLine"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final maxHeightInLines:I

.field private final minHeightInLines:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;-><init>(IIILjh2;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->minHeightInLines:I

    iput p2, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->maxHeightInLines:I

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    if-gt p1, p2, :cond_0

    move p0, v0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected 1 \u2264 minHeightInLines \u2264 maxHeightInLines, were "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(IIILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;-><init>(II)V

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

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;

    iget v2, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->minHeightInLines:I

    iget v3, p1, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->minHeightInLines:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget p0, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->maxHeightInLines:I

    iget p1, p1, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->maxHeightInLines:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final getMaxHeightInLines()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->maxHeightInLines:I

    return p0
.end method

.method public final getMinHeightInLines()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->minHeightInLines:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->minHeightInLines:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->maxHeightInLines:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiLine(minHeightInLines="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->minHeightInLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeightInLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/text/input/TextFieldLineLimits$MultiLine;->maxHeightInLines:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
