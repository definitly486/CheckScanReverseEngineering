.class final Landroidx/room/coroutines/Pool$acquireWithTimeout$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.room.coroutines.Pool"
    f = "ConnectionPoolImpl.kt"
    l = {
        0xe7
    }
    m = "acquireWithTimeout-KLykuaI"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLll3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/Pool;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/Pool;",
            "Le02<",
            "-",
            "Landroidx/room/coroutines/Pool$acquireWithTimeout$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->this$0:Landroidx/room/coroutines/Pool;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->label:I

    iget-object p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->this$0:Landroidx/room/coroutines/Pool;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
