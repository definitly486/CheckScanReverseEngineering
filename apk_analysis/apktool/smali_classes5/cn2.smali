.class public final Lcn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcn2;->d:I

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v0, "both"

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v0, "insert"

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const-string v0, "remove"

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "none"

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget v2, p0, Lcn2;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcn2;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcn2;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p0, p0, Lcn2;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[ DiffMeasures type=%s, diffStartPosition=%d, diffInsertLength=%d, diffRemoveLength=%d, cursor: %d ]"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "unknown behaviour for diffType "

    iget p0, p0, Lcn2;->d:I

    invoke-static {p0, v0}, Lj2;->c(ILjava/lang/String;)V

    return-object v2
.end method
