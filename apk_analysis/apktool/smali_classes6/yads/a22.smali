.class public final Lyads/a22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i36;


# instance fields
.field public final synthetic a:Lyads/s22;

.field public final synthetic b:Lyads/d22;

.field public final synthetic c:Lyads/tt;


# direct methods
.method public constructor <init>(Lyads/s22;Lyads/d22;Lyads/tt;)V
    .locals 0

    iput-object p1, p0, Lyads/a22;->a:Lyads/s22;

    iput-object p2, p0, Lyads/a22;->b:Lyads/d22;

    iput-object p3, p0, Lyads/a22;->c:Lyads/tt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lyads/a22;->a:Lyads/s22;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyads/kn5;->setThumbSecondaryValue(Ljava/lang/Float;Z)V

    return-void
.end method

.method public final a(Lnl3;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lyads/a22;->a:Lyads/s22;

    new-instance v1, Lyads/z12;

    iget-object v2, p0, Lyads/a22;->b:Lyads/d22;

    iget-object p0, p0, Lyads/a22;->c:Lyads/tt;

    invoke-direct {v1, v2, p0, v0, p1}, Lyads/z12;-><init>(Lyads/d22;Lyads/tt;Lyads/s22;Lnl3;)V

    .line 23
    iget-object p0, v0, Lyads/kn5;->b:Lyads/gp4;

    .line 24
    invoke-virtual {p0, v1}, Lyads/gp4;->a(Ljava/lang/Object;)V

    return-void
.end method
