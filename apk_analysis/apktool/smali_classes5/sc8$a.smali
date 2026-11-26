.class public final Lsc8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsc8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "startGradientColor"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "endGradientColor"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "textColor"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "strokeColor"
    .end annotation
.end field

.field private final f:Z
    .annotation runtime Lbq7;
        value = "isStrikethrough"
    .end annotation
.end field

.field private final g:Z
    .annotation runtime Lbq7;
        value = "isWarning"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "warningIconUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc8$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lsc8$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lsc8$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lsc8$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lsc8$a;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lsc8$a;->f:Z

    iput-boolean p7, p0, Lsc8$a;->g:Z

    iput-object p8, p0, Lsc8$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc8$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc8$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc8$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc8$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc8$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsc8$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsc8$a;

    iget-object v1, p0, Lsc8$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lsc8$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lsc8$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lsc8$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lsc8$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lsc8$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lsc8$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lsc8$a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lsc8$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lsc8$a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lsc8$a;->f:Z

    iget-boolean v3, p1, Lsc8$a;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lsc8$a;->g:Z

    iget-boolean v3, p1, Lsc8$a;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lsc8$a;->h:Ljava/lang/String;

    iget-object p1, p1, Lsc8$a;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc8$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lsc8$a;->f:Z

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lsc8$a;->g:Z

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lsc8$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lsc8$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lsc8$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lsc8$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lsc8$a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lsc8$a;->f:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lsc8$a;->g:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lsc8$a;->h:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lsc8$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lsc8$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lsc8$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lsc8$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lsc8$a;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lsc8$a;->f:Z

    iget-boolean v6, p0, Lsc8$a;->g:Z

    iget-object p0, p0, Lsc8$a;->h:Ljava/lang/String;

    const-string v7, ", endGradientColor="

    const-string v8, ", text="

    const-string v9, "BadgeResponse(startGradientColor="

    invoke-static {v9, v0, v7, v1, v8}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textColor="

    const-string v7, ", strokeColor="

    invoke-static {v0, v2, v1, v3, v7}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", isStrikethrough="

    const-string v2, ", isWarning="

    invoke-static {v0, v4, v1, v5, v2}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", warningIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
