.class public final synthetic Landroidx/work/impl/constraints/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Landroid/net/ConnectivityManager;

.field public final synthetic d:Landroidx/work/impl/constraints/IndividualNetworkCallback;


# direct methods
.method public synthetic constructor <init>(Ln07;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/a;->b:Ln07;

    iput-object p2, p0, Landroidx/work/impl/constraints/a;->c:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Landroidx/work/impl/constraints/a;->d:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/constraints/a;->c:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/work/impl/constraints/a;->d:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    iget-object p0, p0, Landroidx/work/impl/constraints/a;->b:Ln07;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/constraints/IndividualNetworkCallback$Companion;->a(Ln07;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)Lj59;

    move-result-object p0

    return-object p0
.end method
