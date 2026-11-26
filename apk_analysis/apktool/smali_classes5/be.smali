.class public final synthetic Lbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;
.implements Lxl3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lbe;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbe;->b:Ljava/lang/Object;

    check-cast p0, Lrg1;

    invoke-virtual {p0, p1}, Lrg1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0
.end method

.method public c(Loz7$a;)V
    .locals 1

    iget-object p0, p0, Lbe;->b:Ljava/lang/Object;

    check-cast p0, Lee;

    iget-object p0, p0, Lee;->a:Landroid/content/Context;

    new-instance v0, Lce;

    invoke-direct {v0, p1}, Lce;-><init>(Loz7$a;)V

    const-string p1, "appmetrica_device_id"

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void
.end method
