.class public final Lyads/a52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a52;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p2, Lyads/i52;

    invoke-virtual {p0, p2}, Lyads/a52;->a(Lyads/i52;)Lyads/s42;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/i52;)Lyads/s42;
    .locals 1

    instance-of v0, p1, Lyads/h52;

    if-eqz v0, :cond_0

    new-instance p1, Lyads/r42;

    iget-object p0, p0, Lyads/a52;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->z7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e52;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/b52;

    invoke-direct {p0}, Lyads/b52;-><init>()V

    invoke-direct {p1, p0}, Lyads/r42;-><init>(Lyads/b52;)V

    return-object p1

    :cond_0
    instance-of p1, p1, Lyads/g52;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/q42;

    iget-object p0, p0, Lyads/a52;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->w7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w42;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/t42;

    invoke-direct {p0}, Lyads/t42;-><init>()V

    invoke-direct {p1, p0}, Lyads/q42;-><init>(Lyads/t42;)V

    return-object p1

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
