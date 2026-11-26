.class public final Lyads/xq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tq5;


# instance fields
.field public final synthetic a:Lnl3;


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0

    iput-object p1, p0, Lyads/xq5;->a:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/z00;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT * FROM raw_json"

    invoke-virtual {p1, v1, v0}, Lyads/z00;->a(Ljava/lang/String;[Ljava/lang/String;)Lyads/s45;

    move-result-object p1

    iget-object p0, p0, Lyads/xq5;->a:Lnl3;

    :try_start_0
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Selecting all raw jsons"

    return-object p0
.end method
