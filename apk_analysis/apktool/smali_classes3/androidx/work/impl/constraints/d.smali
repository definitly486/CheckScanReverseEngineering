.class public final synthetic Landroidx/work/impl/constraints/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Landroid/net/ConnectivityManager;


# direct methods
.method public synthetic constructor <init>(Lnl3;Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/d;->b:Lnl3;

    iput-object p2, p0, Landroidx/work/impl/constraints/d;->c:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/constraints/d;->b:Lnl3;

    iget-object p0, p0, Landroidx/work/impl/constraints/d;->c:Landroid/net/ConnectivityManager;

    invoke-static {v0, p0}, Landroidx/work/impl/constraints/SharedNetworkCallback;->a(Lnl3;Landroid/net/ConnectivityManager;)Lj59;

    move-result-object p0

    return-object p0
.end method
