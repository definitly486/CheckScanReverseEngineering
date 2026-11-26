.class public final synthetic Landroidx/paging/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/paging/LoadType;

.field public final synthetic c:Landroidx/paging/PagingState;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/h;->b:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/h;->c:Landroidx/paging/PagingState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/paging/h;->c:Landroidx/paging/PagingState;

    check-cast p1, Landroidx/paging/AccessorState;

    iget-object p0, p0, Landroidx/paging/h;->b:Landroidx/paging/LoadType;

    invoke-static {p0, v0, p1}, Landroidx/paging/RemoteMediatorAccessImpl;->e(Landroidx/paging/LoadType;Landroidx/paging/PagingState;Landroidx/paging/AccessorState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
