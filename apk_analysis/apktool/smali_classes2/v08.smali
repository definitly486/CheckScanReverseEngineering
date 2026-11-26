.class public final Lv08;
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

.field public final b:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf18;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lv08;->a:Lf18;

    iput-object p2, p0, Lv08;->b:Lnl3;

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

    new-instance v0, Lv08$a;

    invoke-direct {v0, p1, p0}, Lv08$a;-><init>(Ls08;Lv08;)V

    iget-object p0, p0, Lv08;->a:Lf18;

    invoke-virtual {p0, v0}, Lf18;->a(Ls08;)V

    return-void
.end method
