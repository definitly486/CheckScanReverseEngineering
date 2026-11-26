.class public final Lo74$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "offerId"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "iconUrl"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "badgeUrl"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "buttonUrl"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "buttonText"
    .end annotation
.end field

.field private final h:Ljava/lang/Long;
    .annotation runtime Lbq7;
        value = "deadlineMillisecondsLeft"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo74$b;->a:I

    iput-object p2, p0, Lo74$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lo74$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lo74$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lo74$b;->e:Ljava/lang/String;

    iput-object p6, p0, Lo74$b;->f:Ljava/lang/String;

    iput-object p7, p0, Lo74$b;->g:Ljava/lang/String;

    iput-object p8, p0, Lo74$b;->h:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()La74;
    .locals 9

    new-instance v0, La74;

    iget v1, p0, Lo74$b;->a:I

    iget-object v2, p0, Lo74$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lo74$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lo74$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lo74$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lo74$b;->h:Ljava/lang/Long;

    new-instance v7, La74$a;

    iget-object v8, p0, Lo74$b;->g:Ljava/lang/String;

    iget-object p0, p0, Lo74$b;->f:Ljava/lang/String;

    invoke-direct {v7, v8, p0}, La74$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v7}, La74;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;La74$a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo74$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo74$b;

    iget v1, p0, Lo74$b;->a:I

    iget v3, p1, Lo74$b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lo74$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lo74$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lo74$b;->c:Ljava/lang/String;

    iget-object v3, p1, Lo74$b;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lo74$b;->d:Ljava/lang/String;

    iget-object v3, p1, Lo74$b;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lo74$b;->e:Ljava/lang/String;

    iget-object v3, p1, Lo74$b;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lo74$b;->f:Ljava/lang/String;

    iget-object v3, p1, Lo74$b;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lo74$b;->g:Ljava/lang/String;

    iget-object v3, p1, Lo74$b;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lo74$b;->h:Ljava/lang/Long;

    iget-object p1, p1, Lo74$b;->h:Ljava/lang/Long;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lo74$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lo74$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lo74$b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lo74$b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lo74$b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lo74$b;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lo74$b;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lo74$b;->h:Ljava/lang/Long;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lo74$b;->a:I

    iget-object v1, p0, Lo74$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lo74$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lo74$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lo74$b;->e:Ljava/lang/String;

    iget-object v5, p0, Lo74$b;->f:Ljava/lang/String;

    iget-object v6, p0, Lo74$b;->g:Ljava/lang/String;

    iget-object p0, p0, Lo74$b;->h:Ljava/lang/Long;

    const-string v7, ", iconUrl="

    const-string v8, ", title="

    const-string v9, "ItemResponse(offerId="

    invoke-static {v0, v9, v7, v1, v8}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    const-string v7, ", badgeUrl="

    invoke-static {v0, v2, v1, v3, v7}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", buttonUrl="

    const-string v2, ", buttonText="

    invoke-static {v0, v4, v1, v5, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deadlineMillisecondsLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
