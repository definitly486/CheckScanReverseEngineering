.class public final Lyads/h9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g4;


# static fields
.field public static final synthetic b:[Lze4;


# instance fields
.field public final a:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/h9;

    const-string v1, "adEventsReceiver"

    const-string v2, "getAdEventsReceiver()Lcom/monetization/ads/base/AdEventsReceiver;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/h9;->b:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/e55;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/h9;->a:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lyads/h9;->a:Lyads/e55;

    sget-object v0, Lyads/h9;->b:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/g4;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
