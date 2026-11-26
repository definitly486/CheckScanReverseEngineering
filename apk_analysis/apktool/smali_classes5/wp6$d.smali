.class public final Lwp6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwp6$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final c:Lk70$h$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final d:Lk70$h$a;
    .annotation runtime Lbq7;
        value = "secondButton"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final f:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "itemId"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "block"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "badge"
    .end annotation
.end field

.field private final i:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "operationId"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "itemState"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk70$h$a;Lk70$h$a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p1, p2, p5}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lwp6$d;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lwp6$d;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lwp6$d;->c:Lk70$h$a;

    .line 35
    iput-object p4, p0, Lwp6$d;->d:Lk70$h$a;

    .line 36
    iput-object p5, p0, Lwp6$d;->e:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lwp6$d;->f:Ljava/lang/Integer;

    .line 38
    iput-object p7, p0, Lwp6$d;->g:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lwp6$d;->h:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lwp6$d;->i:Ljava/lang/Integer;

    .line 41
    iput-object p10, p0, Lwp6$d;->j:Ljava/lang/String;

    .line 42
    sget-object p0, Lwp6$h$a;->COMMON:Lwp6$h$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk70$h$a;Lk70$h$a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjh2;)V
    .locals 1

    and-int/lit8 p12, p11, 0x20

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_2

    move-object p8, v0

    :cond_2
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_3

    move-object p9, v0

    :cond_3
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_4

    move-object p10, v0

    :cond_4
    invoke-direct/range {p0 .. p10}, Lwp6$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lk70$h$a;Lk70$h$a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lpz3;
    .locals 7

    new-instance v0, Lpw7;

    iget-object v1, p0, Lwp6$d;->g:Ljava/lang/String;

    iget-object v3, p0, Lwp6$d;->f:Ljava/lang/Integer;

    iget-object v2, p0, Lwp6$d;->h:Ljava/lang/String;

    iget-object v4, p0, Lwp6$d;->i:Ljava/lang/Integer;

    iget-object v5, p0, Lwp6$d;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lpw7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lwp6$d;->e:Ljava/lang/String;

    iget-object v2, p0, Lwp6$d;->a:Ljava/lang/String;

    iget-object v3, p0, Lwp6$d;->b:Ljava/lang/String;

    iget-object v4, p0, Lwp6$d;->c:Lk70$h$a;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lk70$h$a;->a()Luj9$a;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object p0, p0, Lwp6$d;->d:Lk70$h$a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk70$h$a;->a()Luj9$a;

    move-result-object v5

    :cond_1
    move-object v6, v0

    new-instance v0, Luj9;

    invoke-direct/range {v0 .. v6}, Luj9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luj9$a;Luj9$a;Lpw7;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwp6$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwp6$d;

    iget-object v1, p0, Lwp6$d;->a:Ljava/lang/String;

    iget-object v3, p1, Lwp6$d;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwp6$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lwp6$d;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lwp6$d;->c:Lk70$h$a;

    iget-object v3, p1, Lwp6$d;->c:Lk70$h$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lwp6$d;->d:Lk70$h$a;

    iget-object v3, p1, Lwp6$d;->d:Lk70$h$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lwp6$d;->e:Ljava/lang/String;

    iget-object v3, p1, Lwp6$d;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lwp6$d;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lwp6$d;->f:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lwp6$d;->g:Ljava/lang/String;

    iget-object v3, p1, Lwp6$d;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lwp6$d;->h:Ljava/lang/String;

    iget-object v3, p1, Lwp6$d;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lwp6$d;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lwp6$d;->i:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lwp6$d;->j:Ljava/lang/String;

    iget-object p1, p1, Lwp6$d;->j:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lwp6$d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$d;->c:Lk70$h$a;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lk70$h$a;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$d;->d:Lk70$h$a;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lk70$h$a;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$d;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$d;->f:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$d;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$d;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$d;->i:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lwp6$d;->j:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lwp6$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lwp6$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lwp6$d;->c:Lk70$h$a;

    iget-object v3, p0, Lwp6$d;->d:Lk70$h$a;

    iget-object v4, p0, Lwp6$d;->e:Ljava/lang/String;

    iget-object v5, p0, Lwp6$d;->f:Ljava/lang/Integer;

    iget-object v6, p0, Lwp6$d;->g:Ljava/lang/String;

    iget-object v7, p0, Lwp6$d;->h:Ljava/lang/String;

    iget-object v8, p0, Lwp6$d;->i:Ljava/lang/Integer;

    iget-object p0, p0, Lwp6$d;->j:Ljava/lang/String;

    const-string v9, ", text="

    const-string v10, ", mainButton="

    const-string v11, "MiniLogoBlockResponse(title="

    invoke-static {v11, v0, v9, v1, v10}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", badge="

    const-string v2, ", operationId="

    invoke-static {v0, v6, v1, v7, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
