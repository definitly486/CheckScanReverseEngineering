.class public abstract Landroidx/paging/ViewportHint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/ViewportHint$Access;,
        Landroidx/paging/ViewportHint$Initial;,
        Landroidx/paging/ViewportHint$WhenMappings;
    }
.end annotation


# instance fields
.field private final originalPageOffsetFirst:I

.field private final originalPageOffsetLast:I

.field private final presentedItemsAfter:I

.field private final presentedItemsBefore:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    iput p2, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    iput p3, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    iput p4, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILjh2;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/ViewportHint;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/ViewportHint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    check-cast p1, Landroidx/paging/ViewportHint;

    iget v3, p1, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    iget v3, p1, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    iget v3, p1, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    iget p1, p1, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getOriginalPageOffsetFirst()I
    .locals 0

    iget p0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    return p0
.end method

.method public final getOriginalPageOffsetLast()I
    .locals 0

    iget p0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    return p0
.end method

.method public final getPresentedItemsAfter()I
    .locals 0

    iget p0, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    return p0
.end method

.method public final getPresentedItemsBefore()I
    .locals 0

    iget p0, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    iget v1, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/ViewportHint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    return p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return v1

    :cond_1
    iget p0, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    return p0

    :cond_2
    const-string p0, "Cannot get presentedItems for loadType: REFRESH"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v1
.end method
