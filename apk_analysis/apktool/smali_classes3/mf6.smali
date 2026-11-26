.class public final Lmf6;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lj72<",
        "TZ;>;"
    }
.end annotation


# static fields
.field public static final c:Landroid/os/Handler;


# instance fields
.field public final b:Lp37;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lmf6$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lmf6;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lp37;)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lj72;-><init>(II)V

    iput-object p1, p0, Lmf6;->b:Lp37;

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lk29<",
            "-TZ;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lj72;->getRequest()Lc37;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc37;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lmf6;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
