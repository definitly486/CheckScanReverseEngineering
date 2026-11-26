.class public final Lyads/oq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vp6;


# static fields
.field public static e:Lyads/oq6;


# instance fields
.field public a:F

.field public final b:Lyads/gp6;

.field public c:Lyads/aq6;

.field public d:Lyads/tp6;


# direct methods
.method public constructor <init>(Lyads/fq6;Lyads/gp6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lyads/oq6;->a:F

    iput-object p2, p0, Lyads/oq6;->b:Lyads/gp6;

    return-void
.end method

.method public static a()Lyads/oq6;
    .locals 3

    .line 55
    sget-object v0, Lyads/oq6;->e:Lyads/oq6;

    if-nez v0, :cond_0

    new-instance v0, Lyads/gp6;

    invoke-direct {v0}, Lyads/gp6;-><init>()V

    new-instance v1, Lyads/fq6;

    invoke-direct {v1}, Lyads/fq6;-><init>()V

    new-instance v2, Lyads/oq6;

    invoke-direct {v2, v1, v0}, Lyads/oq6;-><init>(Lyads/fq6;Lyads/gp6;)V

    sput-object v2, Lyads/oq6;->e:Lyads/oq6;

    return-object v2

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p0, Lyads/a26;->g:Lyads/a26;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/a26;->i:Landroid/os/Handler;

    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lyads/a26;->i:Landroid/os/Handler;

    sget-object p1, Lyads/a26;->j:Lyads/y16;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lyads/a26;->i:Landroid/os/Handler;

    sget-object p1, Lyads/a26;->k:Lyads/z16;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget-object p0, Lyads/a26;->g:Lyads/a26;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/a26;->i:Landroid/os/Handler;

    if-eqz p0, :cond_1

    sget-object p1, Lyads/a26;->k:Lyads/z16;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    sput-object p0, Lyads/a26;->i:Landroid/os/Handler;

    :cond_1
    return-void
.end method
