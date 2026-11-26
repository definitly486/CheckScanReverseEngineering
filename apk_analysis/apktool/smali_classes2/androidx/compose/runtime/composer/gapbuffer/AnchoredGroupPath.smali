.class final Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;
.super Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;
.source "SourceFile"


# instance fields
.field private final group:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;-><init>(Ljh2;)V

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;->group:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;

    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;->group:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;->group:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;->group:I

    return p0
.end method

.method public getIdentity(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;->group:I

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/AnchoredGroupPath;->group:I

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method
