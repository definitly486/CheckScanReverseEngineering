.class public final Ld49;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public final a:Lth5;

.field public final b:Loh8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld49;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lth5;Loh8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld49;->a:Lth5;

    iput-object p2, p0, Ld49;->b:Loh8;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    sget-object v0, Ld49;->c:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Ld49;->b:Loh8;

    invoke-virtual {v1}, Loh8;->a()Lef9;

    move-result-object v1

    sget-object v2, Lef9$a;->a:Lef9$a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Lef9$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ld49;->a:Lth5;

    check-cast v1, Lef9$b;

    iget-object v1, v1, Lef9$b;->a:Ljava/util/ArrayList;

    iget-object v2, v2, Lth5;->b:Ljava/lang/Object;

    check-cast v2, Lnz3;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm72;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lab4;

    iget-object v6, v4, Lm72;->a:Ljava/lang/String;

    iget-object v4, v4, Lm72;->b:Lya5;

    invoke-static {v4}, Lw8a;->a(Lya5;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v4}, Lab4;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lnz3;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
