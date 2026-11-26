.class final Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1$command$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1;->invoke(Lll3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $command:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $exceptionHandler:Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lll3;Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1$command$1;->$command:Lll3;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1$command$1;->$exceptionHandler:Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1$command$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1$command$1;->$command:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1$command$1;->$exceptionHandler:Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;

    invoke-interface {p0, v0}, Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;->onUncaughtException(Ljava/lang/Throwable;)V

    return-void
.end method
