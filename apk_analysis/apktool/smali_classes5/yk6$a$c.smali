.class public final Lyk6$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk6$a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk6$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk6$a$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "options"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyk6$a$c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z
    .annotation runtime Lbq7;
        value = "required"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "key"
    .end annotation
.end field

.field private final e:Z
    .annotation runtime Lbq7;
        value = "skip"
    .end annotation
.end field

.field private final f:Lyk6$a$d;
    .annotation runtime Lbq7;
        value = "hint"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLyk6$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyk6$a$c$a;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lyk6$a$d;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk6$a$c;->a:Ljava/util/List;

    iput-boolean p2, p0, Lyk6$a$c;->b:Z

    iput-object p3, p0, Lyk6$a$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lyk6$a$c;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lyk6$a$c;->e:Z

    iput-object p6, p0, Lyk6$a$c;->f:Lyk6$a$d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lw56;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lyk6$a$c;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lyk6$a$c$a;

    invoke-virtual {v5}, Lyk6$a$c$a;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    check-cast v3, Lyk6$a$c$a;

    if-eqz v3, :cond_2

    iget-object v2, v0, Lyk6$a$c;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lyk6$a$c$a;->b(Ljava/lang/String;Ljava/lang/String;)Ls56$a;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    :cond_2
    move-object v8, v4

    :goto_1
    iget-object v2, v0, Lyk6$a$c;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyk6$a$c$a;

    iget-object v5, v0, Lyk6$a$c;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lyk6$a$c$a;->b(Ljava/lang/String;Ljava/lang/String;)Ls56$a;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lyk6$a$c;->c:Ljava/lang/String;

    iget-object v11, v0, Lyk6$a$c;->d:Ljava/lang/String;

    iget-boolean v1, v0, Lyk6$a$c;->e:Z

    iget-object v2, v0, Lyk6$a$c;->f:Lyk6$a$d;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lyk6$a$d;->c()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :cond_4
    move-object v9, v4

    :goto_3
    iget-boolean v13, v0, Lyk6$a$c;->b:Z

    if-eqz v8, :cond_5

    iget-object v0, v8, Ls56$a;->d:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v0, v4

    :goto_4
    const-string v2, ""

    if-nez v0, :cond_6

    move-object v14, v2

    goto :goto_5

    :cond_6
    move-object v14, v0

    :goto_5
    if-eqz v8, :cond_7

    iget-object v4, v8, Ls56$a;->d:Ljava/lang/String;

    :cond_7
    if-nez v4, :cond_8

    move-object v15, v2

    goto :goto_6

    :cond_8
    move-object v15, v4

    :goto_6
    new-instance v5, Ls56;

    const v0, 0x7f0801ac

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Ls56;-><init>(Ljava/util/List;Ljava/lang/String;Ls56$a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyk6$a$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyk6$a$c;

    iget-object v1, p0, Lyk6$a$c;->a:Ljava/util/List;

    iget-object v3, p1, Lyk6$a$c;->a:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lyk6$a$c;->b:Z

    iget-boolean v3, p1, Lyk6$a$c;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyk6$a$c;->c:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$c;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyk6$a$c;->d:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$c;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lyk6$a$c;->e:Z

    iget-boolean v3, p1, Lyk6$a$c;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyk6$a$c;->f:Lyk6$a$d;

    iget-object p1, p1, Lyk6$a$c;->f:Lyk6$a$d;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyk6$a$c;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lyk6$a$c;->b:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lyk6$a$c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyk6$a$c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lyk6$a$c;->e:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lyk6$a$c;->f:Lyk6$a$d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyk6$a$d;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyk6$a$c;->a:Ljava/util/List;

    iget-boolean v1, p0, Lyk6$a$c;->b:Z

    iget-object v2, p0, Lyk6$a$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lyk6$a$c;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lyk6$a$c;->e:Z

    iget-object p0, p0, Lyk6$a$c;->f:Lyk6$a$d;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DropDownQuestionResponse(options="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", required="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    const-string v1, ", skip="

    invoke-static {v5, v2, v0, v3, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hint="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
