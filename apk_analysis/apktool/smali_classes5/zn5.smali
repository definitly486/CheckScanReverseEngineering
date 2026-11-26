.class public abstract Lzn5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lzn5;

.field public b:Lzn5;

.field public c:Lzn5;

.field public d:Lzn5;

.field public e:Lzn5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzn5;->a:Lzn5;

    iput-object v0, p0, Lzn5;->b:Lzn5;

    iput-object v0, p0, Lzn5;->c:Lzn5;

    iput-object v0, p0, Lzn5;->d:Lzn5;

    iput-object v0, p0, Lzn5;->e:Lzn5;

    return-void
.end method


# virtual methods
.method public abstract a(Lg15;)V
.end method

.method public final b(Lzn5;)V
    .locals 1

    invoke-virtual {p1}, Lzn5;->f()V

    invoke-virtual {p1, p0}, Lzn5;->d(Lzn5;)V

    iget-object v0, p0, Lzn5;->c:Lzn5;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lzn5;->e:Lzn5;

    iput-object v0, p1, Lzn5;->d:Lzn5;

    iput-object p1, p0, Lzn5;->c:Lzn5;

    return-void

    :cond_0
    iput-object p1, p0, Lzn5;->b:Lzn5;

    iput-object p1, p0, Lzn5;->c:Lzn5;

    return-void
.end method

.method public c()Lzn5;
    .locals 0

    iget-object p0, p0, Lzn5;->a:Lzn5;

    return-object p0
.end method

.method public d(Lzn5;)V
    .locals 0

    iput-object p1, p0, Lzn5;->a:Lzn5;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lzn5;->d:Lzn5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzn5;->e:Lzn5;

    iput-object v1, v0, Lzn5;->e:Lzn5;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzn5;->a:Lzn5;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lzn5;->e:Lzn5;

    iput-object v2, v1, Lzn5;->b:Lzn5;

    :cond_1
    :goto_0
    iget-object v1, p0, Lzn5;->e:Lzn5;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lzn5;->d:Lzn5;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lzn5;->a:Lzn5;

    if-eqz v1, :cond_3

    iput-object v0, v1, Lzn5;->c:Lzn5;

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lzn5;->a:Lzn5;

    iput-object v0, p0, Lzn5;->e:Lzn5;

    iput-object v0, p0, Lzn5;->d:Lzn5;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzn5;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
