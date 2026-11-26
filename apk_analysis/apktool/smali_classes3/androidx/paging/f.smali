.class public final synthetic Landroidx/paging/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/paging/MulticastedPagingData;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/MulticastedPagingData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/f;->b:Landroidx/paging/MulticastedPagingData;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/f;->b:Landroidx/paging/MulticastedPagingData;

    invoke-static {p0}, Landroidx/paging/MulticastedPagingData;->a(Landroidx/paging/MulticastedPagingData;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method
