.class public final Lrn9;
.super Lxha;
.source "SourceFile"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lxha;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lxha;->b:I

    iput p3, p0, Lxha;->c:I

    const-string p2, ".m3u8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lrn9;->e:Z

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lrn9;
    .locals 6

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrn9;

    iget v4, v3, Lxha;->c:I

    if-eqz v2, :cond_3

    const/16 v5, 0x168

    if-gt v4, v5, :cond_1

    if-gt v1, v5, :cond_3

    :cond_1
    if-gt v4, v5, :cond_2

    if-gt v4, v1, :cond_3

    :cond_2
    if-le v4, v5, :cond_0

    if-ge v4, v1, :cond_0

    :cond_3
    move-object v2, v3

    move v1, v4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "VideoData: Accepted videoData quality = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "p"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
