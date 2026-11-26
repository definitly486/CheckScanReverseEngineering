.class public final Lwh7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lvg7;

.field public final d:J

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJLjava/lang/String;I)V
    .locals 2

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    sget-object v0, Lvg7;->Default:Lvg7;

    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_1

    const-wide/16 p3, -0x1

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    new-instance p5, Ljava/lang/String;

    invoke-direct {p5}, Ljava/lang/String;-><init>()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh7;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lwh7;->b:Z

    iput-object v0, p0, Lwh7;->c:Lvg7;

    iput-wide p3, p0, Lwh7;->d:J

    iput-object p5, p0, Lwh7;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 7

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;-><init>()V

    new-instance v0, Lsf3;

    iget-object v1, p0, Lwh7;->a:Ljava/lang/String;

    iget-object v2, p0, Lwh7;->c:Lvg7;

    iget-boolean v3, p0, Lwh7;->b:Z

    iget-wide v4, p0, Lwh7;->d:J

    iget-object v6, p0, Lwh7;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lsf3;-><init>(Ljava/lang/String;Lvg7;ZJLjava/lang/String;)V

    invoke-virtual {v0}, Lsf3;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lwh7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lwh7;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lwh7;

    iget-object v0, p0, Lwh7;->a:Ljava/lang/String;

    iget-object v1, p1, Lwh7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lwh7;->b:Z

    iget-boolean v1, p1, Lwh7;->b:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lwh7;->c:Lvg7;

    iget-object v1, p1, Lwh7;->c:Lvg7;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lwh7;->d:J

    iget-wide v2, p1, Lwh7;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lwh7;->e:Ljava/lang/String;

    iget-object p1, p1, Lwh7;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lwh7;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lwh7;->b:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lwh7;->c:Lvg7;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lwh7;->d:J

    invoke-static {v2, v1, v3, v4}, Lvg;->b(IIJ)I

    move-result v0

    iget-object p0, p0, Lwh7;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", toScan="

    const-string v1, ", fromWeb="

    const-string v2, "RequestsFlow(qrCode="

    iget-object v3, p0, Lwh7;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lwh7;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwh7;->c:Lvg7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lwh7;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fromType="

    const-string v2, ")"

    iget-object p0, p0, Lwh7;->e:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
