.class public final Lhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lty4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lgu3;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lgu3;

    invoke-static {p0}, Liu3;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p0}, Lgu3;-><init>(Landroid/os/Handler;)V

    return-object v0

    :cond_0
    const-string p0, "The main looper is not available"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
