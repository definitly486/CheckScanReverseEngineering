.class public final synthetic Lpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

.field public final synthetic c:Landroidx/compose/runtime/internal/AwaiterQueue;

.field public final synthetic d:Lp07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lp07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpz;->b:Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    iput-object p2, p0, Lpz;->c:Landroidx/compose/runtime/internal/AwaiterQueue;

    iput-object p3, p0, Lpz;->d:Lp07;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpz;->c:Landroidx/compose/runtime/internal/AwaiterQueue;

    iget-object v1, p0, Lpz;->d:Lp07;

    iget-object p0, p0, Lpz;->b:Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/internal/AwaiterQueue;->a(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lp07;)Lj59;

    move-result-object p0

    return-object p0
.end method
