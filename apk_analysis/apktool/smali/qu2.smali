.class public final Lqu2;
.super Lou2;
.source "SourceFile"


# instance fields
.field public final d:Lqu2$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lou2;-><init>()V

    new-instance v0, Lqu2$a;

    invoke-direct {v0, p0}, Lqu2$a;-><init>(Lqu2;)V

    iput-object v0, p0, Lqu2;->d:Lqu2$a;

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

    iget-object p0, p0, Lqu2;->d:Lqu2$a;

    return-object p0
.end method
