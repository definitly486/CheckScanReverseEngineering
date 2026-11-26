.class public final Lzo8$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzo8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
        value = "imageUrl"
    .end annotation
.end field

.field private final d:Lzo8$e;
    .annotation runtime Lbq7;
        value = "button"
    .end annotation
.end field

.field private final e:Lzo8$f;
    .annotation runtime Lbq7;
        value = "secondaryButton"
    .end annotation
.end field

.field private final f:Lzo8$b;
    .annotation runtime Lbq7;
        value = "type"
    .end annotation
.end field

.field private final g:Lzo8$a;
    .annotation runtime Lbq7;
        value = "state"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "block"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lzo8$e;Lzo8$f;Lzo8$b;Lzo8$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzo8$d;->a:I

    iput-object p2, p0, Lzo8$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lzo8$d;->c:Ljava/lang/String;

    iput-object p4, p0, Lzo8$d;->d:Lzo8$e;

    iput-object p5, p0, Lzo8$d;->e:Lzo8$f;

    iput-object p6, p0, Lzo8$d;->f:Lzo8$b;

    iput-object p7, p0, Lzo8$d;->g:Lzo8$a;

    iput-object p8, p0, Lzo8$d;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lzo8$e;Lzo8$f;Lzo8$b;Lzo8$a;Ljava/lang/String;ILjh2;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    goto :goto_1

    :cond_0
    move-object/from16 v9, p8

    goto :goto_0

    .line 32
    :goto_1
    invoke-direct/range {v1 .. v9}, Lzo8$d;-><init>(ILjava/lang/String;Ljava/lang/String;Lzo8$e;Lzo8$f;Lzo8$b;Lzo8$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8$d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lzo8$e;
    .locals 0

    iget-object p0, p0, Lzo8$d;->d:Lzo8$e;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lzo8$d;->a:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lzo8$f;
    .locals 0

    iget-object p0, p0, Lzo8$d;->e:Lzo8$f;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzo8$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lzo8$d;

    iget v1, p0, Lzo8$d;->a:I

    iget v3, p1, Lzo8$d;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lzo8$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lzo8$d;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lzo8$d;->c:Ljava/lang/String;

    iget-object v3, p1, Lzo8$d;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lzo8$d;->d:Lzo8$e;

    iget-object v3, p1, Lzo8$d;->d:Lzo8$e;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lzo8$d;->e:Lzo8$f;

    iget-object v3, p1, Lzo8$d;->e:Lzo8$f;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lzo8$d;->f:Lzo8$b;

    iget-object v3, p1, Lzo8$d;->f:Lzo8$b;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lzo8$d;->g:Lzo8$a;

    iget-object v3, p1, Lzo8$d;->g:Lzo8$a;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lzo8$d;->h:Ljava/lang/String;

    iget-object p1, p1, Lzo8$d;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Lzo8$a;
    .locals 0

    iget-object p0, p0, Lzo8$d;->g:Lzo8$a;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzo8$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Lzo8$b;
    .locals 0

    iget-object p0, p0, Lzo8$d;->f:Lzo8$b;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lzo8$d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lzo8$d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lzo8$d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lzo8$d;->d:Lzo8$e;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lzo8$e;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lzo8$d;->e:Lzo8$f;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lzo8$f;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lzo8$d;->f:Lzo8$b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lzo8$d;->g:Lzo8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lzo8$d;->h:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lzo8$d;->a:I

    iget-object v1, p0, Lzo8$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lzo8$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lzo8$d;->d:Lzo8$e;

    iget-object v4, p0, Lzo8$d;->e:Lzo8$f;

    iget-object v5, p0, Lzo8$d;->f:Lzo8$b;

    iget-object v6, p0, Lzo8$d;->g:Lzo8$a;

    iget-object p0, p0, Lzo8$d;->h:Ljava/lang/String;

    const-string v7, ", title="

    const-string v8, ", imageUrl="

    const-string v9, "PromoBannerResponse(id="

    invoke-static {v0, v9, v7, v1, v8}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
