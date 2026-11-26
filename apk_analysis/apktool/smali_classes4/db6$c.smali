.class public final Ldb6$c;
.super Lg37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldb6;->g(Ljava/lang/String;Lnl3;)Lb37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldb6;

.field public final synthetic b:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/io/OutputStream;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldb6;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldb6;",
            "Lnl3<",
            "-",
            "Ljava/io/OutputStream;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldb6$c;->a:Ldb6;

    iput-object p2, p0, Ldb6$c;->b:Lnl3;

    invoke-direct {p0}, Lg37;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Ldb6$c;->a:Ldb6;

    iget-object p0, p0, Ldb6;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj95;

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 1

    invoke-interface {p1}, Lvu0;->v0()Ljava/io/OutputStream;

    move-result-object p1

    iget-object p0, p0, Ldb6$c;->b:Lnl3;

    :try_start_0
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

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
