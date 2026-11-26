.class public final Lyads/sy2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/vy2;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lyads/vy2;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lyads/sy2;->b:Lyads/vy2;

    iput-object p2, p0, Lyads/sy2;->c:Ljava/util/UUID;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lyads/sy2;->b:Lyads/vy2;

    iget-object p1, p1, Lyads/vy2;->b:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/e85;

    iget-object p0, p0, Lyads/sy2;->c:Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    new-instance v0, Lyads/b85;

    invoke-direct {v0, p0}, Lyads/b85;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lyads/e85;->a(Lyads/d85;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "Cannot cancelAll with a null tag"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
