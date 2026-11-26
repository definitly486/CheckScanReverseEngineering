.class final Lcom/my/tracker/obfuscated/m2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final a:[I

.field final b:[I

.field final synthetic c:Lcom/my/tracker/obfuscated/m2;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/m2;)V
    .locals 1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    filled-new-array {p1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/my/tracker/obfuscated/m2$a;->a:[I

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/m2$a;->b:[I

    return-void
.end method

.method private d(I)Z
    .locals 4

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2$a;->b:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TimeSpentCore: you can\'t create timespent with id = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: reserved for internal use)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private e(I)Z
    .locals 4

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2$a;->a:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TimeSpentCore: you can\'t create timespent with id = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: reserved for internal use)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/m2$a;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/m2;->e:Lcom/my/tracker/obfuscated/c;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/k2;->b(I)Z

    move-result v0

    const-string v2, "TimeSpent: you can\'t create timespent with id = "

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: already have same type timespent with this id)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/m2;->d:Lcom/my/tracker/obfuscated/n0;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/k2;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2;->f:Lcom/my/tracker/obfuscated/a0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/a0;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: already have another type timespent with this id)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    return v1
.end method

.method public b(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/m2$a;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/m2;->d:Lcom/my/tracker/obfuscated/n0;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/k2;->b(I)Z

    move-result v0

    const-string v2, "TimeSpent: you can\'t create timespent with id = "

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: already have same type timespent with this id)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/m2;->e:Lcom/my/tracker/obfuscated/c;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/k2;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2;->f:Lcom/my/tracker/obfuscated/a0;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/a0;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: already have another type timespent with this id)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    return v1
.end method

.method public c(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/m2$a;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/m2;->d:Lcom/my/tracker/obfuscated/n0;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/k2;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2$a;->c:Lcom/my/tracker/obfuscated/m2;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/m2;->e:Lcom/my/tracker/obfuscated/c;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/k2;->b(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TimeSpent: you can\'t create timespent with id = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (reason: already have another type timespent with this id)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->c(Ljava/lang/String;)V

    return v1
.end method
