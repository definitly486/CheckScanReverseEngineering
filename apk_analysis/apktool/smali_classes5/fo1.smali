.class public final Lfo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfo1$a;
    }
.end annotation


# instance fields
.field public final b:Lo22;

.field public final c:Lo22$a;


# direct methods
.method public constructor <init>(Lo22$a;Lo22;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfo1;->b:Lo22;

    iput-object p1, p0, Lfo1;->c:Lo22$a;

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lfo1;->b()I

    move-result v0

    new-array v1, v0, [Lo22;

    new-instance v2, Lp07;

    invoke-direct {v2}, Lp07;-><init>()V

    sget-object v3, Lj59;->a:Lj59;

    new-instance v4, Ldo1;

    invoke-direct {v4, v1, v2}, Ldo1;-><init>([Lo22;Lp07;)V

    invoke-virtual {p0, v3, v4}, Lfo1;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    iget p0, v2, Lp07;->b:I

    if-ne p0, v0, :cond_0

    new-instance p0, Lfo1$a;

    invoke-direct {p0, v1}, Lfo1$a;-><init>([Lo22;)V

    return-object p0

    :cond_0
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, Lfo1;->b:Lo22;

    instance-of v1, p0, Lfo1;

    if-eqz v1, :cond_0

    check-cast p0, Lfo1;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-eq p0, p1, :cond_3

    instance-of v0, p1, Lfo1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lfo1;

    invoke-virtual {p1}, Lfo1;->b()I

    move-result v0

    invoke-virtual {p0}, Lfo1;->b()I

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_0
    iget-object v0, p0, Lfo1;->c:Lo22$a;

    invoke-interface {v0}, Lo22$a;->getKey()Lo22$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lfo1;->get(Lo22$b;)Lo22$a;

    move-result-object v2

    invoke-static {v2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lfo1;->b:Lo22;

    instance-of v0, p0, Lfo1;

    if-eqz v0, :cond_1

    check-cast p0, Lfo1;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lo22$a;

    invoke-interface {p0}, Lo22$a;->getKey()Lo22$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfo1;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lfo1;->b:Lo22;

    invoke-interface {v0, p1, p2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lfo1;->c:Lo22$a;

    invoke-interface {p2, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lo22$b;)Lo22$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v0, p0, Lfo1;->c:Lo22$a;

    invoke-interface {v0, p1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lfo1;->b:Lo22;

    instance-of v0, p0, Lfo1;

    if-eqz v0, :cond_1

    check-cast p0, Lfo1;

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lfo1;->b:Lo22;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lfo1;->c:Lo22$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final minusKey(Lo22$b;)Lo22;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lfo1;->c:Lo22$a;

    invoke-interface {v0, p1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    iget-object v2, p0, Lfo1;->b:Lo22;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lgx2;->b:Lgx2;

    if-ne p1, p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lfo1;

    invoke-direct {p0, v0, p1}, Lfo1;-><init>(Lo22$a;Lo22;)V

    return-object p0
.end method

.method public final plus(Lo22;)Lo22;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lgx2;->b:Lgx2;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lht1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lht1;-><init>(I)V

    invoke-interface {p1, p0, v0}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo22;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Leo1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Leo1;-><init>(I)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lfo1;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
