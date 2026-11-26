.class public abstract Lio/appmetrica/analytics/impl/H5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:I

.field public static final c:Lio/appmetrica/analytics/impl/Z6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lio/appmetrica/analytics/impl/H5;->a:Ljava/lang/Boolean;

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    move-result v0

    sput v0, Lio/appmetrica/analytics/impl/H5;->b:I

    new-instance v0, Lio/appmetrica/analytics/impl/j7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/j7;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/I7;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/I7;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Z6;

    new-instance v3, Lio/appmetrica/analytics/impl/tn;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/tn;-><init>()V

    invoke-direct {v2, v0, v1, v3}, Lio/appmetrica/analytics/impl/Z6;-><init>(Lio/appmetrica/analytics/impl/j7;Lio/appmetrica/analytics/impl/I7;Lio/appmetrica/analytics/impl/tn;)V

    sput-object v2, Lio/appmetrica/analytics/impl/H5;->c:Lio/appmetrica/analytics/impl/Z6;

    return-void
.end method
