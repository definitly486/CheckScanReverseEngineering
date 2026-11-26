.class public final Lyads/b22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gn5;


# instance fields
.field public final synthetic a:Lyads/d22;

.field public final synthetic b:Lyads/tt;

.field public final synthetic c:Lnl3;


# direct methods
.method public constructor <init>(Lyads/d22;Lyads/tt;Lyads/s22;Lnl3;)V
    .locals 0

    iput-object p1, p0, Lyads/b22;->a:Lyads/d22;

    iput-object p2, p0, Lyads/b22;->b:Lyads/tt;

    iput-object p4, p0, Lyads/b22;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lyads/b22;->a:Lyads/d22;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/b22;->b:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object p0, p0, Lyads/b22;->c:Lnl3;

    float-to-double v0, p1

    invoke-static {v0, v1}, Lw65;->c(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
