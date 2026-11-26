.class public final Lei2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfx5;


# instance fields
.field public final a:Lfx5$a;

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "imageUrl"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final e:Lzv0;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final f:Lzv0;
    .annotation runtime Lbq7;
        value = "secondaryButton"
    .end annotation
.end field

.field private final g:Z
    .annotation runtime Lbq7;
        value = "return"
    .end annotation
.end field

.field private final h:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "showConfetti"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfx5$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzv0;Lzv0;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lei2;->a:Lfx5$a;

    iput-object p2, p0, Lei2;->b:Ljava/lang/String;

    iput-object p3, p0, Lei2;->c:Ljava/lang/String;

    iput-object p4, p0, Lei2;->d:Ljava/lang/String;

    iput-object p5, p0, Lei2;->e:Lzv0;

    iput-object p6, p0, Lei2;->f:Lzv0;

    iput-boolean p7, p0, Lei2;->g:Z

    iput-object p8, p0, Lei2;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lfx5$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzv0;Lzv0;ZLjava/lang/Boolean;ILjh2;)V
    .locals 0

    and-int/lit8 p9, p9, 0x1

    if-eqz p9, :cond_0

    .line 32
    sget-object p1, Lfx5$a;->DEFAULT:Lfx5$a;

    :cond_0
    move p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 33
    invoke-direct/range {p2 .. p10}, Lei2;-><init>(Lfx5$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzv0;Lzv0;ZLjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lei2;->g:Z

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lei2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lzv0;
    .locals 0

    iget-object p0, p0, Lei2;->e:Lzv0;

    return-object p0
.end method

.method public final d()Lzv0;
    .locals 0

    iget-object p0, p0, Lei2;->f:Lzv0;

    return-object p0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lei2;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lei2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lei2;

    iget-object v1, p0, Lei2;->a:Lfx5$a;

    iget-object v3, p1, Lei2;->a:Lfx5$a;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lei2;->b:Ljava/lang/String;

    iget-object v3, p1, Lei2;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lei2;->c:Ljava/lang/String;

    iget-object v3, p1, Lei2;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lei2;->d:Ljava/lang/String;

    iget-object v3, p1, Lei2;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lei2;->e:Lzv0;

    iget-object v3, p1, Lei2;->e:Lzv0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lei2;->f:Lzv0;

    iget-object v3, p1, Lei2;->f:Lzv0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lei2;->g:Z

    iget-boolean v3, p1, Lei2;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lei2;->h:Ljava/lang/Boolean;

    iget-object p1, p1, Lei2;->h:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lei2;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lei2;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lei2;->a:Lfx5$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lei2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lei2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lei2;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lei2;->e:Lzv0;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lzv0;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lei2;->f:Lzv0;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lzv0;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lei2;->g:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lei2;->h:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lei2;->b:Ljava/lang/String;

    iget-object v1, p0, Lei2;->c:Ljava/lang/String;

    iget-object v2, p0, Lei2;->d:Ljava/lang/String;

    iget-object v3, p0, Lei2;->e:Lzv0;

    iget-object v4, p0, Lei2;->f:Lzv0;

    iget-boolean v5, p0, Lei2;->g:Z

    iget-object v6, p0, Lei2;->h:Ljava/lang/Boolean;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DefaultOnboardingSlideResponse(type="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lei2;->a:Lfx5$a;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", imageUrl="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", title="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", text="

    const-string v0, ", mainButton="

    invoke-static {v7, v1, p0, v2, v0}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", secondaryButton="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", canGoBack="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", showConfetti="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
