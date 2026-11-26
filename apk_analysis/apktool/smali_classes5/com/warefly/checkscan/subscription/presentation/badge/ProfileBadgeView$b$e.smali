.class public final Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;
.super Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/Integer;

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Integer;Z)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->c:I

    iput p4, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->d:I

    iput p5, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->e:I

    iput-object p6, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    iput-boolean p7, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->g:Z

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->e:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->d:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    iget-object v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->c:I

    iget v3, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->d:I

    iget v3, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->e:I

    iget v3, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->g:Z

    iget-boolean p1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->c:I

    invoke-static {v3, v1, v2}, Lej0;->b(III)I

    move-result v1

    iget v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->d:I

    invoke-static {v3, v1, v2}, Lej0;->b(III)I

    move-result v1

    iget v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->e:I

    invoke-static {v3, v1, v2}, Lej0;->b(III)I

    move-result v1

    iget-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", titleColor="

    const-string v2, "Subscription(avatarUrl="

    iget-object v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startGradientColor="

    const-string v2, ", endGradientColor="

    iget v3, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->c:I

    iget v4, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->d:I

    invoke-static {v0, v3, v1, v4, v2}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStrikeThruText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;->g:Z

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
