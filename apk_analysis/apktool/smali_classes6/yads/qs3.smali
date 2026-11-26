.class public final Lyads/qs3;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/ts3;


# direct methods
.method public constructor <init>(Lyads/ts3;)V
    .locals 0

    iput-object p1, p0, Lyads/qs3;->b:Lyads/ts3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lyads/qs3;->b:Lyads/ts3;

    iget-object p0, p0, Lyads/ts3;->d:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e85;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/b85;

    const-string v0, "light_bundle_js_request_tag"

    invoke-direct {p1, v0}, Lyads/b85;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lyads/e85;->a(Lyads/d85;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
