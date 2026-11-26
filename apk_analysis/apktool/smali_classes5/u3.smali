.class public final synthetic Lu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lc4;


# direct methods
.method public synthetic constructor <init>(Lc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3;->a:Lc4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lu3;->a:Lc4;

    invoke-virtual {p0}, Lc4;->d()Lnq1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    sget-object v1, Lne7;->d:Lvy8;

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    iget-object p0, p0, Lc4;->i:Lfu1;

    invoke-virtual {p0, v0}, Lfu1;->b(Lcp2;)Z

    return-void
.end method
