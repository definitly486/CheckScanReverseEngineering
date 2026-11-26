.class public final Ljy3;
.super Ljl8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lhy3;

.field public final synthetic f:Lvy3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3;Lvy3;)V
    .locals 0

    iput-object p2, p0, Ljy3;->e:Lhy3;

    iput-object p3, p0, Ljy3;->f:Lvy3;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljy3;->e:Lhy3;

    iget-object v0, v0, Lhy3;->b:Lhy3$b;

    iget-object v1, p0, Ljy3;->f:Lvy3;

    invoke-virtual {v0, v1}, Lhy3$b;->c(Lvy3;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lz86;->a:Lz86;

    sget-object v1, Lz86;->a:Lz86;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Http2Connection.Listener failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljy3;->e:Lhy3;

    iget-object v3, v3, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static {v2, v1, v0}, Lz86;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    :try_start_1
    iget-object p0, p0, Ljy3;->f:Lvy3;

    sget-object v1, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {p0, v1, v0}, Lvy3;->c(Lp03;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
