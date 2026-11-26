.class public final Landroidx/paging/FlowExtKt$combineWithoutBatching$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/FlowExtKt$combineWithoutBatching$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $parentJob:Lhq1;


# direct methods
.method public constructor <init>(Lhq1;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$2;->$parentJob:Lhq1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$2;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$2;->$parentJob:Lhq1;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
