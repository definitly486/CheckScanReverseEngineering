.class public final Lw13$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lw13$b;

.field public final synthetic c:Lw13;


# direct methods
.method public constructor <init>(Lw13;Lw13$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw13$a;->c:Lw13;

    iput-object p2, p0, Lw13$a;->b:Lw13$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lw13$a;->b:Lw13$b;

    iget-object v1, v0, Lw13$b;->c:Lkp7;

    iget-object p0, p0, Lw13$a;->c:Lw13;

    invoke-virtual {p0, v0}, Lw13;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p0

    invoke-static {v1, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
