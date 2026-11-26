.class public final Lv97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lws6;"
    }
.end annotation


# instance fields
.field public final a:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lxe7;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lws6;Lws6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv97;->a:Lws6;

    iput-object p2, p0, Lv97;->b:Lws6;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    new-instance v1, Lvp2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lc84;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh13$a;->a:Lh13;

    invoke-virtual {v0}, Lh13;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lv97;->a:Lws6;

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    new-instance v0, Lu97;

    check-cast v4, Lty;

    check-cast v3, Lxe7;

    iget-object v5, p0, Lv97;->b:Lws6;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lu97;-><init>(Lhm1;Lhm1;Lty;Lxe7;Lws6;)V

    return-object v0
.end method
