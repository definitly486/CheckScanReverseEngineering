.class public final Lzl9;
.super Lu1;
.source "SourceFile"


# instance fields
.field public final c:Lyl9;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu1;-><init>(I)V

    new-instance v0, Lyl9;

    invoke-direct {v0, p1}, Lyl9;-><init>(Lnl3;)V

    iput-object v0, p0, Lzl9;->c:Lyl9;

    return-void
.end method


# virtual methods
.method public final f()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Lb08<",
            "Landroid/net/Uri;",
            ">;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lzl9;->c:Lyl9;

    return-object p0
.end method
