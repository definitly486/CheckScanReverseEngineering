.class final Landroidx/window/embedding/EmbeddingAnimationBackground$DefaultBackground;
.super Landroidx/window/embedding/EmbeddingAnimationBackground;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAnimationBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultBackground"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingAnimationBackground;-><init>(Ljh2;)V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingAnimationBackground$DefaultBackground;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DefaultBackground"

    return-object p0
.end method
