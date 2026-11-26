.class public final Lio/appmetrica/analytics/impl/X4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Tg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Tg;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X4;->a:Lio/appmetrica/analytics/impl/Tg;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/X4;->a:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rh;

    iget p0, p0, Lio/appmetrica/analytics/impl/rh;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
