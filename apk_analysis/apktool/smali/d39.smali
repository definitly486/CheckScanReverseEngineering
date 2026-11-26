.class public final Ld39;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Lr72;


# instance fields
.field public final a:Lhm1;

.field public final b:Lhm1;

.field public final c:Lie7;

.field public final d:Lr89;


# direct methods
.method public constructor <init>(Lhm1;Lhm1;Lie7;Lr89;Ljk9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld39;->a:Lhm1;

    iput-object p2, p0, Ld39;->b:Lhm1;

    iput-object p3, p0, Ld39;->c:Lie7;

    iput-object p4, p0, Ld39;->d:Lr89;

    iget-object p0, p5, Ljk9;->a:Ljava/util/concurrent/Executor;

    new-instance p1, Lx;

    const/4 p2, 0x3

    invoke-direct {p1, p5, p2}, Lx;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Ld39;
    .locals 1

    sget-object v0, Ld39;->e:Lr72;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lr72;->h:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld39;

    return-object v0

    :cond_0
    const-string v0, "Not initialized!"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Ld39;->e:Lr72;

    if-nez v0, :cond_1

    const-class v0, Ld39;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld39;->e:Lr72;

    if-nez v1, :cond_0

    new-instance v1, Lq72;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lq72;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lq72;->a()Lr72;

    move-result-object p0

    sput-object p0, Ld39;->e:Lr72;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Lkx0;)Lu29;
    .locals 6

    new-instance v0, Lu29;

    if-eqz p1, :cond_0

    sget-object v1, Lkx0;->d:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Liy2;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Liy2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-static {}, Ls29;->a()Lhz$a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "cct"

    iput-object v3, v2, Lhz$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lkx0;->a:Ljava/lang/String;

    iget-object p1, p1, Lkx0;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const-string v4, "1$"

    const-string v5, "\\"

    invoke-static {v4, v3, v5, p1}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    iput-object p1, v2, Lhz$a;->b:[B

    invoke-virtual {v2}, Lhz$a;->a()Lhz;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lu29;-><init>(Ljava/util/Set;Lhz;Ld39;)V

    return-object v0
.end method
