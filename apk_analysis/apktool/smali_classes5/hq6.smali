.class public final Lhq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhq6$a;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final e:Lhq6$a;
    .annotation runtime Lbq7;
        value = "bottom"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhq6$a;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhq6;->a:I

    iput-object p2, p0, Lhq6;->b:Ljava/lang/String;

    iput-object p3, p0, Lhq6;->c:Ljava/lang/String;

    iput-object p4, p0, Lhq6;->d:Ljava/lang/String;

    iput-object p5, p0, Lhq6;->e:Lhq6$a;

    return-void
.end method


# virtual methods
.method public final a()Lfr6;
    .locals 8

    new-instance v0, Lfr6;

    iget v1, p0, Lhq6;->a:I

    iget-object v2, p0, Lhq6;->d:Ljava/lang/String;

    iget-object v3, p0, Lhq6;->b:Ljava/lang/String;

    iget-object v4, p0, Lhq6;->c:Ljava/lang/String;

    iget-object v5, p0, Lhq6;->e:Lhq6$a;

    invoke-virtual {v5}, Lhq6$a;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhq6;->e:Lhq6$a;

    invoke-virtual {v6}, Lhq6$a;->b()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lhq6;->e:Lhq6$a;

    invoke-virtual {p0}, Lhq6$a;->a()Lhq6$a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhq6$a$a;->a()Lfr6$a;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v7}, Lfr6;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfr6$a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhq6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhq6;

    iget v1, p0, Lhq6;->a:I

    iget v3, p1, Lhq6;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lhq6;->b:Ljava/lang/String;

    iget-object v3, p1, Lhq6;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lhq6;->c:Ljava/lang/String;

    iget-object v3, p1, Lhq6;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lhq6;->d:Ljava/lang/String;

    iget-object v3, p1, Lhq6;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lhq6;->e:Lhq6$a;

    iget-object p1, p1, Lhq6;->e:Lhq6$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lhq6;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhq6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhq6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhq6;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lhq6;->e:Lhq6$a;

    invoke-virtual {p0}, Lhq6$a;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lhq6;->a:I

    iget-object v1, p0, Lhq6;->b:Ljava/lang/String;

    iget-object v2, p0, Lhq6;->c:Ljava/lang/String;

    iget-object v3, p0, Lhq6;->d:Ljava/lang/String;

    iget-object p0, p0, Lhq6;->e:Lhq6$a;

    const-string v4, ", title="

    const-string v5, ", text="

    const-string v6, "PromocodeResponse(id="

    invoke-static {v0, v6, v4, v1, v5}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoUrl="

    const-string v4, ", bottom="

    invoke-static {v0, v2, v1, v3, v4}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
