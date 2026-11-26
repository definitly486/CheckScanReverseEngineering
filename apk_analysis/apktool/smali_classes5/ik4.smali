.class public final Lik4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyi4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Lqv6;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lqv6;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLqv6;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 40
    invoke-direct/range {v0 .. v9}, Lik4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZZLqv6;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZZLqv6;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lik4;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lik4;->b:Z

    iput-object p3, p0, Lik4;->c:Ljava/lang/String;

    iput-object p4, p0, Lik4;->d:Ljava/lang/String;

    iput p5, p0, Lik4;->e:I

    iput-boolean p6, p0, Lik4;->f:Z

    iput-boolean p7, p0, Lik4;->g:Z

    iput-object p8, p0, Lik4;->h:Lqv6;

    iput p9, p0, Lik4;->i:I

    iput-object p1, p0, Lik4;->j:Ljava/lang/String;

    iput-object p4, p0, Lik4;->k:Ljava/lang/String;

    iput-object p8, p0, Lik4;->l:Lqv6;

    return-void
.end method

.method public static d(Lik4;Ljava/lang/String;ZI)Lik4;
    .locals 10

    iget-object v1, p0, Lik4;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lik4;->b:Z

    iget-object v3, p0, Lik4;->c:Ljava/lang/String;

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lik4;->d:Ljava/lang/String;

    :cond_0
    move-object v4, p1

    iget v5, p0, Lik4;->e:I

    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lik4;->f:Z

    :cond_1
    move v6, p2

    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lik4;->g:Z

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lik4;->h:Lqv6;

    and-int/lit16 p1, p3, 0x100

    if-eqz p1, :cond_3

    iget p0, p0, Lik4;->i:I

    :goto_2
    move v9, p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x6

    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lik4;

    invoke-direct/range {v0 .. v9}, Lik4;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZZLqv6;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lik4;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lik4;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lik4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lik4;

    iget-object v1, p0, Lik4;->a:Ljava/lang/String;

    iget-object v3, p1, Lik4;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lik4;->b:Z

    iget-boolean v3, p1, Lik4;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lik4;->c:Ljava/lang/String;

    iget-object v3, p1, Lik4;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lik4;->d:Ljava/lang/String;

    iget-object v3, p1, Lik4;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lik4;->e:I

    iget v3, p1, Lik4;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lik4;->f:Z

    iget-boolean v3, p1, Lik4;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lik4;->g:Z

    iget-boolean v3, p1, Lik4;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lik4;->h:Lqv6;

    iget-object v3, p1, Lik4;->h:Lqv6;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget p0, p0, Lik4;->i:I

    iget p1, p1, Lik4;->i:I

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lik4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lik4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lik4;->g:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Lqv6;
    .locals 0

    iget-object p0, p0, Lik4;->l:Lqv6;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lik4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lik4;->b:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lik4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lik4;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lik4;->e:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lik4;->f:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lik4;->g:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lik4;->h:Lqv6;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lik4;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lik4;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", required="

    const-string v1, ", title="

    const-string v2, "LandingTextFieldWithBackgroundViewModel(key="

    iget-object v3, p0, Lik4;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lik4;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    const-string v2, ", inputType="

    iget-object v3, p0, Lik4;->c:Ljava/lang/String;

    iget-object v4, p0, Lik4;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lik4;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lik4;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lik4;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", questionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lik4;->h:Lqv6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lik4;->i:I

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
