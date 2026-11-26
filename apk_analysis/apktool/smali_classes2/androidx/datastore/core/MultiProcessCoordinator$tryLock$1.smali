.class final Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.datastore.core.MultiProcessCoordinator"
    f = "MultiProcessCoordinator.android.kt"
    l = {
        0x3e,
        0x57
    }
    m = "tryLock"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/MultiProcessCoordinator;->tryLock(Lbm3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf02;"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/datastore/core/MultiProcessCoordinator;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/MultiProcessCoordinator;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/MultiProcessCoordinator;",
            "Le02<",
            "-",
            "Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    iget-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/core/MultiProcessCoordinator;->tryLock(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
