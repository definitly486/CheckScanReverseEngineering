.class public final Lvt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# instance fields
.field public final a:Lta6;


# direct methods
.method public constructor <init>(Lta6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt3;->a:Lta6;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 6

    iget-object v0, p1, Lez6;->e:Lb37;

    iget-object v1, v0, Lb37;->d:Lg37;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lb37;->c:Ljv3;

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v2, v1, Llg5;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lb37;->a()Lb37$a;

    move-result-object v2

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lb37;->b:Ljava/lang/String;

    new-instance v4, Lut3;

    invoke-direct {v4, v1}, Lut3;-><init>(Lg37;)V

    new-instance v1, Lbu0;

    invoke-direct {v1}, Lbu0;-><init>()V

    invoke-virtual {v4, v1}, Lut3;->c(Lvu0;)V

    new-instance v5, Ltt3;

    invoke-direct {v5, v4, v1}, Ltt3;-><init>(Lut3;Lbu0;)V

    invoke-virtual {v2, v3, v5}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    invoke-virtual {v2}, Lb37$a;->a()Lb37;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lvt3;->a:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v2, "Failed to gzip the request body: "

    const/16 v3, 0x2e

    invoke-static {v2, v1, v3, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :goto_0
    invoke-virtual {p1, v0}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0
.end method
