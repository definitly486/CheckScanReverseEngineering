.class public final synthetic Ls16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/paging/LoadStateAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadStateAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls16;->b:Landroidx/paging/LoadStateAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/paging/LoadType;

    check-cast p2, Landroidx/paging/LoadState;

    iget-object p0, p0, Ls16;->b:Landroidx/paging/LoadStateAdapter;

    invoke-static {p0, p1, p2}, Landroidx/paging/PagedListAdapter;->d(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadType;Landroidx/paging/LoadState;)Lj59;

    move-result-object p0

    return-object p0
.end method
