.class public final Lk70$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk70$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "subBlocks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk70$e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "preview"
    .end annotation
.end field

.field public final d:Lk70$b$a;


# direct methods
.method public constructor <init>(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk70$e;",
            ">;IZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$f;->a:Ljava/util/List;

    iput p2, p0, Lk70$f;->b:I

    iput-boolean p3, p0, Lk70$f;->c:Z

    sget-object p1, Lk70$b$a;->HEADER_LOGO_BANNERS:Lk70$b$a;

    iput-object p1, p0, Lk70$f;->d:Lk70$b$a;

    return-void
.end method


# virtual methods
.method public final a()Lhk9;
    .locals 3

    iget-object v0, p0, Lk70$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lk70$f;->b:I

    iget-object p0, p0, Lk70$f;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Lk70$f$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v1}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk70$e;

    invoke-virtual {v2}, Lk70$e;->b()Lnj9;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Loj9;

    invoke-direct {p0, v0, v1}, Loj9;-><init>(ILjava/util/ArrayList;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lk70$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lk70$f;->a:Ljava/util/List;

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk70$e;

    invoke-virtual {p0}, Lk70$e;->b()Lnj9;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lk70$f;->b:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lk70$f;->c:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$f;

    iget-object v1, p0, Lk70$f;->a:Ljava/util/List;

    iget-object v3, p1, Lk70$f;->a:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lk70$f;->b:I

    iget v3, p1, Lk70$f;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lk70$f;->c:Z

    iget-boolean p1, p1, Lk70$f;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getType()Lk70$b$a;
    .locals 0

    iget-object p0, p0, Lk70$f;->d:Lk70$b$a;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk70$f;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lk70$f;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean p0, p0, Lk70$f;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lk70$f;->a:Ljava/util/List;

    iget v1, p0, Lk70$f;->b:I

    iget-boolean p0, p0, Lk70$f;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HeaderLogoBannersBlockResponse(subBlocks="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sort="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", preview="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
