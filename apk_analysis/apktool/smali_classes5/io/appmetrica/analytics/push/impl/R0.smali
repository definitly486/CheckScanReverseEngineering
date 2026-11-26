.class public final Lio/appmetrica/analytics/push/impl/R0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final a:Lio/appmetrica/analytics/push/impl/R0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/impl/R0;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/impl/R0;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/impl/R0;->a:Lio/appmetrica/analytics/push/impl/R0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/push/impl/b;

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/b;-><init>()V

    return-object p0
.end method
