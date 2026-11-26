.class public final Lg93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf93;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lg17;

.field public final e:Z

.field public final f:Z


# direct methods
.method public synthetic constructor <init>(Lf93;Lg17;I)V
    .locals 7

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    new-instance p2, Lg17;

    const-string v0, ".*"

    invoke-direct {p2, v0}, Lg17;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v4, p2

    and-int/lit8 p2, p3, 0x20

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    :goto_0
    move v6, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lg93;-><init>(Lf93;Ljava/lang/String;Ljava/lang/String;Lg17;ZZ)V

    return-void
.end method

.method public constructor <init>(Lf93;Ljava/lang/String;Ljava/lang/String;Lg17;ZZ)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lg93;->a:Lf93;

    .line 40
    iput-object p2, p0, Lg93;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lg93;->c:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lg93;->d:Lg17;

    .line 43
    iput-boolean p5, p0, Lg93;->e:Z

    .line 44
    iput-boolean p6, p0, Lg93;->f:Z

    return-void
.end method

.method public static a(Lg93;Ljava/lang/String;Ljava/lang/String;ZZI)Lg93;
    .locals 7

    iget-object v1, p0, Lg93;->a:Lf93;

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg93;->b:Ljava/lang/String;

    :cond_0
    move-object v2, p1

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_1

    iget-object p2, p0, Lg93;->c:Ljava/lang/String;

    :cond_1
    move-object v3, p2

    iget-object v4, p0, Lg93;->d:Lg17;

    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_2

    iget-boolean p3, p0, Lg93;->e:Z

    :cond_2
    move v5, p3

    and-int/lit8 p1, p5, 0x20

    if-eqz p1, :cond_3

    iget-boolean p4, p0, Lg93;->f:Z

    :cond_3
    move v6, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg93;

    invoke-direct/range {v0 .. v6}, Lg93;-><init>(Lf93;Ljava/lang/String;Ljava/lang/String;Lg17;ZZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg93;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg93;

    iget-object v1, p0, Lg93;->a:Lf93;

    iget-object v2, p1, Lg93;->a:Lf93;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lg93;->b:Ljava/lang/String;

    iget-object v2, p1, Lg93;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lg93;->c:Ljava/lang/String;

    iget-object v2, p1, Lg93;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lg93;->d:Lg17;

    iget-object v2, p1, Lg93;->d:Lg17;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lg93;->e:Z

    iget-boolean v2, p1, Lg93;->e:Z

    if-eq v1, v2, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean p0, p0, Lg93;->f:Z

    iget-boolean p1, p1, Lg93;->f:Z

    if-eq p0, p1, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lg93;->a:Lf93;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lg93;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg93;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg93;->d:Lg17;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lg93;->e:Z

    invoke-static {v2, v1, v0}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lg93;->f:Z

    invoke-static {v0, v1, p0}, Ltg;->c(IIZ)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldsState(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg93;->a:Lf93;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg93;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alternativeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg93;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg93;->d:Lg17;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBlank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg93;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lg93;->f:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isWillBeFocused=false)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
