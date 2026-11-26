.class public final Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    iput-object p2, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->d:Ljava/lang/String;

    iput-wide p5, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->e:J

    iput-object p7, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;

    iget-object v1, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    iget-object v2, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->d:Ljava/lang/String;

    iget-wide v5, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->e:J

    iget-object v7, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash$Builder;->f:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;-><init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljh2;)V

    return-object v0
.end method
