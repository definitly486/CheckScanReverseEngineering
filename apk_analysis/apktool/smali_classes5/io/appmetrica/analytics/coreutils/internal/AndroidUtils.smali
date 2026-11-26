.class public final Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isApiAchieved(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
