.class public final Lq08;
.super Llz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Llz7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Llz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llz7;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llz7<",
            "TT;>;",
            "Lnl3<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lq08;->a:Llz7;

    iput-object p2, p0, Lq08;->b:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Ls08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TR;>;)V"
        }
    .end annotation

    new-instance v0, Lq08$a;

    invoke-direct {v0, p1, p0}, Lq08$a;-><init>(Ls08;Lq08;)V

    iget-object p0, p0, Lq08;->a:Llz7;

    invoke-virtual {p0, v0}, Llz7;->a(Ls08;)V

    return-void
.end method
