.class public final Ljl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field public a:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lxs6;Lxs6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxs6<",
            "TT;>;",
            "Lxs6<",
            "TT;>;)V"
        }
    .end annotation

    check-cast p0, Ljl2;

    iget-object v0, p0, Ljl2;->a:Lxs6;

    if-nez v0, :cond_0

    iput-object p1, p0, Ljl2;->a:Lxs6;

    return-void

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Ljl2;->a:Lxs6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
