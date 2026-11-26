.class public final Lwp6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp6$a;,
        Lwp6$b;,
        Lwp6$c;,
        Lwp6$d;,
        Lwp6$e;,
        Lwp6$f;,
        Lwp6$g;,
        Lwp6$h;,
        Lwp6$i;,
        Lwp6$j;,
        Lwp6$k;
    }
.end annotation


# instance fields
.field private final a:Lwp6$b;
    .annotation runtime Lbq7;
        value = "meta"
    .end annotation
.end field

.field private final b:Lwp6$f;
    .annotation runtime Lbq7;
        value = "motivationBanner"
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "promos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwp6$b;Lwp6$f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwp6$b;",
            "Lwp6$f;",
            "Ljava/util/List<",
            "+",
            "Lwp6$h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp6;->a:Lwp6$b;

    iput-object p2, p0, Lwp6;->b:Lwp6$f;

    iput-object p3, p0, Lwp6;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lpp6;
    .locals 9

    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {v0}, Lwp6$b;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lwp6;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lwp6$h;

    instance-of v4, v4, Lwp6$g;

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwp6$h;

    invoke-interface {v1}, Lwp6$h;->a()Lpz3;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lwp6;->b:Lwp6$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {v0}, Lwp6$b;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lwp6;->b:Lwp6$f;

    invoke-virtual {v4}, Lwp6$f;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lwp6;->b:Lwp6$f;

    invoke-virtual {v5}, Lwp6$f;->a()Lwp6$f$a;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v1, Lap6$a;

    invoke-virtual {v5}, Lwp6$f$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lwp6$f$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lap6$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v5, Lap6;

    invoke-direct {v5, v0, v4, v1}, Lap6;-><init>(Ljava/lang/String;Ljava/lang/String;Lap6$a;)V

    move-object v4, v5

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {v0}, Lwp6$b;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {v0}, Lwp6$b;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {v0}, Lwp6$b;->a()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {p0}, Lwp6$b;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lpp6;

    invoke-direct/range {v1 .. v8}, Lpp6;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lap6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwp6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwp6;

    iget-object v1, p0, Lwp6;->a:Lwp6$b;

    iget-object v3, p1, Lwp6;->a:Lwp6$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwp6;->b:Lwp6$f;

    iget-object v3, p1, Lwp6;->b:Lwp6$f;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lwp6;->c:Ljava/util/List;

    iget-object p1, p1, Lwp6;->c:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    invoke-virtual {v0}, Lwp6$b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwp6;->b:Lwp6$f;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lwp6$f;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lwp6;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lwp6;->a:Lwp6$b;

    iget-object v1, p0, Lwp6;->b:Lwp6$f;

    iget-object p0, p0, Lwp6;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PromoTransferShowcaseResponse(meta="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", motivationBanner="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", promos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v0, p0, v2}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
