.class public final Landroidx/window/embedding/EmbeddingAspectRatio$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildAspectRatioFromValue$window_release(F)Landroidx/window/embedding/EmbeddingAspectRatio;
    .locals 2

    sget-object v0, Landroidx/window/embedding/EmbeddingAspectRatio;->ALWAYS_ALLOW:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v1

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/window/embedding/EmbeddingAspectRatio;->ALWAYS_DISALLOW:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAspectRatio;->getValue$window_release()F

    move-result v1

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAspectRatio$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingAspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public final ratio(F)Landroidx/window/embedding/EmbeddingAspectRatio;
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    new-instance p0, Landroidx/window/embedding/EmbeddingAspectRatio;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ratio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Landroidx/window/embedding/EmbeddingAspectRatio;-><init>(Ljava/lang/String;FLjh2;)V

    return-object p0

    :cond_0
    const-string p0, "Ratio must be greater than 1."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0
.end method
