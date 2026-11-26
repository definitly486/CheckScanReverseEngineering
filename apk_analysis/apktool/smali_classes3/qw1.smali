.class public final synthetic Lqw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/room/coroutines/ConnectionPoolImpl;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/room/coroutines/ConnectionPoolImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqw1;->b:Landroidx/room/coroutines/ConnectionPoolImpl;

    iput-boolean p2, p0, Lqw1;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqw1;->b:Landroidx/room/coroutines/ConnectionPoolImpl;

    iget-boolean p0, p0, Lqw1;->c:Z

    invoke-static {v0, p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->a(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
