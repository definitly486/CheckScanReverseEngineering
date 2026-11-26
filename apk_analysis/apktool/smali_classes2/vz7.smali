.class public final Lvz7;
.super Llz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf18;

.field public final b:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf18;Lll3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lvz7;->a:Lf18;

    iput-object p2, p0, Lvz7;->b:Lll3;

    return-void
.end method


# virtual methods
.method public final a(Ls08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lvz7$a;

    invoke-direct {v0, p1, p0}, Lvz7$a;-><init>(Ls08;Lvz7;)V

    iget-object p0, p0, Lvz7;->a:Lf18;

    invoke-virtual {p0, v0}, Lf18;->a(Ls08;)V

    return-void
.end method
