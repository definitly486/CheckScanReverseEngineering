.class public final Lyk6$a$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk6$a$h$a;
    }
.end annotation


# instance fields
.field private final a:Z
    .annotation runtime Lbq7;
        value = "required"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "key"
    .end annotation
.end field

.field private final d:Z
    .annotation runtime Lbq7;
        value = "skip"
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "options"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyk6$a$h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lyk6$a$h$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyk6$a$h;->a:Z

    iput-object p2, p0, Lyk6$a$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lyk6$a$h;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lyk6$a$h;->d:Z

    iput-object p5, p0, Lyk6$a$h;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lw56;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lyk6$a$h;->b:Ljava/lang/String;

    iget-object v4, v0, Lyk6$a$h;->c:Ljava/lang/String;

    iget-boolean v6, v0, Lyk6$a$h;->a:Z

    iget-object v2, v0, Lyk6$a$h;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyk6$a$h$a;

    invoke-virtual {v7}, Lyk6$a$h$a;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lyk6$a$h$a;->a()Ljava/lang/String;

    move-result-object v13

    iget-object v12, v0, Lyk6$a$h;->c:Ljava/lang/String;

    invoke-virtual {v7}, Lyk6$a$h$a;->b()Z

    move-result v14

    invoke-virtual {v7}, Lyk6$a$h$a;->c()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyk6$a$c;

    move-object/from16 v11, p1

    invoke-virtual {v9, v11}, Lyk6$a$c;->a(Ljava/lang/String;)Lw56;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v11, p1

    if-nez v8, :cond_1

    sget-object v8, Lkx2;->b:Lkx2;

    :cond_1
    move-object v15, v8

    new-instance v9, Lj56;

    invoke-direct/range {v9 .. v15}, Lj56;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lyk6$a$h;->d:Z

    iget-object v5, v0, Lyk6$a$h;->e:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lyk6$a$h$a;

    invoke-virtual {v9}, Lyk6$a$h$a;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_4
    move-object v7, v8

    :goto_2
    check-cast v7, Lyk6$a$h$a;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lyk6$a$h$a;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    move-object v5, v8

    :goto_3
    const-string v7, ""

    if-nez v5, :cond_6

    move-object v5, v7

    :cond_6
    iget-object v0, v0, Lyk6$a$h;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lyk6$a$h$a;

    invoke-virtual {v10}, Lyk6$a$h$a;->b()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_8
    move-object v9, v8

    :goto_4
    check-cast v9, Lyk6$a$h$a;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lyk6$a$h$a;->a()Ljava/lang/String;

    move-result-object v8

    :cond_9
    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    move-object v7, v8

    :goto_5
    new-instance v0, Lo66;

    move v8, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lo66;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyk6$a$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyk6$a$h;

    iget-boolean v1, p0, Lyk6$a$h;->a:Z

    iget-boolean v3, p1, Lyk6$a$h;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyk6$a$h;->b:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$h;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyk6$a$h;->c:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$h;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lyk6$a$h;->d:Z

    iget-boolean v3, p1, Lyk6$a$h;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lyk6$a$h;->e:Ljava/util/List;

    iget-object p1, p1, Lyk6$a$h;->e:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lyk6$a$h;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyk6$a$h;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyk6$a$h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lyk6$a$h;->d:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lyk6$a$h;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lyk6$a$h;->a:Z

    iget-object v1, p0, Lyk6$a$h;->b:Ljava/lang/String;

    iget-object v2, p0, Lyk6$a$h;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lyk6$a$h;->d:Z

    iget-object p0, p0, Lyk6$a$h;->e:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SingleChoiceQuestionResponse(required="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skip="

    const-string v1, ", options="

    invoke-static {v4, v2, v0, v3, v1}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, ")"

    invoke-static {v0, p0, v4}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
