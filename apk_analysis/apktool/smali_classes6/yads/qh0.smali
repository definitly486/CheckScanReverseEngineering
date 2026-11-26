.class public final Lyads/qh0;
.super Lyads/uh0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/rg0;

.field public final c:Lyads/af0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lyads/rg0;

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lyads/rg0;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    invoke-direct {p0, p1, v0}, Lyads/qh0;-><init>(Ljava/lang/String;Lyads/rg0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/rg0;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lyads/uh0;-><init>()V

    .line 20
    iput-object p1, p0, Lyads/qh0;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lyads/qh0;->b:Lyads/rg0;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lyads/qh0;->c:Lyads/af0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/rg0;Lyads/af0;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lyads/uh0;-><init>()V

    .line 16
    iput-object p1, p0, Lyads/qh0;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lyads/qh0;->b:Lyads/rg0;

    .line 18
    iput-object p3, p0, Lyads/qh0;->c:Lyads/af0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/qh0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/qh0;

    iget-object v1, p0, Lyads/qh0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/qh0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/qh0;->b:Lyads/rg0;

    iget-object v3, p1, Lyads/qh0;->b:Lyads/rg0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lyads/qh0;->c:Lyads/af0;

    iget-object p1, p1, Lyads/qh0;->c:Lyads/af0;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/qh0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/qh0;->b:Lyads/rg0;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lyads/rg0;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/qh0;->c:Lyads/af0;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lyads/af0;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyads/qh0;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/qh0;->b:Lyads/rg0;

    iget-object p0, p0, Lyads/qh0;->c:Lyads/af0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KeyValue(title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitle="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
