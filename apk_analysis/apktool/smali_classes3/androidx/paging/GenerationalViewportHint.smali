.class public final Landroidx/paging/GenerationalViewportHint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final generationId:I

.field private final hint:Landroidx/paging/ViewportHint;


# direct methods
.method public constructor <init>(ILandroidx/paging/ViewportHint;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    iput-object p2, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/paging/GenerationalViewportHint;ILandroidx/paging/ViewportHint;ILjava/lang/Object;)Landroidx/paging/GenerationalViewportHint;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/paging/GenerationalViewportHint;->copy(ILandroidx/paging/ViewportHint;)Landroidx/paging/GenerationalViewportHint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    return p0
.end method

.method public final component2()Landroidx/paging/ViewportHint;
    .locals 0

    iget-object p0, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    return-object p0
.end method

.method public final copy(ILandroidx/paging/ViewportHint;)Landroidx/paging/GenerationalViewportHint;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/paging/GenerationalViewportHint;

    invoke-direct {p0, p1, p2}, Landroidx/paging/GenerationalViewportHint;-><init>(ILandroidx/paging/ViewportHint;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/GenerationalViewportHint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/paging/GenerationalViewportHint;

    iget v1, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    iget v3, p1, Landroidx/paging/GenerationalViewportHint;->generationId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    iget-object p1, p1, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGenerationId()I
    .locals 0

    iget p0, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    return p0
.end method

.method public final getHint()Landroidx/paging/ViewportHint;
    .locals 0

    iget-object p0, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    invoke-virtual {p0}, Landroidx/paging/ViewportHint;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GenerationalViewportHint(generationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
