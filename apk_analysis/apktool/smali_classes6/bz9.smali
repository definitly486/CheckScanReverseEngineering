.class public final synthetic Lbz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/ii1;

.field public final synthetic c:Lyads/yi1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/zh1;

.field public final synthetic f:Lyads/ao2;


# direct methods
.method public synthetic constructor <init>(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz9;->b:Lyads/ii1;

    iput-object p2, p0, Lbz9;->c:Lyads/yi1;

    iput-object p3, p0, Lbz9;->d:Lyads/tt;

    iput-object p4, p0, Lbz9;->e:Lyads/zh1;

    iput-object p5, p0, Lbz9;->f:Lyads/ao2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lbz9;->f:Lyads/ao2;

    move-object v5, p1

    check-cast v5, Landroid/net/Uri;

    iget-object v0, p0, Lbz9;->b:Lyads/ii1;

    iget-object v1, p0, Lbz9;->c:Lyads/yi1;

    iget-object v2, p0, Lbz9;->d:Lyads/tt;

    iget-object v3, p0, Lbz9;->e:Lyads/zh1;

    invoke-static/range {v0 .. v5}, Lyads/ii1;->a(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;Landroid/net/Uri;)Lj59;

    move-result-object p0

    return-object p0
.end method
