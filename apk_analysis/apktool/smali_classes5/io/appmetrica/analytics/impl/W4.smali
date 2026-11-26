.class public final Lio/appmetrica/analytics/impl/W4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/W4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/W4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/W4;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/W4;->a:Lio/appmetrica/analytics/impl/W4;

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

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
