.class public final Lgq1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsy0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgq1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsy0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lgq1$b;


# direct methods
.method public constructor <init>(Lgq1$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq1$c$a;->a:Lgq1$b;

    return-void
.end method


# virtual methods
.method public final a(Lfy0;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lgq1$c$a;->a:Lgq1$b;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b(Lfy0;La57;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TR;>;",
            "La57<",
            "TR;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lgq1$c$a;->a:Lgq1$b;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
