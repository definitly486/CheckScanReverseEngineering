.class public final synthetic Landroidx/paging/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/paging/RemoteMediator$MediatorResult$Success;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/RemoteMediator$MediatorResult$Success;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/q;->b:Landroidx/paging/RemoteMediator$MediatorResult$Success;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/q;->b:Landroidx/paging/RemoteMediator$MediatorResult$Success;

    check-cast p1, Landroidx/paging/AccessorState;

    invoke-static {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->m(Landroidx/paging/RemoteMediator$MediatorResult$Success;Landroidx/paging/AccessorState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
