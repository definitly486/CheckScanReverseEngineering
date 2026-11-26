.class public final Lcom/my/tracker/obfuscated/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/q2$a;
    }
.end annotation


# instance fields
.field final a:Lcom/my/tracker/obfuscated/s2;

.field final b:Lcom/my/tracker/obfuscated/c3;

.field final c:I


# direct methods
.method private constructor <init>(ILcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/s2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/my/tracker/obfuscated/q2;->c:I

    iput-object p3, p0, Lcom/my/tracker/obfuscated/q2;->a:Lcom/my/tracker/obfuscated/s2;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/q2;->b:Lcom/my/tracker/obfuscated/c3;

    return-void
.end method

.method public static a(ILcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/s2;)Lcom/my/tracker/obfuscated/q2;
    .locals 1

    .line 56
    new-instance v0, Lcom/my/tracker/obfuscated/q2;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/tracker/obfuscated/q2;-><init>(ILcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/s2;)V

    return-object v0
.end method

.method private b()Lcom/my/tracker/obfuscated/q2$a;
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/my/tracker/obfuscated/q2;->a:Lcom/my/tracker/obfuscated/s2;

    iget v1, p0, Lcom/my/tracker/obfuscated/q2;->c:I

    invoke-interface {v0, v1}, Lcom/my/tracker/obfuscated/s2;->a(I)[Lcom/my/tracker/obfuscated/w2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :cond_0
    array-length v1, v0

    .line 73
    :goto_0
    const-string v2, "TimeSpentPacketSender: got database chunk, size = "

    const-string v3, ", requested = "

    .line 74
    invoke-static {v1, v2, v3}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    iget p0, p0, Lcom/my/tracker/obfuscated/q2;->c:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 76
    invoke-static {v0}, Lcom/my/tracker/obfuscated/q2$a;->a([Lcom/my/tracker/obfuscated/w2;)Lcom/my/tracker/obfuscated/q2$a;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "database chunk is empty, nothing to send"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 50
    const-string v0, "TimeSpentPacketSender: start flushing database chunk..."

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/my/tracker/obfuscated/q2;->b()Lcom/my/tracker/obfuscated/q2$a;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/my/tracker/obfuscated/q2;->b(Lcom/my/tracker/obfuscated/q2$a;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/my/tracker/obfuscated/q2;->a(Lcom/my/tracker/obfuscated/q2$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string p0, "TimeSpentPacketSender: database chunk successfully flushed"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeSpentPacketSender: Something went wrong while flushing database chunk:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/my/tracker/obfuscated/q2$a;)V
    .locals 5

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q2$a;->b()[Lcom/my/tracker/obfuscated/w2;

    move-result-object p1

    array-length v0, p1

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/my/tracker/obfuscated/w2;->a()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/q2;->a:Lcom/my/tracker/obfuscated/s2;

    invoke-interface {p0, v1}, Lcom/my/tracker/obfuscated/s2;->a([J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "TimeSpentPacketSender: successfully deleted "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packets from repository"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/my/tracker/obfuscated/q2$a;)V
    .locals 3

    iget-object v0, p0, Lcom/my/tracker/obfuscated/q2;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/c3;->n()Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/q2;->b:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/my/tracker/obfuscated/q2$a;->a(J)V

    invoke-static {}, Lcom/my/tracker/obfuscated/b3;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeSpentPacketSender: This packet will be sent now:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/my/tracker/obfuscated/w0;->a(Lcom/my/tracker/obfuscated/w0$a;Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;Z)Lcom/my/tracker/obfuscated/w0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/my/tracker/obfuscated/w0;->a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/w0$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/w0$b;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TimeSpentPacketSender: packet successfully delivered to server"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "packet didn\'t delivered to server"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 2

    const-string v0, "TimeSpentPacketSender: i\'m notified about new packet"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    new-instance v0, Led0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Led0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->e(Ljava/lang/Runnable;)V

    return-void
.end method
