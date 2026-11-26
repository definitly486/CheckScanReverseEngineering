.class public final synthetic Lrl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/pb;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Xg;

.field public final synthetic c:Lio/appmetrica/analytics/impl/o6;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/Xg;Lio/appmetrica/analytics/impl/o6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrl9;->a:Lio/appmetrica/analytics/impl/pb;

    iput-object p2, p0, Lrl9;->b:Lio/appmetrica/analytics/impl/Xg;

    iput-object p3, p0, Lrl9;->c:Lio/appmetrica/analytics/impl/o6;

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lrl9;->c:Lio/appmetrica/analytics/impl/o6;

    check-cast p1, Lio/appmetrica/analytics/impl/xb;

    iget-object v1, p0, Lrl9;->a:Lio/appmetrica/analytics/impl/pb;

    iget-object p0, p0, Lrl9;->b:Lio/appmetrica/analytics/impl/Xg;

    invoke-static {v1, p0, v0, p1}, Lio/appmetrica/analytics/impl/Xg;->a(Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/Xg;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/xb;)V

    return-void
.end method
