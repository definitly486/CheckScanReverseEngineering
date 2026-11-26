.class public final Lwz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkf4;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lkf4;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ls19<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final i:Lxz5;

.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkf4;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lxz5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkf4;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ls19<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lxz5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lwz2;->b:Ljava/lang/Object;

    const-string p1, "Signature must not be null"

    invoke-static {p2, p1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkf4;

    iput-object p2, p0, Lwz2;->g:Lkf4;

    iput p3, p0, Lwz2;->c:I

    iput p4, p0, Lwz2;->d:I

    invoke-static {p5, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Ljava/util/Map;

    iput-object p5, p0, Lwz2;->h:Ljava/util/Map;

    const-string p1, "Resource class must not be null"

    invoke-static {p6, p1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p6, p0, Lwz2;->e:Ljava/lang/Class;

    const-string p1, "Transcode class must not be null"

    invoke-static {p7, p1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p7, p0, Lwz2;->f:Ljava/lang/Class;

    invoke-static {p8, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p8, p0, Lwz2;->i:Lxz5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lwz2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lwz2;

    iget-object v0, p0, Lwz2;->b:Ljava/lang/Object;

    iget-object v2, p1, Lwz2;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz2;->g:Lkf4;

    iget-object v2, p1, Lwz2;->g:Lkf4;

    invoke-interface {v0, v2}, Lkf4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lwz2;->d:I

    iget v2, p1, Lwz2;->d:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lwz2;->c:I

    iget v2, p1, Lwz2;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lwz2;->h:Ljava/util/Map;

    iget-object v2, p1, Lwz2;->h:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz2;->e:Ljava/lang/Class;

    iget-object v2, p1, Lwz2;->e:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz2;->f:Ljava/lang/Class;

    iget-object v2, p1, Lwz2;->f:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwz2;->i:Lxz5;

    iget-object p1, p1, Lwz2;->i:Lxz5;

    invoke-virtual {p0, p1}, Lxz5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lwz2;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lwz2;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lwz2;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwz2;->g:Lkf4;

    invoke-interface {v1}, Lkf4;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lwz2;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lwz2;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lwz2;->j:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lwz2;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lwz2;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwz2;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lwz2;->j:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lwz2;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lwz2;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwz2;->i:Lxz5;

    iget-object v1, v1, Lxz5;->b:Lzx0;

    invoke-virtual {v1}, Lzx0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lwz2;->j:I

    return v1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineKey{model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lwz2;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwz2;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwz2;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwz2;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwz2;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwz2;->g:Lkf4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwz2;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwz2;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lwz2;->i:Lxz5;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
