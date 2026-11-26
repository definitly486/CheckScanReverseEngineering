.class public final Lio/appmetrica/analytics/logger/common/impl/a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final a:Lio/appmetrica/analytics/logger/common/impl/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/logger/common/impl/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/logger/common/impl/a;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/logger/common/impl/a;->a:Lio/appmetrica/analytics/logger/common/impl/a;

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
    .locals 1

    new-instance p0, Lg17;

    const-string v0, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"

    invoke-direct {p0, v0}, Lg17;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
