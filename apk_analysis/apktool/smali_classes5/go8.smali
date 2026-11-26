.class public final Lgo8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgo8$a;,
        Lgo8$b;,
        Lgo8$c;,
        Lgo8$d;
    }
.end annotation


# instance fields
.field private final a:Z
    .annotation runtime Lbq7;
        value = "success"
    .end annotation
.end field

.field private final b:Lgo8$d;
    .annotation runtime Lbq7;
        value = "simpleSuccessBanner"
    .end annotation
.end field

.field private final c:Lgo8$b;
    .annotation runtime Lbq7;
        value = "detailedSuccessBanner"
    .end annotation
.end field

.field private final d:Lgo8$c;
    .annotation runtime Lbq7;
        value = "failBanner"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLgo8$d;Lgo8$b;Lgo8$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgo8;->a:Z

    iput-object p2, p0, Lgo8;->b:Lgo8$d;

    iput-object p3, p0, Lgo8;->c:Lgo8$b;

    iput-object p4, p0, Lgo8;->d:Lgo8$c;

    return-void
.end method


# virtual methods
.method public final a()Lgo8$b;
    .locals 0

    iget-object p0, p0, Lgo8;->c:Lgo8$b;

    return-object p0
.end method

.method public final b()Lgo8$c;
    .locals 0

    iget-object p0, p0, Lgo8;->d:Lgo8$c;

    return-object p0
.end method

.method public final c()Lgo8$d;
    .locals 0

    iget-object p0, p0, Lgo8;->b:Lgo8$d;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lgo8;->a:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lgo8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lgo8;

    iget-boolean v1, p0, Lgo8;->a:Z

    iget-boolean v3, p1, Lgo8;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lgo8;->b:Lgo8$d;

    iget-object v3, p1, Lgo8;->b:Lgo8$d;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lgo8;->c:Lgo8$b;

    iget-object v3, p1, Lgo8;->c:Lgo8$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lgo8;->d:Lgo8$c;

    iget-object p1, p1, Lgo8;->d:Lgo8$c;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lgo8;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgo8;->b:Lgo8$d;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lgo8$d;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgo8;->c:Lgo8$b;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lgo8$b;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lgo8;->d:Lgo8$c;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lgo8$c;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lgo8;->a:Z

    iget-object v1, p0, Lgo8;->b:Lgo8$d;

    iget-object v2, p0, Lgo8;->c:Lgo8$b;

    iget-object p0, p0, Lgo8;->d:Lgo8$c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TaskRewardClaimResponse(success="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", simpleSuccessBanner="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", detailedSuccessBanner="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failBanner="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
