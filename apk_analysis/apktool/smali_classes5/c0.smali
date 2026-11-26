.class public abstract Lc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lo22$a;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lo22$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lo22$a;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Lo22$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo22$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo22$b;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "TB;>;",
            "Lnl3<",
            "-",
            "Lo22$a;",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc0;->b:Lnl3;

    instance-of p2, p1, Lc0;

    if-eqz p2, :cond_0

    check-cast p1, Lc0;

    iget-object p1, p1, Lc0;->c:Lo22$b;

    :cond_0
    iput-object p1, p0, Lc0;->c:Lo22$b;

    return-void
.end method
