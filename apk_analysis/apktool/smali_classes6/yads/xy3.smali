.class public abstract Lyads/xy3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/ny3;Lyads/rw4;)V
    .locals 1

    iget-object p1, p1, Lyads/rw4;->a:Lyads/qw4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lyads/qw4;->a:Landroid/media/metrics/LogSessionId;

    invoke-static {}, Lej0;->e()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/ny3;->b:Landroid/media/MediaFormat;

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "log-session-id"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
