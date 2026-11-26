.class public final Lzo8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzo8$a;,
        Lzo8$b;,
        Lzo8$c;,
        Lzo8$d;,
        Lzo8$e;,
        Lzo8$f;,
        Lzo8$g;
    }
.end annotation


# instance fields
.field private final a:Lzo8$c;
    .annotation runtime Lbq7;
        value = "headerBanner"
    .end annotation
.end field

.field private final b:Lfo8;
    .annotation runtime Lbq7;
        value = "header"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "listTitle"
    .end annotation
.end field

.field private final d:Lzo8$g;
    .annotation runtime Lbq7;
        value = "tasksPromoBanners"
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfo8;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "listId"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "rankerVersion"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "experimentKey"
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "experimentVariant"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzo8$c;Lfo8;Ljava/lang/String;Lzo8$g;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo8$c;",
            "Lfo8;",
            "Ljava/lang/String;",
            "Lzo8$g;",
            "Ljava/util/List<",
            "Lfo8;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzo8;->a:Lzo8$c;

    iput-object p2, p0, Lzo8;->b:Lfo8;

    iput-object p3, p0, Lzo8;->c:Ljava/lang/String;

    iput-object p4, p0, Lzo8;->d:Lzo8$g;

    iput-object p5, p0, Lzo8;->e:Ljava/util/List;

    iput-object p6, p0, Lzo8;->f:Ljava/lang/String;

    iput-object p7, p0, Lzo8;->g:Ljava/lang/String;

    iput-object p8, p0, Lzo8;->h:Ljava/lang/String;

    iput-object p9, p0, Lzo8;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lzo8$c;Lfo8;Ljava/lang/String;Lzo8$g;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V
    .locals 1

    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_2

    move-object p8, v0

    :cond_2
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_3

    move-object p9, v0

    .line 28
    :cond_3
    invoke-direct/range {p0 .. p9}, Lzo8;-><init>(Lzo8$c;Lfo8;Ljava/lang/String;Lzo8$g;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lfo8;
    .locals 0

    iget-object p0, p0, Lzo8;->b:Lfo8;

    return-object p0
.end method

.method public final d()Lzo8$c;
    .locals 0

    iget-object p0, p0, Lzo8;->a:Lzo8$c;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfo8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lzo8;->e:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzo8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lzo8;

    iget-object v1, p0, Lzo8;->a:Lzo8$c;

    iget-object v3, p1, Lzo8;->a:Lzo8$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lzo8;->b:Lfo8;

    iget-object v3, p1, Lzo8;->b:Lfo8;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lzo8;->c:Ljava/lang/String;

    iget-object v3, p1, Lzo8;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lzo8;->d:Lzo8$g;

    iget-object v3, p1, Lzo8;->d:Lzo8$g;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lzo8;->e:Ljava/util/List;

    iget-object v3, p1, Lzo8;->e:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lzo8;->f:Ljava/lang/String;

    iget-object v3, p1, Lzo8;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lzo8;->g:Ljava/lang/String;

    iget-object v3, p1, Lzo8;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lzo8;->h:Ljava/lang/String;

    iget-object v3, p1, Lzo8;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lzo8;->i:Ljava/lang/String;

    iget-object p1, p1, Lzo8;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lzo8;->a:Lzo8$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lzo8$c;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lzo8;->b:Lfo8;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lfo8;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lzo8;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lzo8;->d:Lzo8$g;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lzo8$g;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lzo8;->e:Ljava/util/List;

    invoke-static {v3, v0, v2}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lzo8;->f:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lzo8;->g:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lzo8;->h:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lzo8;->i:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lzo8$g;
    .locals 0

    iget-object p0, p0, Lzo8;->d:Lzo8$g;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lzo8;->a:Lzo8$c;

    iget-object v1, p0, Lzo8;->b:Lfo8;

    iget-object v2, p0, Lzo8;->c:Ljava/lang/String;

    iget-object v3, p0, Lzo8;->d:Lzo8$g;

    iget-object v4, p0, Lzo8;->e:Ljava/util/List;

    iget-object v5, p0, Lzo8;->f:Ljava/lang/String;

    iget-object v6, p0, Lzo8;->g:Ljava/lang/String;

    iget-object v7, p0, Lzo8;->h:Ljava/lang/String;

    iget-object p0, p0, Lzo8;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TasksMainResponse(headerBanner="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", header="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listTitle="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tasksPromoBanners="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", list="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rankerVersion="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentKey="

    const-string v1, ", experimentVariant="

    invoke-static {v8, v6, v0, v7, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    invoke-static {v8, p0, v0}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
