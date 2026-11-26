.class final Landroidx/compose/runtime/retain/RetainKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final keys:[Ljava/lang/Object;

.field private final positionalKey:J

.field private final typeHash:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/retain/RetainKeys;->keys:[Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/runtime/retain/RetainKeys;->positionalKey:J

    iput p4, p0, Landroidx/compose/runtime/retain/RetainKeys;->typeHash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroidx/compose/runtime/retain/RetainKeys;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/retain/RetainKeys;

    iget-wide v0, p1, Landroidx/compose/runtime/retain/RetainKeys;->positionalKey:J

    iget-wide v2, p0, Landroidx/compose/runtime/retain/RetainKeys;->positionalKey:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/compose/runtime/retain/RetainKeys;->typeHash:I

    iget v1, p0, Landroidx/compose/runtime/retain/RetainKeys;->typeHash:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/compose/runtime/retain/RetainKeys;->keys:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainKeys;->keys:[Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getPositionalKey()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/retain/RetainKeys;->positionalKey:J

    return-wide v0
.end method

.method public final getTypeHash()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/retain/RetainKeys;->typeHash:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/retain/RetainKeys;->keys:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/runtime/retain/RetainKeys;->positionalKey:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/retain/RetainKeys;->typeHash:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
