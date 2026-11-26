.class public final Lyk6$a$f;
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
    name = "f"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk6$a$f;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lyk6$a$f;->b:Z

    iput-object p3, p0, Lyk6$a$f;->c:Ljava/lang/String;

    iput-object p4, p0, Lyk6$a$f;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lyk6$a$f;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lw56;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lyk6$a$f;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lyk6$a$f;->b:Z

    iget-object v7, p0, Lyk6$a$f;->c:Ljava/lang/String;

    iget-object p1, p0, Lyk6$a$f;->a:Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    if-nez p1, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p1

    :goto_1
    iget-boolean v5, p0, Lyk6$a$f;->e:Z

    new-instance v0, Lc66;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v7}, Lc66;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyk6$a$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyk6$a$f;

    iget-object v1, p0, Lyk6$a$f;->a:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$f;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lyk6$a$f;->b:Z

    iget-boolean v3, p1, Lyk6$a$f;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyk6$a$f;->c:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$f;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyk6$a$f;->d:Ljava/lang/String;

    iget-object v3, p1, Lyk6$a$f;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lyk6$a$f;->e:Z

    iget-boolean p1, p1, Lyk6$a$f;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyk6$a$f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lyk6$a$f;->b:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lyk6$a$f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyk6$a$f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lyk6$a$f;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyk6$a$f;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lyk6$a$f;->b:Z

    iget-object v2, p0, Lyk6$a$f;->c:Ljava/lang/String;

    iget-object v3, p0, Lyk6$a$f;->d:Ljava/lang/String;

    iget-boolean p0, p0, Lyk6$a$f;->e:Z

    const-string v4, ", required="

    const-string v5, ", title="

    const-string v6, "PhoneEditQuestionResponse(value="

    invoke-static {v6, v0, v4, v5, v1}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    const-string v4, ", skip="

    invoke-static {v0, v2, v1, v3, v4}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
