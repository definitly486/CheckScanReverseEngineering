.class public final Lzw1$a$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzw1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Landroid/net/ConnectivityManager;

.field public final synthetic g:Lzw1$a$b;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lzw1$a$b;)V
    .locals 0

    iput-object p1, p0, Lzw1$a$a;->f:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lzw1$a$a;->g:Lzw1$a$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzw1$a$a;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lzw1$a$a;->g:Lzw1$a$b;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
