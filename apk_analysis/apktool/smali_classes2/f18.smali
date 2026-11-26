.class public final Lf18;
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
.field public final a:Llz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljo2;


# direct methods
.method public constructor <init>(Llz7;Ljo2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llz7<",
            "TT;>;",
            "Ljo2;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lf18;->a:Llz7;

    iput-object p2, p0, Lf18;->b:Ljo2;

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

    new-instance v0, Lf18$a;

    invoke-direct {v0, p0, p1}, Lf18$a;-><init>(Lf18;Ls08;)V

    iget-object p0, p0, Lf18;->b:Ljo2;

    invoke-interface {p0, v0}, Ljo2;->a(Lf18$a;)V

    return-void
.end method
