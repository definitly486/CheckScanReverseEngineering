.class public final Lcz5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz5$a;
    }
.end annotation


# instance fields
.field private final a:J
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "iconUrl"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "subtitle"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "value"
    .end annotation
.end field

.field private final f:Li88;
    .annotation runtime Lbq7;
        value = "status"
    .end annotation
.end field

.field private final g:Lqy5;
    .annotation runtime Lbq7;
        value = "category"
    .end annotation
.end field

.field private final h:Lcz5$a;
    .annotation runtime Lbq7;
        value = "sticker"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li88;Lqy5;Lcz5$a;)V
    .locals 0

    invoke-static {p3, p4, p5, p6}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcz5;->a:J

    iput-object p3, p0, Lcz5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcz5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcz5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcz5;->e:Ljava/lang/String;

    iput-object p7, p0, Lcz5;->f:Li88;

    iput-object p8, p0, Lcz5;->g:Lqy5;

    iput-object p9, p0, Lcz5;->h:Lcz5$a;

    return-void
.end method


# virtual methods
.method public final a()Lqy5;
    .locals 0

    iget-object p0, p0, Lcz5;->g:Lqy5;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcz5;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcz5;->a:J

    return-wide v0
.end method

.method public final d()Li88;
    .locals 0

    iget-object p0, p0, Lcz5;->f:Li88;

    return-object p0
.end method

.method public final e()Lcz5$a;
    .locals 0

    iget-object p0, p0, Lcz5;->h:Lcz5$a;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcz5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcz5;

    iget-wide v3, p0, Lcz5;->a:J

    iget-wide v5, p1, Lcz5;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcz5;->b:Ljava/lang/String;

    iget-object v3, p1, Lcz5;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcz5;->c:Ljava/lang/String;

    iget-object v3, p1, Lcz5;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcz5;->d:Ljava/lang/String;

    iget-object v3, p1, Lcz5;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcz5;->e:Ljava/lang/String;

    iget-object v3, p1, Lcz5;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcz5;->f:Li88;

    iget-object v3, p1, Lcz5;->f:Li88;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcz5;->g:Lqy5;

    iget-object v3, p1, Lcz5;->g:Lqy5;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcz5;->h:Lcz5$a;

    iget-object p1, p1, Lcz5;->h:Lcz5$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcz5;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcz5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcz5;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcz5;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcz5;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcz5;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcz5;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcz5;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcz5;->f:Li88;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Li88;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcz5;->g:Lqy5;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcz5;->h:Lcz5$a;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcz5$a;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcz5;->a:J

    iget-object v2, p0, Lcz5;->b:Ljava/lang/String;

    iget-object v3, p0, Lcz5;->c:Ljava/lang/String;

    iget-object v4, p0, Lcz5;->d:Ljava/lang/String;

    iget-object v5, p0, Lcz5;->e:Ljava/lang/String;

    iget-object v6, p0, Lcz5;->f:Li88;

    iget-object v7, p0, Lcz5;->g:Lqy5;

    iget-object p0, p0, Lcz5;->h:Lcz5$a;

    const-string v8, "OperationPlain(id="

    const-string v9, ", iconUrl="

    invoke-static {v0, v1, v8, v9, v2}, Lah;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    const-string v2, ", subtitle="

    invoke-static {v0, v1, v3, v2, v4}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
