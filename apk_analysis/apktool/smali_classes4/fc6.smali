.class public final Lfc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac6;


# static fields
.field public static volatile f:Z


# instance fields
.field public final b:Lta6;

.field public volatile c:Z

.field public d:Ljava/lang/Thread;

.field public e:Lbc6;


# direct methods
.method public constructor <init>(Lta6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfc6;->b:Lta6;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lfc6;->b:Lta6;

    iget-object p1, p1, Lnb6;->H:Lad6;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lad6;->F:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lfc6;->e:Lbc6;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lfc6;->b(Lbc6;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    sput-boolean p1, Lfc6;->f:Z

    iput-boolean p1, p0, Lfc6;->c:Z

    iget-object p0, p0, Lfc6;->d:Ljava/lang/Thread;

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Lbc6;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lfc6;->e:Lbc6;

    sget-boolean v0, Lfc6;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lfc6;->b:Lta6;

    iget-object v0, v0, Lnb6;->H:Lad6;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lad6;->F:Z

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lfc6;->b:Lta6;

    iget-object v2, v2, Lta6;->N:Laq5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    sput-boolean v1, Lfc6;->f:Z

    const-string v0, "threadtime"

    const-string v1, "*:E"

    const-string v2, "logcat"

    const-string v3, "-v"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.mmm"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "-T"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lfc6;->b:Lta6;

    iget-object v2, v2, Lnb6;->I:Lqb6;

    invoke-interface {v2}, Lqb6;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfc6;->c:Z

    iget-object v1, p0, Lfc6;->d:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lec6;

    invoke-direct {v2, v0, p0, p1}, Lec6;-><init>(Ljava/util/ArrayList;Lfc6;Lbc6;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lfc6;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
