.class final synthetic Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/MutexesKt;->lockAndSuspend(Lyg5;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lbm3<",
        "Lyg5;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;->INSTANCE:Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Landroidx/camera/camera2/pipe/core/MutexesKt;

    const-string v3, "lockWithoutOwner"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyg5;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/MutexesKt$lockAndSuspend$lockFn$1;->invoke(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lyg5;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg5;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/core/MutexesKt;->access$lockWithoutOwner(Lyg5;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
