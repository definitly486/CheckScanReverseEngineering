.class public final synthetic Landroidx/paging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/paging/LoadType;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/LoadType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/a;->b:Landroidx/paging/LoadType;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/a;->b:Landroidx/paging/LoadType;

    check-cast p1, Landroidx/paging/AccessorState$PendingRequest;

    invoke-static {p0, p1}, Landroidx/paging/AccessorState;->a(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$PendingRequest;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
