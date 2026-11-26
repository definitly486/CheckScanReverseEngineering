.class public final Lk70$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
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

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$e;->a:Ljava/lang/String;

    iput-object p2, p0, Lk70$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lk70$e;->c:Ljava/lang/String;

    iput-object p4, p0, Lk70$e;->d:Ljava/lang/String;

    iput p5, p0, Lk70$e;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lk70$e;->e:I

    return p0
.end method

.method public final b()Lnj9;
    .locals 6

    iget v1, p0, Lk70$e;->e:I

    iget-object v2, p0, Lk70$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lk70$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lk70$e;->c:Ljava/lang/String;

    iget-object p0, p0, Lk70$e;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v0, Lwi9$e;

    invoke-direct {v0, p0}, Lwi9$e;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lwi9$b;->a:Lwi9$b;

    goto :goto_0

    :goto_1
    new-instance v0, Lnj9;

    invoke-direct/range {v0 .. v5}, Lnj9;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwi9;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$e;

    iget-object v1, p0, Lk70$e;->a:Ljava/lang/String;

    iget-object v3, p1, Lk70$e;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk70$e;->b:Ljava/lang/String;

    iget-object v3, p1, Lk70$e;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk70$e;->c:Ljava/lang/String;

    iget-object v3, p1, Lk70$e;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lk70$e;->d:Ljava/lang/String;

    iget-object v3, p1, Lk70$e;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lk70$e;->e:I

    iget p1, p1, Lk70$e;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lk70$e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$e;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lk70$e;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget p0, p0, Lk70$e;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lk70$e;->a:Ljava/lang/String;

    iget-object v1, p0, Lk70$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lk70$e;->c:Ljava/lang/String;

    iget-object v3, p0, Lk70$e;->d:Ljava/lang/String;

    iget p0, p0, Lk70$e;->e:I

    const-string v4, ", text="

    const-string v5, ", logoUrl="

    const-string v6, "HeaderLogoBannerBlockResponse(title="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    const-string v4, ", sort="

    invoke-static {v0, v2, v1, v3, v4}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
