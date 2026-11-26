.class public final Lxa6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lap1;


# direct methods
.method public constructor <init>(Lap1;)V
    .locals 0

    iput-object p1, p0, Lxa6;->a:Lap1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lxa6;->a:Lap1;

    invoke-virtual {p0}, Lap1;->invoke()Ljava/lang/Object;

    return-void
.end method
