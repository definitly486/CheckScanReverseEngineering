.class public final synthetic Lng5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/paging/LoadType;

.field public final synthetic d:Landroidx/paging/LoadState;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lng5;->b:Z

    iput-object p1, p0, Lng5;->c:Landroidx/paging/LoadType;

    iput-object p3, p0, Lng5;->d:Landroidx/paging/LoadState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lng5;->d:Landroidx/paging/LoadState;

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    iget-boolean v1, p0, Lng5;->b:Z

    iget-object p0, p0, Lng5;->c:Landroidx/paging/LoadType;

    invoke-static {v1, p0, v0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->b(ZLandroidx/paging/LoadType;Landroidx/paging/LoadState;Landroidx/paging/CombinedLoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method
