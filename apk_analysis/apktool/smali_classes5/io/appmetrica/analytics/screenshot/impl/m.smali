.class public abstract Lio/appmetrica/analytics/screenshot/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Ljava/util/List;

.field public static final c:Z

.field public static final d:Z

.field public static final e:J

.field public static final f:Z

.field public static final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/A;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/A;-><init>()V

    iget-boolean v0, v0, Lio/appmetrica/analytics/screenshot/impl/A;->a:Z

    sput-boolean v0, Lio/appmetrica/analytics/screenshot/impl/m;->a:Z

    const-string v0, "_display_name"

    const-string v1, "_data"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/screenshot/impl/m;->b:Ljava/util/List;

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/w;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/w;-><init>()V

    iget-boolean v0, v0, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    sput-boolean v0, Lio/appmetrica/analytics/screenshot/impl/m;->c:Z

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/y;-><init>()V

    iget-boolean v1, v0, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    sput-boolean v1, Lio/appmetrica/analytics/screenshot/impl/m;->d:Z

    iget-wide v0, v0, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    sput-wide v0, Lio/appmetrica/analytics/screenshot/impl/m;->e:J

    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>()V

    iget-boolean v1, v0, Lio/appmetrica/analytics/screenshot/impl/x;->a:Z

    sput-boolean v1, Lio/appmetrica/analytics/screenshot/impl/m;->f:Z

    iget-wide v0, v0, Lio/appmetrica/analytics/screenshot/impl/x;->b:J

    sput-wide v0, Lio/appmetrica/analytics/screenshot/impl/m;->g:J

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/m;->b:Ljava/util/List;

    return-object v0
.end method
