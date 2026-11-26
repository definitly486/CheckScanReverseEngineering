.class public final Lyk6$a$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "value"
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

.field private final d:Z
    .annotation runtime Lbq7;
        value = "skip"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "key"
    .end annotation
.end field

.field private final f:Lyk6$a$d;
    .annotation runtime Lbq7;
        value = "hint"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lyk6$a$d;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk6$a$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lyk6$a$a;->b:Z

    iput-object p3, p0, Lyk6$a$a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lyk6$a$a;->d:Z

    iput-object p5, p0, Lyk6$a$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lyk6$a$a;->f:Lyk6$a$d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lw56;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lm56;

    iget-object v1, p0, Lyk6$a$a;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lyk6$a$a;->b:Z

    iget-object v4, p0, Lyk6$a$a;->c:Ljava/lang/String;

    const p1, 0x7f0801ac

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p1, p0, Lyk6$a$a;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    if-nez p1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_1
    iget-boolean v8, p0, Lyk6$a$a;->d:Z

    iget-object p0, p0, Lyk6$a$a;->f:Lyk6$a$d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lyk6$a$d;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object v9, p0

    :goto_3
    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lm56;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyk6$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyk6$a$a;

    iget-object v1, p0, Lyk6$a$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lyk6$a$a;->b:Z

    iget-boolean v3, p1, Lyk6$a$a;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyk6$a$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lyk6$a$a;->d:Z

    iget-boolean v3, p1, Lyk6$a$a;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyk6$a$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyk6$a$a;->f:Lyk6$a$d;

    iget-object p1, p1, Lyk6$a$a;->f:Lyk6$a$d;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyk6$a$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lyk6$a$a;->b:Z

    invoke-static {v0, v2, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v3, p0, Lyk6$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v3, p0, Lyk6$a$a;->d:Z

    invoke-static {v0, v2, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v3, p0, Lyk6$a$a;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lyk6$a$a;->f:Lyk6$a$d;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lyk6$a$d;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyk6$a$a;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lyk6$a$a;->b:Z

    iget-object v2, p0, Lyk6$a$a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lyk6$a$a;->d:Z

    iget-object v4, p0, Lyk6$a$a;->e:Ljava/lang/String;

    iget-object p0, p0, Lyk6$a$a;->f:Lyk6$a$d;

    const-string v5, ", required="

    const-string v6, ", title="

    const-string v7, "AreaQuestionResponse(value="

    invoke-static {v7, v0, v5, v6, v1}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skip="

    const-string v5, ", key="

    invoke-static {v0, v2, v1, v3, v5}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
