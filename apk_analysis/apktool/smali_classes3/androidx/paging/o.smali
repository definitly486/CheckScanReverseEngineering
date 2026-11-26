.class public final synthetic Landroidx/paging/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/paging/LoadType;

.field public final synthetic c:Landroidx/paging/RemoteMediator$MediatorResult$Error;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Error;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/o;->b:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/o;->c:Landroidx/paging/RemoteMediator$MediatorResult$Error;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/paging/o;->c:Landroidx/paging/RemoteMediator$MediatorResult$Error;

    check-cast p1, Landroidx/paging/AccessorState;

    iget-object p0, p0, Landroidx/paging/o;->b:Landroidx/paging/LoadType;

    invoke-static {p0, v0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->g(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Error;Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method
