.class public final synthetic Lza4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/screenshot/impl/M;

.field public final synthetic c:Lio/appmetrica/analytics/screenshot/impl/J;

.field public final synthetic d:Lio/appmetrica/analytics/screenshot/impl/l;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/M;Lio/appmetrica/analytics/screenshot/impl/J;Lio/appmetrica/analytics/screenshot/impl/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lza4;->b:Lio/appmetrica/analytics/screenshot/impl/M;

    iput-object p2, p0, Lza4;->c:Lio/appmetrica/analytics/screenshot/impl/J;

    iput-object p3, p0, Lza4;->d:Lio/appmetrica/analytics/screenshot/impl/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lza4;->d:Lio/appmetrica/analytics/screenshot/impl/l;

    check-cast p1, Landroid/app/ActivityManager;

    iget-object v1, p0, Lza4;->b:Lio/appmetrica/analytics/screenshot/impl/M;

    iget-object p0, p0, Lza4;->c:Lio/appmetrica/analytics/screenshot/impl/J;

    invoke-static {v1, p0, v0, p1}, Lio/appmetrica/analytics/screenshot/impl/J;->a(Lio/appmetrica/analytics/screenshot/impl/M;Lio/appmetrica/analytics/screenshot/impl/J;Lio/appmetrica/analytics/screenshot/impl/l;Landroid/app/ActivityManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
