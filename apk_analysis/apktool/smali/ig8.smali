.class public final synthetic Lig8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lyads/tt3;
.implements Lgv9;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lig8;->b:Ljava/lang/Object;

    iput-object p2, p0, Lig8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lig8;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lig8;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroidx/camera/core/SurfaceRequest;->j(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lig8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/z1;

    iget-object p0, p0, Lig8;->c:Ljava/lang/Object;

    check-cast p0, Lxda;

    iget-object v0, v0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    invoke-virtual {v0, p0}, Lcom/my/target/m2$a;->b(Lao9;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lig8;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Lig8;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ji0;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->c(Lyads/ne;Lyads/ji0;Lyads/pe;)V

    return-void
.end method
