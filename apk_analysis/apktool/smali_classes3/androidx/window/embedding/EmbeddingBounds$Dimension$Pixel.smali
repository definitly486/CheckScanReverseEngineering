.class public final Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;
.super Landroidx/window/embedding/EmbeddingBounds$Dimension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingBounds$Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pixel"
.end annotation


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "dimension in pixel:"

    invoke-static {p1, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Pixel value must be a positive integer."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final compareTo$window_release(I)I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getValue$window_release()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    return p0
.end method
