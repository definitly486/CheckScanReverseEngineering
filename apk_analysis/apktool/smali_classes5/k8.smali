.class public Lk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnm3;
.implements Ljava/io/Serializable;


# instance fields
.field private final arity:I

.field private final flags:I

.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 28
    sget-object v2, Lqy0;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lk8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk8;->receiver:Ljava/lang/Object;

    iput-object p3, p0, Lk8;->owner:Ljava/lang/Class;

    iput-object p4, p0, Lk8;->name:Ljava/lang/String;

    iput-object p5, p0, Lk8;->signature:Ljava/lang/String;

    and-int/lit8 p2, p6, 0x1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lk8;->isTopLevel:Z

    iput p1, p0, Lk8;->arity:I

    shr-int/lit8 p1, p6, 0x1

    iput p1, p0, Lk8;->flags:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk8;

    iget-boolean v1, p0, Lk8;->isTopLevel:Z

    iget-boolean v3, p1, Lk8;->isTopLevel:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lk8;->arity:I

    iget v3, p1, Lk8;->arity:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lk8;->flags:I

    iget v3, p1, Lk8;->flags:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lk8;->receiver:Ljava/lang/Object;

    iget-object v3, p1, Lk8;->receiver:Ljava/lang/Object;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk8;->owner:Ljava/lang/Class;

    iget-object v3, p1, Lk8;->owner:Ljava/lang/Class;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk8;->name:Ljava/lang/String;

    iget-object v3, p1, Lk8;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lk8;->signature:Ljava/lang/String;

    iget-object p1, p1, Lk8;->signature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Lk8;->arity:I

    return p0
.end method

.method public getOwner()Lpe4;
    .locals 1

    iget-object v0, p0, Lk8;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lk8;->isTopLevel:Z

    if-eqz p0, :cond_1

    sget-object p0, Lx07;->a:La17;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lg16;

    invoke-direct {p0, v0}, Lg16;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_1
    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lk8;->receiver:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lk8;->owner:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lk8;->name:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lk8;->signature:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lk8;->isTopLevel:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_2
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lk8;->arity:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget p0, p0, Lk8;->flags:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx07;->a:La17;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, La17;->a(Lnm3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
