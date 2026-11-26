.class public final Liq6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liq6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Liq6$a;
    .annotation runtime Lbq7;
        value = "badge"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "subtitle"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liq6$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq6$b;->a:Liq6$a;

    iput-object p2, p0, Liq6$b;->b:Ljava/lang/String;

    iput-object p3, p0, Liq6$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ler6$b;
    .locals 6

    new-instance v0, Ler6$b;

    new-instance v1, Ler6$a;

    iget-object v2, p0, Liq6$b;->a:Liq6$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Liq6$a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Liq6$b;->a:Liq6$a;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Liq6$a;->b()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    iget-object v5, p0, Liq6$b;->a:Liq6$a;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Liq6$a;->c()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ler6$a;->a:Ljava/lang/String;

    iput-object v4, v1, Ler6$a;->b:Ljava/lang/String;

    iput-object v3, v1, Ler6$a;->c:Ljava/lang/String;

    iget-object v2, p0, Liq6$b;->b:Ljava/lang/String;

    iget-object p0, p0, Liq6$b;->c:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ler6$b;->a:Ler6$a;

    iput-object v2, v0, Ler6$b;->b:Ljava/lang/String;

    iput-object p0, v0, Ler6$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Liq6$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Liq6$b;

    iget-object v1, p0, Liq6$b;->a:Liq6$a;

    iget-object v3, p1, Liq6$b;->a:Liq6$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Liq6$b;->b:Ljava/lang/String;

    iget-object v3, p1, Liq6$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Liq6$b;->c:Ljava/lang/String;

    iget-object p1, p1, Liq6$b;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Liq6$b;->a:Liq6$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Liq6$a;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Liq6$b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Liq6$b;->c:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Liq6$b;->a:Liq6$a;

    iget-object v1, p0, Liq6$b;->b:Ljava/lang/String;

    iget-object p0, p0, Liq6$b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BottomResponse(badge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitle="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
