.class public final Lg57;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lh57;
    .annotation runtime Lbq7;
        value = "level"
    .end annotation
.end field

.field private final b:Lzf;
    .annotation runtime Lbq7;
        value = "androidApp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh57;Lzf;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg57;->a:Lh57;

    iput-object p2, p0, Lg57;->b:Lzf;

    return-void
.end method


# virtual methods
.method public final a()Lzf;
    .locals 0

    iget-object p0, p0, Lg57;->b:Lzf;

    return-object p0
.end method

.method public final b()Lh57;
    .locals 0

    iget-object p0, p0, Lg57;->a:Lh57;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg57;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg57;

    iget-object v1, p0, Lg57;->a:Lh57;

    iget-object v3, p1, Lg57;->a:Lh57;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lg57;->b:Lzf;

    iget-object p1, p1, Lg57;->b:Lzf;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg57;->a:Lh57;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lg57;->b:Lzf;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lzf;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg57;->a:Lh57;

    iget-object p0, p0, Lg57;->b:Lzf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RestrictionResponse(level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", androidApp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
