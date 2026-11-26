.class public final synthetic Lr16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/paging/PagedListAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/PagedListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr16;->b:Landroidx/paging/PagedListAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/paging/PagedList;

    check-cast p2, Landroidx/paging/PagedList;

    iget-object p0, p0, Lr16;->b:Landroidx/paging/PagedListAdapter;

    invoke-static {p0, p1, p2}, Landroidx/paging/PagedListAdapter;->e(Landroidx/paging/PagedListAdapter;Landroidx/paging/PagedList;Landroidx/paging/PagedList;)Lj59;

    move-result-object p0

    return-object p0
.end method
