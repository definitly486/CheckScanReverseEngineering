.class public final Lhe7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcp2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhe7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Lhe7$c;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lhe7$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhe7$b;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lhe7$b;->c:Lhe7$c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhe7$b;->d:Z

    iget-object p0, p0, Lhe7$b;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lhe7$b;->d:Z

    return p0
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lhe7$b;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lhe7$b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lhe7$b;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    invoke-static {v0}, Lk13;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method
