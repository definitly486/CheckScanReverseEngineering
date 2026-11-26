.class public final Lyq5$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyq5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Throwable;

.field public final synthetic c:Lyq5$a;


# direct methods
.method public constructor <init>(Lyq5$a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq5$a$b;->c:Lyq5$a;

    iput-object p2, p0, Lyq5$a$b;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyq5$a$b;->c:Lyq5$a;

    iget-object v1, v0, Lyq5$a;->e:Lhe7$c;

    :try_start_0
    iget-object v0, v0, Lyq5$a;->b:Lls5;

    iget-object p0, p0, Lyq5$a$b;->b:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcp2;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Lcp2;->dispose()V

    throw p0
.end method
