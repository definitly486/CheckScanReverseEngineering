.class public final Lk70$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk70$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final c:F
    .annotation runtime Lbq7;
        value = "aspectRatio"
    .end annotation
.end field

.field private final d:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final e:Z
    .annotation runtime Lbq7;
        value = "preview"
    .end annotation
.end field

.field public final f:Lk70$b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FIZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lk70$c;->b:Ljava/lang/String;

    iput p3, p0, Lk70$c;->c:F

    iput p4, p0, Lk70$c;->d:I

    iput-boolean p5, p0, Lk70$c;->e:Z

    sget-object p1, Lk70$b$a;->COMMON_BANNER:Lk70$b$a;

    iput-object p1, p0, Lk70$c;->f:Lk70$b$a;

    return-void
.end method


# virtual methods
.method public final a()Lhk9;
    .locals 4

    new-instance v0, Ljj9;

    iget v1, p0, Lk70$c;->d:I

    iget-object v2, p0, Lk70$c;->b:Ljava/lang/String;

    new-instance v3, Lwi9$e;

    iget-object p0, p0, Lk70$c;->a:Ljava/lang/String;

    invoke-direct {v3, p0}, Lwi9$e;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Ljj9;-><init>(ILjava/lang/String;Lwi9$e;)V

    return-object v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lk70$c;->d:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lk70$c;->e:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$c;

    iget-object v1, p0, Lk70$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lk70$c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk70$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lk70$c;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lk70$c;->c:F

    iget v3, p1, Lk70$c;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lk70$c;->d:I

    iget v3, p1, Lk70$c;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lk70$c;->e:Z

    iget-boolean p1, p1, Lk70$c;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getType()Lk70$b$a;
    .locals 0

    iget-object p0, p0, Lk70$c;->f:Lk70$b$a;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk70$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lk70$c;->c:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Lk70$c;->d:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean p0, p0, Lk70$c;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lk70$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lk70$c;->b:Ljava/lang/String;

    iget v2, p0, Lk70$c;->c:F

    iget v3, p0, Lk70$c;->d:I

    iget-boolean p0, p0, Lk70$c;->e:Z

    const-string v4, ", logoUrl="

    const-string v5, ", aspectRatio="

    const-string v6, "CommonBannerBlockResponse(url="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
