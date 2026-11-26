.class public final synthetic Li22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Li22;->b:Ljava/lang/Object;

    iput-object p2, p0, Li22;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li22;->b:Ljava/lang/Object;

    check-cast v0, Lmb4;

    iget-object p0, p0, Li22;->c:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->a(Lmb4;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li22;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Li22;->c:Ljava/lang/Object;

    check-cast p0, Lyads/r04;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->b(Lyads/ne;Lyads/r04;Lyads/pe;)V

    return-void
.end method
