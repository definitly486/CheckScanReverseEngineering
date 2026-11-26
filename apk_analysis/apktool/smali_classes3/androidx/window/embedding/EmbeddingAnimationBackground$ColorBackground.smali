.class public final Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;
.super Landroidx/window/embedding/EmbeddingAnimationBackground;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAnimationBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorBackground"
.end annotation


# instance fields
.field private final color:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingAnimationBackground;-><init>(Ljh2;)V

    iput p1, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/16 p1, 0xff

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const-string p0, "Background color must be opaque"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    check-cast p1, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;

    iget p1, p1, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorBackground{color:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
