.class public final synthetic Landroidx/paging/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/paging/LoadType;

.field public final synthetic c:Landroidx/paging/ViewportHint;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/d;->b:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/d;->c:Landroidx/paging/ViewportHint;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/paging/HintHandler$HintFlow;

    check-cast p2, Landroidx/paging/HintHandler$HintFlow;

    iget-object v0, p0, Landroidx/paging/d;->b:Landroidx/paging/LoadType;

    iget-object p0, p0, Landroidx/paging/d;->c:Landroidx/paging/ViewportHint;

    invoke-static {v0, p0, p1, p2}, Landroidx/paging/HintHandler;->b(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;

    move-result-object p0

    return-object p0
.end method
