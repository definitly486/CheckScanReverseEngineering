.class public final Lgv5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lty0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgv5;->o(Lsy0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsy0;

.field public final synthetic b:Lgv5;


# direct methods
.method public constructor <init>(Lgv5;Lsy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgv5$a;->b:Lgv5;

    iput-object p2, p0, Lgv5$a;->a:Lsy0;

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/a;Ljava/io/IOException;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lgv5$a;->a:Lsy0;

    iget-object p0, p0, Lgv5$a;->b:Lgv5;

    invoke-interface {p1, p0, p2}, Lsy0;->a(Lfy0;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkb9;->m(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onResponse(Lokhttp3/a;Lz47;)V
    .locals 0

    iget-object p1, p0, Lgv5$a;->a:Lsy0;

    iget-object p0, p0, Lgv5$a;->b:Lgv5;

    :try_start_0
    invoke-virtual {p0, p2}, Lgv5;->j(Lz47;)La57;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, p0, p2}, Lsy0;->b(Lfy0;La57;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkb9;->m(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p2}, Lkb9;->m(Ljava/lang/Throwable;)V

    :try_start_2
    invoke-interface {p1, p0, p2}, Lsy0;->a(Lfy0;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lkb9;->m(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
