.class public final Lmh7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lkd$o0;

.field public final e:Luv7;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkd$o0;Luv7;I)V
    .locals 6

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 23
    sget-object p3, Lkd$o0;->Bonuses:Lkd$o0;

    :cond_0
    move-object v4, p3

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lmh7;-><init>(ILjava/lang/String;ZLkd$o0;Luv7;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLkd$o0;Luv7;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmh7;->a:I

    iput-object p2, p0, Lmh7;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lmh7;->c:Z

    iput-object p4, p0, Lmh7;->d:Lkd$o0;

    iput-object p5, p0, Lmh7;->e:Luv7;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 4

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;-><init>()V

    iget-object v0, p0, Lmh7;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lmh7;->e:Luv7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lmh7;->d:Lkd$o0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lbr0;

    iget p0, p0, Lmh7;->a:I

    invoke-direct {v3, v0, p0, v1, v2}, Lbr0;-><init>(Ljava/lang/String;ILuv7;Lkd$o0;)V

    invoke-virtual {v3}, Lbr0;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lmh7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lmh7;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lmh7;

    iget v0, p0, Lmh7;->a:I

    iget v1, p1, Lmh7;->a:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmh7;->b:Ljava/lang/String;

    iget-object v1, p1, Lmh7;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lmh7;->c:Z

    iget-boolean v1, p1, Lmh7;->c:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmh7;->d:Lkd$o0;

    iget-object v1, p1, Lmh7;->d:Lkd$o0;

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lmh7;->e:Luv7;

    iget-object p1, p1, Lmh7;->e:Luv7;

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lmh7;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lmh7;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lmh7;->c:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lmh7;->d:Lkd$o0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lmh7;->e:Luv7;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", toolbarTitle="

    const-string v1, ", isTopSelection="

    iget v2, p0, Lmh7;->a:I

    const-string v3, "OnlineShops(shopsId="

    iget-object v4, p0, Lmh7;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmh7;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selectedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh7;->d:Lkd$o0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmh7;->e:Luv7;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
