.class public final Lio/appmetrica/analytics/logger/common/impl/h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final a:Lio/appmetrica/analytics/logger/common/impl/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/logger/common/impl/h;

    invoke-direct {v0}, Lio/appmetrica/analytics/logger/common/impl/h;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/logger/common/impl/h;->a:Lio/appmetrica/analytics/logger/common/impl/h;

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

    const-string p0, "[\\p{Space},;]"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method
