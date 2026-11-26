.class public final La59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# instance fields
.field public final a:Lix8;

.field public final b:Lyc5;


# direct methods
.method public constructor <init>(Lix8;Lyc5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La59;->a:Lix8;

    iput-object p2, p0, La59;->b:Lyc5;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 9

    iget-object v0, p0, La59;->a:Lix8;

    iget-object v1, p1, Lez6;->e:Lb37;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Lix8;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lez6;->b(Lb37;)Lz47;

    move-result-object v4

    iget v5, v4, Lz47;->e:I

    const/16 v6, 0x191

    if-ne v5, v6, :cond_3

    iget-object v5, v4, Lz47;->b:Lb37;

    iget-object v7, v5, Lb37;->a:Lfz3;

    invoke-virtual {v7}, Lfz3;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "api/v2.1/users/signin"

    invoke-static {v7, v8, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    iget-object v5, v5, Lb37;->a:Lfz3;

    invoke-virtual {v5}, Lfz3;->b()Ljava/lang/String;

    move-result-object v5

    const-string v8, "api/v2.1/account/balance"

    invoke-static {v5, v8, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v7, :cond_3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lix8;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, La59;->b:Lyc5;

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {v4}, Lz47;->close()V

    invoke-virtual {p1, v1}, Lez6;->b(Lb37;)Lz47;

    move-result-object p1

    iget v0, p1, Lz47;->e:I

    if-ne v0, v6, :cond_1

    invoke-virtual {p0}, Lyc5;->invoke()Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0}, Lyc5;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    return-object v4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lz47$a;

    invoke-direct {p1}, Lz47$a;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lz47$a;->a:Lb37;

    sget-object v0, Lts6;->HTTP_1_1:Lts6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lz47$a;->b:Lts6;

    const/16 v0, 0x384

    iput v0, p1, Lz47$a;->c:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception: "

    invoke-static {v1, v0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lz47$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v1, Lbu0;

    invoke-direct {v1}, Lbu0;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3, v0}, Lbu0;->F0(Ljava/lang/String;IILjava/nio/charset/Charset;)V

    iget-wide v2, v1, Lbu0;->c:J

    new-instance p0, Lc57;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lc57;-><init>(Lj95;JLbu0;)V

    iput-object p0, p1, Lz47$a;->g:Lb57;

    invoke-virtual {p1}, Lz47$a;->a()Lz47;

    move-result-object p0

    return-object p0
.end method
